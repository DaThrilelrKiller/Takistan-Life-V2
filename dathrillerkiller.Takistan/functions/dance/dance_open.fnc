if (dialog)exitWith {closeDialog 0};
if (animationstate player == "actspercmstpsnonwrfldnon_interrogate02_forgoten")exitWith {};
if (lifeState player == "UNCONSCIOUS")exitWith{};

createDialog "animationsdialog";

{
	lbAdd [1, (_x select 2)];	
	true
}count dance_animations;
