paint_unit = (vehicle player);

paint_postion = getPos paint_unit;
paint_direction = getDir paint_unit;
paint_type = typeOf paint_unit;

paint_temp_vehicle = paint_type createVehicle [0,0,0]; 
paint_temp_vehicle setVariable ["DTK_OwnerUID",true,true];

paint_unit setPos [random 50,random 50,0];

paint_temp_vehicle setPos paint_postion;
paint_temp_vehicle setDir paint_direction;
	
paint_camera = "Camera" camCreate [0, 0, 0];
paint_camera cameraEffect ["internal", "front"];
paint_camera camSetTarget [(getPosATL paint_temp_vehicle select 0) + 0, (getPosATL paint_temp_vehicle select 1) + 0, 1];
paint_camera camSetRelPos [3.5, 0, 0];
paint_camera camCommit 0;
