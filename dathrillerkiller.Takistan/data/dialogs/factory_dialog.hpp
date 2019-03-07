class FacBgFrame {
	type=0;
	idc=-1;
	style=64;
	colorBackground[]={0.4, 0.4, 0.4, 0.75};
	colorText[]={1, 1, 1, 1};
	font="TahomaB";
	SizeEX=0.025;
	text="";
};

class factory_dialog {

	idd = 1100;
	movingEnable = true;
	controlsBackground[] = {
		left_background, left_frame,
		right_background, right_frame
		
	};
	
	objects[] = { };
	controls[] = {
		items_list, 
		item_produced_label, item_produced_field,
		item_cost_label, item_cost_field,
		amount_label, amount_field,
		enqueue_button,
		create_button, 
		
		dummybutton,
		
		
		queue_list,
		in_production_label, in_production_field,
		in_production_eta_label, in_production_eta_field,
		dequeue_button,
		close_button,
		
		status_background1,
		status_frame1,
		status_field1,
		
		status_background2,
		status_frame2,
		status_field2
	};
				
	class left_background: Rscbackground {
		moving = 1;
		x = 0.30; y = 0.10;
		w = 0.39; h = 0.63;
	};
	
	class left_frame : RscBgRahmen {
		idc = 1101;
		moving = 1;
		x = 0.30; y = 0.10;
		w = 0.39; h = 0.63;
		text = "Factory Production";
	};

	class items_list : RscListBox {
		idc = 1102;
		x = 0.32; y = 0.14;
		w = 0.35; h = 0.30;
		onLBSelChanged = "_this call factory_update_enqueue_item;";
	};

	class item_produced_label : RscText {
		x = 0.32; y = 0.47;
		w = 0.13; h = 0.04;
		text = "Produced: ";
	};
	
	class item_produced_field: RscText {
		idc = 1110;
		x = 0.49; y = 0.47;
		w = 0.18; h = 0.04;
		colorBackground[] = {1, 1, 1, 0.1};
		text = "0";
	};
	
	
	class item_cost_label : RscText {
		x = 0.32; y = 0.52;
		w = 0.13; h = 0.04;
		text = "Production cost: ";
	};
	
	class item_cost_field: RscText {
		idc = 1111;
		x = 0.49; y = 0.52;
		w = 0.18; h = 0.04;
		colorBackground[] = {1, 1, 1, 0.1};
		text = "$0";
	};
	

	class amount_label : RscText {
		x = 0.32; y = 0.57;
		w = 0.13; h = 0.04;
		text = "Amount: ";
	};
	
	class amount_field_background : RscText {
		idc = 1105;
		x = 0.49; y = 0.57;
		w = 0.18; h = 0.04;
		colorBackground[] = {1, 1, 1, 0.1};
	};
	
	class amount_field : RscEdit {
		idc = 1105;
		x = 0.49; y = 0.57;
		w = 0.18; h = 0.04;
		onKeyDown = "call factory_update_enqueue_item;";
		text = "1";
	};

	class enqueue_button : RscButton {
		idc = 1106;
		x = 0.32; y = 0.62;
		w = 0.35; h = 0.04;
		colorBackgroundDisabled[] = {1, 0, 0, 0.4};
		colorDisabled[] = {1, 1, 1, 1};
		text = "Produce item";
	};
	
	class create_button : RscButton {
		idc = 1107;
		x = 0.32; y = 0.67;
		w = 0.35; h = 0.04;
		colorBackgroundDisabled[] = {1, 0, 0, 0.4};
		colorDisabled[] = {1, 1, 1, 1};
		text = "Deploy item";
	};


	
	
	class right_background: Rscbackground {
		moving = 1;
		x = 0.73; y = 0.10;
		w = 0.39; h = 0.63;
	};
	
	class right_frame : RscBgRahmen {
		idc = 2201;
		moving = 1;
		x = 0.73; y = 0.10;
		w = 0.39; h = 0.63;
		text = "Factory Production";
	};
	
	
	class queue_list : RscListBox {
		idc = 2202;
		x = 0.75; y = 0.14;
		w = 0.35; h = 0.30;
		onLBSelChanged = "_this call factory_update_dequeue_item;";
	};


	class in_production_label : RscText {
		x = 0.75; y = 0.47;
		w = 0.13; h = 0.04;
		text = "Production item: ";
	};
	
	
	class in_production_field : RscText {
		idc = 1108;
		x = 0.92; y = 0.47;
		w = 0.18; h = 0.04;
		colorBackground[] = {1, 1, 1, 0.1};
		text = "(none)";
	};
	
	
	class in_production_eta_label : RscText {
		x = 0.75; y = 0.52;
		w = 0.13; h = 0.04;
		text = "Production time: ";
	};
	
	class in_production_eta_field: RscText {
		idc = 1109;
		x = 0.92; y = 0.52;
		w = 0.18; h = 0.04;
		colorBackground[] = {1, 1, 1, 0.1};
		text = "0";
	};
	
	class dequeue_button : RscButton {
		idc = 1104;
		x = 0.75; y = 0.62;
		w = 0.35; h = 0.04;
		colorBackgroundDisabled[] = {1, 0, 0, 0.4};
		colorDisabled[] = {1, 1, 1, 1};
		text = "Cancel item";
	};
	
		
	class close_button : RscButton {
		x = 0.75; y = 0.67;
		w = 0.35; h = 0.04;
		colorBackgroundDisabled[] = {1, 0, 0, 0.4};
		colorDisabled[] = {1, 1, 1, 1};
		text = "Close";
		action = "closeDialog 0;";
	};
	
	class status_frame1 : FacBgFrame {
		x = 0.30; y = 0.75;
		w = 0.82; h = 0.04;
	};

	class status_background1: RscBackground {
		moving = 1;
		x = 0.30; y = 0.75;
		w = 0.82; h = 0.04;
	};
	
	class status_field1 : RscText {
		idc = 2203;
		x = 0.30; y = 0.75;
		w = 0.82; h =  0.04;
		SizeEX=0.024;
		text = "";
	};
	
	

	class status_frame2 : FacBgFrame {
		x = 0.30; y = 0.81;
		w = 0.82; h = 0.04;
	};

	class status_background2: RscBackground {
		moving = 1;
		x = 0.30; y = 0.81;
		w = 0.82; h = 0.04;
	};
	
	class status_field2 : RscText {
		idc = 2204;
		x = 0.30; y = 0.81;
		w = 0.82; h =  0.04;
		SizeEX=0.024;
		text = "";
	};
	
	

	class dummybutton : RscDummy {idc = 1030;};

};