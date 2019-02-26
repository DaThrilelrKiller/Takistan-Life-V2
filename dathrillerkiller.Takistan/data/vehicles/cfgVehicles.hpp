

class Worker2;
class VolhaLimo_TK_CIV_EP1;
class MH6J_EP1;
class SUV_UN_EP1;
class SUV_TK_EP1;
class LandRover_TK_CIV_EP1;
class MtvrRefuel_DES_EP1;

class CfgVehicles {
	class inmate : Worker2 {
		displayName = "Jail Inmate";
		hiddenSelectionsTextures[] = {"data\vehicles\textures\prisonor.paa"};
	};
	class dtk_towtruck : MtvrRefuel_DES_EP1 {
		displayName = "News Little Bird";
		hiddenSelectionsTextures[] = {"","","","#(rgb,0,0,0)color(0,0,0,0)"};
	};
	class MH6J_EP1_news : MH6J_EP1 {
		displayName = "News Little Bird";
		hiddenSelectionsTextures[] = {"data\vehicles\textures\news_chopper.paa"};
	};
	class SUV_TK_EP1_news : SUV_TK_EP1 {
		displayName = "News SUV";
		hiddenSelectionsTextures[] = {"data\vehicles\textures\news_suv.paa"};
	};
	class SUV_TK_EP1_sup : SUV_TK_EP1 {
		displayName = "Supporter SUV";
		hiddenSelectionsTextures[] = {"data\vehicles\textures\suvsupporter.paa"};
	};
	class SUV_TK_EP1_vip : SUV_TK_EP1 {
		displayName = "Supporter SUV";
		hiddenSelectionsTextures[] = {"data\vehicles\textures\suvsupporter.paa"};
	};
	class SUV_UN_EP1_retex : SUV_UN_EP1 {
		displayName = "Police SUV";
		hiddenSelectionsTextures[] = {"data\vehicles\textures\suv_cop.paa"};
	};
	class Volha_2_TK_CIV_MEM : VolhaLimo_TK_CIV_EP1 {
		displayName = "Vohla Black";
		hiddenSelectionsTextures[] = {"data\vehicles\textures\memvohla.paa"};
	};
	class polce_landrover : LandRover_TK_CIV_EP1 {
		displayName = "Vohla Black";
		hiddenSelectionsTextures[] = {"data\vehicles\textures\polce_landrover.paa"};
	};
};