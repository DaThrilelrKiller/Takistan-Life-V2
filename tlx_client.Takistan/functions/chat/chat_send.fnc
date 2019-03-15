if (dtk_server)exitWith {};

_text = _this select 0;
_condition = _this select 1;
if !(call compile _condition)exitWith {};

_message = "";
chat_messages set [count chat_messages,_text];

{_message = _message + _x}forEach chat_messages;
["chat_messages",20]call array_trim;

12 cutRsc ["better_chat", "PLAIN"];
_display = (uiNamespace getVariable 'better_chat');
_control = _display displayCtrl 20;
_control ctrlSetStructuredText parseText _message;
_control ctrlCommit 0;