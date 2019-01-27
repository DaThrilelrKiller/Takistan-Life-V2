class impound
{
	idd = -1;
	
	class ControlsBackground
	{
		class RscBackground_2200 : RscBackground 
		{
			idc = 2200;
			x = safeZoneX + safeZoneW * 0.259375;
			y = safeZoneY + safeZoneH * 0.21111112;
			w = safeZoneW * 0.4825;
			h = safeZoneH * 0.56111112;
			
		};
		
	};
	class Controls
	{
		class lb_items : RscListBox 
		{
			type = 5;
			idc = 1;
			x = safeZoneX + safeZoneW * 0.27;
			y = safeZoneY + safeZoneH * 0.23;
			w = safeZoneW * 0.14375;
			h = safeZoneH * 0.48111112;
			style = 0;
			colorBackground[] = {0.8,0.8,0.8,0.3};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorSelect[] = {0,0,0,1};
			colorText[] = {1,1,1,1};
			font = "Zeppelin32";
			maxHistoryDelay = 1.000000;
			rowHeight = 0.04;
			sizeEx = 0.025;
			soundSelect[] = {"",0.1,1.0};
			colorSelectBackground[] = {0.5,0,0,0.5};
			period = 1.200000;
			onLBSelChanged = "_this call impound_info;";
			class ScrollBar {
				arrowEmpty = "\ca\ui\data\ui_arrow_top_ca.paa";
				arrowFull = "\ca\ui\data\ui_arrow_top_active_ca.paa";
				border = "\ca\ui\data\ui_border_scroll_ca.paa";
				thumb = "\ca\ui\data\ui_scrollbar_thumb_ca.paa";
			};
			
		};
		class lable_shop : RscBackground 
		{
			type = 0;
			idc = 2201;
			x = safeZoneX + safeZoneW * 0.26;
			y = safeZoneY + safeZoneH * 0.17666667;
			w = safeZoneW * 0.4825;
			h = safeZoneH * 0.03444445;
			style = 0;
			text = "";
			colorBackground[] = {0.5,0,0,1};
			colorText[] = {1,1,1,1};
			font = "Zeppelin32";
			sizeEx = 0.04;
			
		};
		class lb_other : RscListBox 
		{
			type = 5;
			idc = 2;
			x = safeZoneX + safeZoneW * 0.5875;
			y = safeZoneY + safeZoneH * 0.55666667;
			w = safeZoneW * 0.14375;
			h = safeZoneH * 0.20222223;
			style = 0;
			colorBackground[] = {0.8,0.8,0.8,0.3};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorSelect[] = {0,0,0,1};
			colorText[] = {1,1,1,1};
			font = "Zeppelin32";
			maxHistoryDelay = 1.000000;
			rowHeight = 0.04;
			sizeEx = 0.025;
			soundSelect[] = {"",0.1,1.0};
			colorSelectBackground[] = {0.5,0,0,0.5};
			period = 1.200000;
			class ScrollBar {
				arrowEmpty = "\ca\ui\data\ui_arrow_top_ca.paa";
				arrowFull = "\ca\ui\data\ui_arrow_top_active_ca.paa";
				border = "\ca\ui\data\ui_border_scroll_ca.paa";
				thumb = "\ca\ui\data\ui_scrollbar_thumb_ca.paa";
			};
			
		};
		class lable_Others : RscBackground 
		{
			type = 0;
			idc = 2201;
			x = safeZoneX + safeZoneW * 0.5875;
			y = safeZoneY + safeZoneH * 0.52444445;
			w = safeZoneW * 0.14375;
			h = safeZoneH * 0.03444445;
			style = 0;
			text = "Other Infomation";
			colorBackground[] = {0.5,0,0,1};
			colorText[] = {1,1,1,1};
			font = "Zeppelin32";
			sizeEx = 0.04;
			
		};
		class close : RscButton 
		{
			idc = 1602;
			x = safeZoneX + safeZoneW * 0.72375;
			y = safeZoneY + safeZoneH * 0.17555556;
			w = safeZoneW * 0.016875;
			h = safeZoneH * 0.03333334;
			text = "X";
			colorBackground[] = {1,1,1,0};
			colorBackgroundActive[] = {1,1,1,0};
			colorBorder[] = {1,1,1,0};
			sizeEx = 0.07;
			action = "";
			
		};
		class btn_take : RscButton 
		{
			type = 1;
			idc = 1602;
			x = safeZoneX + safeZoneW * 0.26875;
			y = safeZoneY + safeZoneH * 0.72111112;
			w = safeZoneW * 0.14375;
			h = safeZoneH * 0.03444445;
			style = 2;
			text = "Retrive Vehicle";
			borderSize = 0;
			colorBackground[] = {0.5,0,0,1};
			colorBackgroundActive[] = {0.5,0,0,1};
			colorBackgroundDisabled[] = {1,1,1,0.5};
			colorBorder[] = {1,1,1,0.1};
			colorDisabled[] = {0.5,0,0,0};
			colorFocused[] = {0.5,0,0,1};
			colorShadow[] = {0,0,0,0.1};
			colorText[] = {1,1,1,1};
			font = "Zeppelin32";
			offsetPressedX = 0;
			offsetPressedY = 0;
			offsetX = 0;
			offsetY = 0;
			sizeEx = 0.025;
			soundClick[] = {"\ca\ui\data\sound\mouse3",0.07,1.0};
			soundEnter[] = {"",0.15,1.0};
			soundEscape[] = {"\ca\ui\data\sound\mouse1",0.09,1.0};
			soundPush[] = {"",0.2,1.0};
			action = "call impound_remove;";
			default = false;
			
		};
		class lable_siren : RscBackground 
		{
			type = 0;
			idc = 2201;
			x = safeZoneX + safeZoneW * 0.5875;
			y = safeZoneY + safeZoneH * 0.23111112;
			w = safeZoneW * 0.14375;
			h = safeZoneH * 0.03444445;
			style = 0;
			text = "Sirens";
			colorBackground[] = {0.5,0,0,1};
			colorText[] = {1,1,1,1};
			font = "Zeppelin32";
			sizeEx = 0.04;
			
		};
		class lb_siren : RscListBox 
		{
			type = 5;
			idc = 3;
			x = safeZoneX + safeZoneW * 0.5875;
			y = safeZoneY + safeZoneH * 0.26333334;
			w = safeZoneW * 0.14375;
			h = safeZoneH * 0.24555556;
			style = 0;
			colorBackground[] = {0.8,0.8,0.8,0.3};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorSelect[] = {0,0,0,1};
			colorText[] = {1,1,1,1};
			font = "Zeppelin32";
			maxHistoryDelay = 1.000000;
			rowHeight = 0.04;
			sizeEx = 0.025;
			soundSelect[] = {"",0.1,1.0};
			colorSelectBackground[] = {0.5,0,0,0.5};
			period = 1.200000;
			class ScrollBar {
				arrowEmpty = "\ca\ui\data\ui_arrow_top_ca.paa";
				arrowFull = "\ca\ui\data\ui_arrow_top_active_ca.paa";
				border = "\ca\ui\data\ui_border_scroll_ca.paa";
				thumb = "\ca\ui\data\ui_scrollbar_thumb_ca.paa";
			};
			
		};
		class lb_storage : RscListBox 
		{
			type = 5;
			idc = 6;
			x = safeZoneX + safeZoneW * 0.4375;
			y = safeZoneY + safeZoneH * 0.26333334;
			w = safeZoneW * 0.14375;
			h = safeZoneH * 0.24555556;
			style = 0;
			colorBackground[] = {0.8,0.8,0.8,0.3};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorSelect[] = {0,0,0,1};
			colorText[] = {1,1,1,1};
			font = "Zeppelin32";
			maxHistoryDelay = 1.000000;
			rowHeight = 0.04;
			sizeEx = 0.025;
			soundSelect[] = {"",0.1,1.0};
			colorSelectBackground[] = {0.5,0,0,0.5};
			period = 1.200000;
			class ScrollBar {
				arrowEmpty = "\ca\ui\data\ui_arrow_top_ca.paa";
				arrowFull = "\ca\ui\data\ui_arrow_top_active_ca.paa";
				border = "\ca\ui\data\ui_border_scroll_ca.paa";
				thumb = "\ca\ui\data\ui_scrollbar_thumb_ca.paa";
			};
			
		};
		class lable_storage : RscBackground 
		{
			type = 0;
			idc = 2201;
			x = safeZoneX + safeZoneW * 0.4375;
			y = safeZoneY + safeZoneH * 0.23111112;
			w = safeZoneW * 0.14375;
			h = safeZoneH * 0.03444445;
			style = 0;
			text = "Storage";
			colorBackground[] = {0.5,0,0,1};
			colorText[] = {1,1,1,1};
			font = "Zeppelin32";
			sizeEx = 0.04;
			
		};
		class lb_gear : RscListBox 
		{
			type = 5;
			idc = 4;
			x = safeZoneX + safeZoneW * 0.4375;
			y = safeZoneY + safeZoneH * 0.55666667;
			w = safeZoneW * 0.14375;
			h = safeZoneH * 0.20222223;
			style = 0;
			colorBackground[] = {0.8,0.8,0.8,0.3};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorSelect[] = {0,0,0,1};
			colorText[] = {1,1,1,1};
			font = "Zeppelin32";
			maxHistoryDelay = 1.000000;
			rowHeight = 0.04;
			sizeEx = 0.025;
			soundSelect[] = {"",0.1,1.0};
			colorSelectBackground[] = {0.5,0,0,0.5};
			period = 1.200000;
			class ScrollBar {
				arrowEmpty = "\ca\ui\data\ui_arrow_top_ca.paa";
				arrowFull = "\ca\ui\data\ui_arrow_top_active_ca.paa";
				border = "\ca\ui\data\ui_border_scroll_ca.paa";
				thumb = "\ca\ui\data\ui_scrollbar_thumb_ca.paa";
			};
			
		};
		class lable_gear : RscBackground 
		{
			type = 0;
			idc = 2201;
			x = safeZoneX + safeZoneW * 0.4375;
			y = safeZoneY + safeZoneH * 0.52444445;
			w = safeZoneW * 0.14375;
			h = safeZoneH * 0.03444445;
			style = 0;
			text = "Gear";
			colorBackground[] = {0.5,0,0,1};
			colorText[] = {1,1,1,1};
			font = "Zeppelin32";
			sizeEx = 0.04;
			
		};
		
	};
	
};
