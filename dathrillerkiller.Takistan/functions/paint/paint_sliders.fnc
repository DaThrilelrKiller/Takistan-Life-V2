_data = call compile lbData [1500, (lbCurSel 1500)];

sliderSetPosition [11,(_data select 0)];
sliderSetPosition [12,(_data select 1)];
sliderSetPosition [10,(_data select 2)];

call paint_preview;