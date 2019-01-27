class tag {

	idd = 1000600;
	movingEnable=0;
	duration = 10^1000;
	onLoad = "uiNamespace setVariable ['tag',_this select 0]";
	
	class controlsBackground
	{
		class tag1 {
			
			idc = 54;
			type = 13;
			style = 0x01;
			x = 0.5;
			y = 0.5;
			w = 0.25;
			h = 0.2;
			size = 0.02;
			colorBackground[] = {0,0,0,0};
			colortext[] = {0,0,0,0.7};
			text ="";
			shadow = 2;
			
			class Attributes {
				align = "right";
				valign = "middle";
				size = "2";
			};
		};
	};
};

class tag_notify {

	idd = 1010;
	movingEnable=0;
	duration = 8;
	fadein = 0.5;
	fadeout = 5;
	onLoad = "uiNamespace setVariable ['tag_notify',_this select 0]";
	
	class controlsBackground
	{
		class tag1 {
			
			idc = 54;
			type = 13;
			style = 0x01;
			x = 0.5;
			y = 0.5;
			w = 0.35;
			h = 1;
			size = 0.02;
			colorBackground[] = {0,0,0,0};
			colortext[] = {0,0,0,0.7};
			text ="";
			shadow = 2;
			
			class Attributes {
				align = "right";
				valign = "middle";
				size = "2";
			};
		};
	};
};