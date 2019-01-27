/*
File: recorder_add.fnc
Desc: recored data to an array
Author: DaThrillerKiller -PureGaming Founder
Youtube: https://www.youtube.com/channel/UCY-d_qX9l2ABnJ3cDO7VUIQ
Email: dathrillerkiller@gmail.com 
Instagram: https://www.instagram.com/tuckeeeee

	Use Without Permission is prohibited

Prams: 
	0. data you want to record - code,string,array
	1. How much data do you want recored before, the array is trimmed - Number
 	2. deltay between each recording - Number
	4. variable the recording is stored in - String
	
Returns:
	a index id, used to remove the recorder via core_removeLoop
	
Example:

[{getPos player},20,1,"recent_positions"]call recorder_add;
Records player position, every 1 second to an araay called recent_positions, witch stores upto 20 cycles of data

*/

_data = _this select 0;
_amount = _this select 1;
_deltay = _this select 2;
_variable = _this select 3;

_index = [_deltay,[[_data,_amount,_variable],recorder_record]]call core_AddLoop;

_index