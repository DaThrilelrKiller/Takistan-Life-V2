private ["_item","_return"];

_item = toLower (_this select 0);

_return = _item call {
	if (_this == "schluesselbund")exitwith {"data\images\items\keychain.paa"};
	if (_this == "fishing_pole")exitwith {"data\images\items\fishing-pole.paa"};
	if (_this == "cookie")exitwith {"data\images\items\fortune_cookie.paa"};
	if (_this == "glass")exitwith {"data\images\items\glass.paa"};
	if (_this == "gold")exitwith {"data\images\items\gold.paa"};
	if (_this == "hideout")exitwith {"data\images\items\hideout.paa"};
	if (_this == "idcard")exitwith {"data\images\items\idcard.paa"};
	if (_this == "kanister")exitwith {"data\images\items\jerrycan.paa"};
	if (_this == "lighter")exitwith {"data\images\items\lighter.paa"};
	if (_this == "lockpick")exitwith {"data\images\items\lockpick.paa"};
	if (_this == "woodaxe")exitwith {"data\images\items\axe.paa"};
	if (_this == "lumber")exitwith {"data\images\items\lummber.paa"};
	if (_this == "medikit")exitwith {"data\images\items\medkit.paa"};
	if (_this == "geld")exitwith {"data\images\items\money.paa"};
	if (_this == "reparaturkit")exitwith {"data\images\items\repairkit.paa"};
	if (_this == "sand")exitwith {"data\images\items\sand.paa"};
	if (_this == "fuelline")exitwith {"data\images\items\syphon.paa"};
	if (_this == "treeseed")exitwith {"data\images\items\tree.paa"};
	if (_this == "emptywine")exitwith {"data\images\items\wine.paa"};
	if (_this == "emptybeer")exitwith {"data\images\items\beer.paa"};
	if (_this == "emptyvodka")exitwith {"data\images\items\wine.paa"};
	if (_this == "emptywiskey")exitwith {"data\images\items\wine.paa"};
	if (_this == "oilbarrel")exitwith {"data\images\items\barrels.paa"};
	if (_this == "spikestrip")exitwith {"data\images\items\spikes.paa"};
	if (_this == "debit_card")exitwith {"data\images\items\debitcard.paa"};
	if (_this == "coal")exitwith {"data\images\items\coal.paa"};
	if (_this == "copper")exitwith {"data\images\items\copper.paa"};
	if (_this == "diamond rock")exitwith {"data\images\items\diamond.paa"};
	if (_this == "diamond")exitwith {"data\images\items\diamond.paa"};
	if (_this == "diamondring")exitwith {"data\images\items\diamond.paa"};
	if (_this == "diamondnecklace")exitwith {"data\images\items\diamond.paa"};
	if (_this == "diamondbroach")exitwith {"data\images\items\diamond.paa"};
	if (_this == "donut")exitwith {"data\images\items\donut.paa"};
	if (_this == "beer")exitwith {"data\images\items\beer.paa"};
	if (_this == "beer2")exitwith {"data\images\items\beer.paa"};
	if (_this == "vodka")exitwith {"data\images\items\wine.paa"};
	if (_this == "smirnoff")exitwith {"data\images\items\wine.paa"};
	if (_this == "wiskey")exitwith {"data\images\items\wine.paa"};
	if (_this == "wine")exitwith {"data\images\items\wine.paa"};
	if (_this == "wine2")exitwith {"data\images\items\wine.paa"};
	if (_this == "marijuanaseed")exitwith {"data\images\items\seeds.paa"};
	if (_this == "heroinseed")exitwith {"data\images\items\seeds.paa"};
	if (_this == "cocaineseed")exitwith {"data\images\items\seeds.paa"};
	if (_this == "gymmem1")exitwith {"data\images\items\steroids.paa"};
	if (_this == "gymmem2")exitwith {"data\images\items\steroids.paa"};
	if (_this == "gymmem3")exitwith {"data\images\items\steroids.paa"};
	if (_this == "gymmem4")exitwith {"data\images\items\steroids.paa"};
	if (_this == "steel")exitwith {"data\images\items\steel.paa"};
	if (_this == "plastic")exitwith {"data\images\items\plastic.paa"};
	if (_this == "ziptie")exitwith {"data\images\items\ziptie.paa"};
	if (_this == "ziptie_bh")exitwith {"data\images\items\ziptie.paa"};
	if (_this == "ziptie2")exitwith {"data\images\items\ziptie.paa"};
	if (_this == "apple")exitwith {"data\images\items\apple.paa"};
	if (_this == "bread")exitwith {"data\images\items\bread.paa"};
	"data\images\items\case.paa"
};

_return