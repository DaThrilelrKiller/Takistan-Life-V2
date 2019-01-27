class baildialog
{
	idd = -1;
	movingEnable = true;
	controlsBackground[] = {DLG_BACK1, background};
	objects[] = { };		
	controls[] = {button_paybail, bail_eingabe, cancel, dummybutton};	
	
	class DLG_BACK1: RscBackground	
	{						
		x = 0.38; 
		y = 0.25;	
		w = 0.42; 
		h = 0.22;	
	};
	
	class background : RscBgRahmen		
	{
		x = 0.38;
		y = 0.25;	
		w = 0.42;
		h = 0.22;		
		
		text = $STRD_description_bail_pay;		
	};
	
	class button_paybail : RscButton	
	{
		x = 0.45; 
		y = 0.35;		
		w = 0.25;
		h = 0.04;	
		
		text = $STRD_description_bail_pay;	
		action = "[ctrlText 2] execVM ""scripts\bail.sqf""; closeDialog 0";		
	};
	
	class cancel : RscButton	
	{
		x = 0.45;
		y = 0.40;		
		w = 0.25;
		h = 0.04;	
		
		text = $STRD_description_cancel;
		action = "closedialog 0";	
	};
	
	class bail_eingabe : RscEdit	
	{
		x = 0.45;
		y = 0.30;
		w = 0.24;
		h = 0.04;
		idc = 2;
		
		text = "1000";
	};
	
	class dummybutton : RscDummy 
	{
		idc = 1008;
	};
};

class liste_1_button
{
	idd = -1;
	movingEnable = true;
	controlsBackground[] = {DLG_BACK1, background};	
	objects[] = { };		
	controls[] = {spielerliste, closeabc, dummybutton};	
	
	class DLG_BACK1: RscBackground	
	{
		x = 0.21;
		y = 0.05;	
		w = 0.52; 
		h = 0.84;
	};
	
	class background : RscBgRahmen		
	{
		x = 0.21;
		y = 0.05;	
		w = 0.52;
		h = 0.84;
		
		text = $STRD_description_spielerliste_header;
	};
	
	class spielerliste : RscListBox	
	{
		idc = 1;
		x = 0.22;
		y = 0.08;	
		w = 0.50;
		h = 0.73;	
		SizeEX = 0.0195; 
		RowHeight = 0.03; 	
	};

	class closeabc : RscButton	
	{		
		idc = 221;		
		x = 0.39; 
		y = 0.83;	
		w = 0.20;
		h = 0.04;
		
		text = $STRD_description_buyitem_close;	
	};
	
	class dummybutton : RscDummy 
	{
		idc = 1017;
	};
};

class gesetzdialog
{
	idd = -1;
	movingEnable = true;
	controlsBackground[] = {DLG_BACK1, background};
	objects[] = { };
	controls[] = {gesetzliste, eingabefenster, submit, dummybutton};	
	
	class DLG_BACK1: RscBackground	
	{
		x = 0.03; 
		y = 0.21;	
		w = 0.93;
		h = 0.43;
	};
	
	class background : RscBgRahmen				
	{
		x = 0.03;
		y = 0.21;
		w = 0.93;
		h = 0.43;
		
		text = $STRD_dialogandere_gesetze_header;
	};
	
	class gesetzliste : RscListBox		
	{
		idc = 1;		
		x = 0.04; 
		y = 0.24;
		w = 0.91; 
		h = 0.34;	
	};
	
	class eingabefenster : RscEdit	
	{
		idc = 2;
		x = 0.04; 
		y = 0.58;
		w = 0.71; 
		h = 0.04;
		
		onChar = "[_this, 1] call TastenDruck;";
	};
	
	class submit : RscButton
	{
		x = 0.75;
		y = 0.58;
		w = 0.20; 
		h = 0.04;	
		idc = 3;

		text = $STRD_dialogandere_gesetze_submit;	
		action = "[0,0,0,[""clientgesetz"", lbcursel 1, Ctrltext 2]] execVM ""scripts\mayor.sqf""; closedialog 0;";	
	};	
	
	class dummybutton : RscDummy 
	{
		idc = 1020;
	};
};

class gilden_punktekaufdialog
{
	idd = -1;
	movingEnable = true;
	controlsBackground[] = {DLG_BACK1, background};	
	objects[] = { };			
	controls[] = {punkteslider, anzeigetext, submit, cancel, dummybutton};		
	
	class DLG_BACK1: RscBackground	
	{
		x = 0.21;
		y = 0.27;		
		w = 0.55;
		h = 0.21;	
	};
	
	class background : RscBgRahmen	
	{
		x = 0.21; 
		y = 0.27;	
		w = 0.55; 
		h = 0.21;		
		
		text = $STRD_description_punktekauf_header;	
	};
	
	class punkteslider : RscSliderH	
	{
		x = 0.23;
		y = 0.30;	
		w = 0.52; 
		h = 0.04;
		idc = 1;	
	};	
	
	class anzeigetext : RscText	
	{
		x = 0.22; 
		y = 0.35;
		w = 0.53; 
		h = 0.04;	
		idc = 2;
		
		style = ST_CENTER;
	};
	
	class submit : RscButton
	{
		x = 0.26; 
		y = 0.41;
		w = 0.20;
		h = 0.04;
		idc = 3;
		
		text = $STRD_description_submit;
		action = "closedialog 0;";
	};
	
	class cancel : RscButton	
	{
		x = 0.51; 
		y = 0.41;
		w = 0.20;
		h = 0.04;	
		idc = 4;
		
		text = $STRD_description_cancel;
		action = "closedialog 0;";	
	};
	
	class dummybutton : RscDummy 
	{
		idc = 1021;
	};
};

class gilde_verwaltung
{
	idd = -1;	
	movingEnable = true;		
	controlsBackground[] = {DLG_BACK1, background};		
	objects[] = { };				
	controls[] = {rauswerfen_spielerliste, rauswerfen_header, cancel, rauswerfen_submit, sperren_liste, sperren_header, sperren_submit, dummybutton};
	
	class DLG_BACK1: Rscbackground	
	{
		x = 0.24;
		y = 0.13;	
		w = 0.47;
		h = 0.43;		
	};
	
	class background : RscBgRahmen	
	{
		x = 0.24;
		y = 0.13;
		w = 0.47; 
		h = 0.43;
		
		text = $STRD_description_gildeverwalten_header;	
	};
	
	class rauswerfen_spielerliste : RscListBox
	{
		x = 0.26;
		y = 0.22;	
		w = 0.20;
		h = 0.15;
		idc = 102;	
	};				
	
	class rauswerfen_header : RscText
	{
		x = 0.26; 
		y = 0.17;	
		w = 0.20; 
		h = 0.04;
		idc = 101;
		
		style = ST_CENTER;
		text = $STRD_description_gildeverwalten_rauswerfen_header;
	};	
	
	class cancel : RscButton
	{			
		x = 0.38; 
		y = 0.50;	
		w = 0.20; 
		h = 0.04;		
		
		text = $STRD_description_buyitem_close;		
		action = "closedialog 0;";
	};
	
	class rauswerfen_submit : RscButton	
	{
		x = 0.26;
		y = 0.38;
		w = 0.20;
		h = 0.04;
		idc = 103;	
		
		text = $STRD_description_gildeverwalten_rauswerfen_submit;
		action = "[0, 0, 0, [""kick"", (lbData [102, (lbCurSel 102)]), (lbCurSel 102)]] execVm ""gangs.sqf""; closedialog 0;";	
	};
	
	class sperren_liste : RscListBox
	{
		x = 0.50; 
		y = 0.22;
		w = 0.20;
		h = 0.08;
		idc = 201;	
	};
	
	class sperren_header : RscText		
	{
		x = 0.50; 
		y = 0.17;
		w = 0.20; 
		h = 0.04;
		idc = 202;	
		
		style = ST_CENTER;
		text = $STRD_description_gildeverwalten_sperren_header;	
	};
	
	class sperren_submit : RscButton
	{
		x = 0.50;
		y = 0.32;
		w = 0.20; 
		h = 0.04;
		idc = 203;

		text = $STRD_description_gildeverwalten_sperren_submit;	
		action = "[0,0,0,[""allowjoin"", (lbData [201, (lbCurSel 201)]), (lbCurSel 201)]] execVM ""gangs.sqf""; closedialog 0;";	
	};
	
	class dummybutton : RscDummy 
	{
		idc = 1022;
	};
};

class ja_nein
{
	idd = -1;		
	movingEnable = true;
	controlsBackground[] = {DLG_BACK1, background};
	onLoad = "dtk_answer = nil";
	onUnload = "if (isNil 'dtk_answer')then {dtk_answer = false};";
	objects[] = { };	
	controls[] = {infotext, button1, button2, dummybutton};	
	class DLG_BACK1: Rscbackground			
	{
		x = 0.38; 
		y = 0.17;	
		w = 0.38;
		h = 0.25;
	};			
	
	class background : RscBgRahmen	
	{						
		x = 0.38; y = 0.17;		
		w = 0.38; h = 0.25;		
		text = $STRD_janein_header;		
	};					
	
	class infotext : RscText
	{						
		idc = 1;			
		x = 0.40; 
		y = 0.21;		
		w = 0.34;
		h = 0.10;
		
		style = ST_MULTI;
		lineSpacing = 1;	
	};
	
	class button1 : RscButton	
	{
		x = 0.40;
		y = 0.32;
		w = 0.10; 
		h = 0.04;	

		text = "Pay";	
		action = "dtk_answer = true; closeDialog 0;";	
	};
	
	class button2 : RscButton	
	{
		x = 0.53; 
		y = 0.32;
		w = 0.10; 
		h = 0.04;

		text = "No";	
		action = "dtk_answer = false; closeDialog 0;";	
	};
	
	class dummybutton : RscDummy {idc = 1023;
	};
};

class wahldialog
{
	idd = -1;	
	movingEnable = true;
	controlsBackground[] = {DLG_BACK1, background};	
	objects[] = { };
	controls[] = {spielerliste, submit, cancel, dummybutton};	
	
	class DLG_BACK1: Rscbackground		
	{	
		x = 0.36;
		y = 0.06;
		w = 0.30; 
		h = 0.80;
	};		
	
	class background : RscBgRahmen
	{		
		x = 0.36; 
		y = 0.06;	
		w = 0.30;
		h = 0.80;
		
		text = $STRD_description_wahl_header;
	};
	
	class spielerliste : RscListBox
	{
		x = 0.38;
		y = 0.09;
		w = 0.27; 
		h = 0.61;
		idc = 1;
		onLBSelChanged = "_this call goverment_lbChanged";
	};			
	
	class submit : RscButton	
	{
		idc = 67;
		x = 0.42; 
		y = 0.72;
		w = 0.20;
		h = 0.04;
		
		text = $STRD_description_wahl_submit;
		action = "call goverment_submit";
	};
	
	class cancel : RscButton		
	{							
		x = 0.42; 
		y = 0.79;
		w = 0.20; 
		h = 0.04;
		
		text = $STRD_description_buyitem_close;
		action = "closedialog 0;";		
	};
	
	class dummybutton : RscDummy 
	{
		idc = 1031;
	};
};

class steuerdialog
{
	idd = -1;	
	movingEnable = true;
	controlsBackground[] = {DLG_BACK1, background};		
	objects[] = { };	
	controls[] = {text_itemsteuer, slider_itemsteuer, fahrzeugsteuer_text, fahrzeugsteuer_slider, magazinsteuer_text, magazinsteuer_slider, waffesteuer_text, waffesteuer_slider, banksteuer_text, banksteuer_slider, button_submit, button_cancel, dummybutton};	
	
	class DLG_BACK1: Rscbackground		
	{						
		x = 0.34;
		y = 0.08;	
		w = 0.28; 
		h = 0.70;	
	};		

	class background : RscBgRahmen	
	{								
		x = 0.34; 
		y = 0.08;	
		w = 0.28; 
		h = 0.70;	
		
		text = $STRD_description_steuer_header;	
	};		
	
	class text_itemsteuer : RscText	
	{				
		x = 0.35;
		y = 0.12;	
		w = 0.26; 
		h = 0.04;
		idc = 11;
	};			
	
	class slider_itemsteuer : RscSliderH
	{							
		idc = 12;
		x = 0.35; 
		y = 0.17;	
		w = 0.26; 
		h = 0.04;
	};			
	
	class fahrzeugsteuer_text : RscText		
	{							
		idc = 21;		
		x = 0.35;
		y = 0.23;
		w = 0.26; 
		h = 0.04;
	};			
	
	class fahrzeugsteuer_slider : RscSliderH
	{								
		idc = 22;
		x = 0.35; 
		y = 0.28;
		w = 0.26; 
		h = 0.04;
	};
	
	class magazinsteuer_text : RscText
	{									
		idc = 31;	
		x = 0.35; 
		y = 0.34;
		w = 0.26; 
		h = 0.04;
	};			
	
	class magazinsteuer_slider : RscSliderH
	{						
		idc = 32;		
		x = 0.35; 
		y = 0.39;
		w = 0.26; 
		h = 0.04;
	};		
	
	class waffesteuer_text : RscText		
	{					
		idc = 41;		
		x = 0.35;
		y = 0.45;		
		w = 0.26;
		h = 0.04;		
	};	
	
	class waffesteuer_slider : RscSliderH	
	{		
		idc = 42;	
		x = 0.35; 
		y = 0.50;	
		w = 0.26; 
		h = 0.04;	
	};		
	
	class banksteuer_text : RscText	
	{					
		idc = 51;	
		x = 0.35; 
		y = 0.56;
		w = 0.25; 
		h = 0.04;
	};		
	
	class banksteuer_slider : RscSliderH
	{						
		idc = 52;		
		x = 0.35; 
		y = 0.61;
		w = 0.25; 
		h = 0.04;
	};				
	
	class button_submit : RscButton	
	{							
		x = 0.38; 
		y = 0.67;
		w = 0.20; 
		h = 0.04;
		
		text = $STRD_description_steuer_submit;
		action = "[0,1,2,[""steuernMayor"", (round(sliderPosition 12)), (round(sliderPosition 32)), (round(sliderPosition 42)), (round(sliderPosition 22)), (round(sliderPosition 52))]] execVM ""scripts\mayor.sqf""; closedialog 0;";	
	};
	
	class button_cancel : RscButton	
	{	
		x = 0.38; 
		y = 0.72;		
		w = 0.20;
		h = 0.04;

		text = $STRD_description_buyitem_close;	
		action = "closedialog 0;";			
	};						
	
	class dummybutton : RscDummy 
	{
		idc = 1032;
	};
};

class USBW_Interation
{
	name="USBW_Interation";
	idd=-1;
	movingEnable=false;
	objects[]={};
	onLoad = "[]spawn dtk_InterationHandler;";
	class controlsBackground
	{
		class adminconsol_background:RscBackground
		{
			idc=-1;
			x=0.288888888888889;
			y=0.106666666666667;
			w=0.422222222222222;
			h=0.746666666666667;
		};
	};
	class controls
	{
		class adminconsol_options:RscListBox
		{
			idc=1500;
			x=0.355555555555556;
			y=0.213333333333333;
			w=0.311111111111111;
			h=0.497777777777778;
		};
		class adminconsol_frame:RscFrame
		{
			idc=-1;
			x=0.288888888888889;
			y=0.106666666666667;
			w=0.422222222222222;
			h=0.746666666666667;
		};
			
	};
};