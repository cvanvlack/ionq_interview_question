# ionq_interview_question

A coding challenge for calibrating a laser's position

## Requirements

The following are hard requirements from the question:

1. Mirror mount positions go from 0 to 1 (or any arbitrary continuous range really)
2. Ion responses go from 0 to 100 photons per measurement round (or any arbitrary, small, integer range)

Then there are the additional idealized requirements:

1. Must be able to choose a position that wasn't actually visited (e.g. curve fitting)

## Design

### Design Considrations

For this design, let us define the power of the laser as $P$ and the beam waist of the laser as $w_0$.

There are also the following considerations that should be addressed:

1. What step size to choose? The ion can be considered a point source. The laser can be considered to be a Gaussian beam with a specific beam waist and power. The ion will emit a photon if its local intensity is large enough, which would be a function of $P$ and $w_0$.
2. Likely, there are constraints due to the position of the other ions. Having a large beam waist with a large power could cause interactions with ions that are not intended to be targetted. For the purposes of this, we likely assume that there will be no significant interactions with other atoms for the full range of the scan.
3. The stated question said "The more accurate the laser is, the more money we make (more or less)." which implies that the power is low enough such that a distance larger than a few beam waists the expected response merges into the noise floor.
4. Similarly, this implies that an accuracy of greater than $w_0/10$ is desired.
5. When the calibration routine starts in the local neighbourhood of the previously calibrated position, it's uncertain if the drift will have been larger than a few beam waists.
6. Hopefully the actual position of the laser beam is linear as a function of the positioner, however this is not true of all optical elements. For the purposes of this, we will assume it's linear.
7. More frequent calibrations will result in the previously calibrated position never leaving the local neighbourhood of where the newly calibrated position will end up. However, more frequent calibrations will take more time.

Algorithmically, there are the following scenarios to consider:

1. What happens when there is no signal in the calibration?
   1. Is this cause by too large a step size?
   2. Is this caused by too small a region scanned by the positioners?
2. What happens when there are many locations returning `numPhotons=numMeasurements`?
   1. Is this because the step size is ridiculously small?
   2. Are we saturating because of too much laser power?
3. What happens when the maximum signal is at the edge of the calibration region?

Questions I would have to optimize the strategy:

1. What are the time bottlenecks for the calibration? Positioning? Firing and detection? Simply switcing to the calbration routine?
2. How many shots per scan is practical? 10-100 shots seems fine when looking for the initial position of the ion. To get the best accuracy, one would want as many shots as practical to find where photons are returned 100% of the time along with the surrounding region where photons are returned close to 100% of the time. If you use extremely small positioner step sizes and large numbers of measurements than the optimal position would likely be at the center of the area that has 99% accuracy.
3. Is there a "good enough" position as long as we find that position again frequently?
4. How far is the positioning drift, relative to the laser spot size, over a the calibration time scale?

### Implementation

Checkout the code with

```bash
git clone https://github.com/cvanvlack/ionq_interview_question
```

To run the code, ensure you have [Flutter installed](https://docs.flutter.dev/get-started/install).

After checkout, run `get_packages.sh` to download the packages and `run_tests.sh` to run the unit/integration tests.

I have implemented two classes for running calibrations:

* `LineCalibrationRoutine`
* `GridCalibrationRoutune`

These are contained in `postion_calibration/packages/calibration_routine/lib/src`.

Their usage can be found in `postion_calibration/packages/calibration_routine/test/src`.

### Strategies

Depending on the timing requirements from my questions above, I would start with a `GridCalibrationRoutune` in the "vicinity" of the previous calibration location. I would run this calibration using a fitting algorithm that was as coarse as possible just to find a maximum value.

I would then re-run the grid calibration, centered on the location of the maximum, but use a more rigorous fitting routine (I have implemented a polynomial fit, however it has implementation challenges. See below for details). For this second calibration, I would enusre that the scan region is large enough to get the "shoulders" of the peak. If the calibration is saturating, I would turn down the laser and keep narrowing the calibration region to only contain the "shoulders" of the peak.

If no peak is found, then a search must be performed. Likely, adding "border regions" to the previous grid scan would be the most efficient to build up a larger region with the same scanning step size. If a log of the calibration positions were kept, one could also scan the distribution of previous locations.

### Future Work

1. Move Mock classes to their own packages so that we can import them for testing but they aren't included in the production code. The same method should be followed for other concrete implementations of the `ion_response` and `positioner` packages so we don't include the dependencies of all the implementations into the production code (unless they are all needed).
2. Unfortunately, there seems to be no dart/flutter packages that allow curve fitting to a Gaussian distribution. Ideally, one would be able to use something like [scipy.stats.norm](https://docs.scipy.org/doc/scipy-0.19.0/reference/generated/scipy.stats.norm.html). Because the laser is a Gaussian beam (I am assuming!) I bet the number of photons returned also follows a Gaussian distribution. The only package I could find was the e[equations package](https://pub.dev/packages/equations) which offers a few [interpolation](https://pub.dev/packages/equations#interpolation) options.
3. The polynomial fitting algorithm I have used is currently broken, but I didn't want to spend more time on it. Could be a quick fix, but I wanted to get this code shipped.
4. Code checks for `nan` and `inf` everywhere and throws appropriate failures, along with unit tests verifying these cases.
5. Code checks for appropriate array lengths and throws appropriate failures, along with unit tests verifying these use cases.
6. Code checks for non-zero values for specific parameters and throws appropriate failures, along with unit tests verifying these cases.
7. Add tests for equality as Dart only supports referential equality and not value equality.
8. Found in testing that large interaction widths fail. E.g. if `percentSignal=1` for many values, we are incorrectly obtaining the middle of that range. We are only obtaining the first edge.
