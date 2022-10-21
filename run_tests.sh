# Please note that this is the worse bash script ever. Lol
pushd  postion_calibration/packages/positioner 
dart test
popd

pushd  postion_calibration/packages/gaussian 
dart test
popd

pushd  postion_calibration/packages/curve_fitting 
dart test
popd

pushd  postion_calibration/packages/ion_response 
dart test
popd

pushd  postion_calibration/packages/calibration_routine 
dart test
popd
