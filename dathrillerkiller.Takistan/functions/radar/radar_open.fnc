
_radar = _this select 0;
radar_inuse = true;

["HideAll",""]spawn gps_sort;


for "_i" from 1 to 100 step 1 do {
		[format['Initializing System... %1%2',_i,"%"],'data\images\items\usb',true]call tag_notify;
		uiSleep 0.01;
};

openMap [true, false];

[_radar]spawn radar_scan;