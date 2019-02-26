paint_unit = (vehicle player);

paint_type = typeOf paint_unit;

paint_temp_vehicle = paint_type createVehicleLocal [11050.1,12757.4,0.00130463]; 

paint_unit call paint_current;

paint_cam = "Camera" camCreate [0, 0, 0];
paint_cam cameraEffect ["internal", "front"];
paint_cam camSetTarget [(getPosATL paint_temp_vehicle select 0) + 0, (getPosATL paint_temp_vehicle select 1) + 0, 1];
paint_cam camSetRelPos [3.5, 0, 0];
paint_cam camCommit 0;