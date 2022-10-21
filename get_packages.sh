# Please note that this is the worse bash script ever. Lol
pushd  postion_calibration/packages/positioner 
flutter pub get
popd

pushd  postion_calibration/packages/gaussian 
flutter pub get
popd

pushd  postion_calibration/packages/curve_fitting 
flutter pub get
popd

pushd  postion_calibration/packages/ion_response 
flutter pub get
popd

pushd  postion_calibration/packages/calibration_routine 
flutter pub get
popd
