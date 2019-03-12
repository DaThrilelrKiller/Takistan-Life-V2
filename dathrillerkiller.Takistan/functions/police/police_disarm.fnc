private["_hasNVG", "_hasBino"];
_hasNVG  = (player hasWeapon "NVGoggles");
_hasBino = (player hasWeapon "Binocular");

removeAllWeapons player;
{player removeMagazine _x } forEach (magazines player);

player setVariable ["Pistol","",true];
player setVariable ["Rifle","",true];


If (_hasNVG)  then {player addWeapon "NVGoggles";};
If (_hasBino) then {player addWeapon "Binocular";};

{
   _illegal = (_x select 0)call config_illegal;
   if (_illegal) then {
		[player,(_x select 0),0]call storage_setAmount;
   };
}forEach (player getVariable ["dtk_storage",[]]);