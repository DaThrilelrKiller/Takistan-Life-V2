private ["_text","_img","_display","_control","_h","_pos","_maxDist","_dist","_target"];
disableSerialization;
11 cutRsc ["tag_notify", "PLAIN"];
_text = _this select 0;
_img = _this select 1;

_display = (uiNamespace getVariable 'tag_notify');
_control = _display displayCtrl 54;	
		
if (_img != "")then 
{
	_control ctrlSetStructuredText parseText format["<t size='%2' align='center' color='%4' shadowColor='#000000'><img size='3' image='%5.paa'/><br/>%1</t>",_text,2, '#dfd7a5','#DDDDDD',_img];
}else{
	_control ctrlSetStructuredText parseText format["<t size='%2' align='center' color='%4' shadowColor='#000000'>%1</t>",_text,1, '#dfd7a5','#DDDDDD'];
};
				
_control ctrlShow true;
_control ctrlSetPosition [safezonex* 0.8,safezoney * -2.5];
_control ctrlCommit 0;