
_control = (findDisplay 489) displayCtrl 65;

_red = sliderPosition 11;
_green = sliderPosition 12;
_blue = sliderPosition 10;
paint_selection =  parseNumber (lbData [1500, (lbCurSel 1500)]);

paint_color =  format["#(ARGB,8,8,3)color(%1,%2,%3,1)",_red,_green,_blue];

_control ctrlSetBackgroundColor [_red, _green, _blue, 1];
paint_temp_vehicle setObjectTexture [paint_selection, paint_color];