_lottoScheine = (_this select 3);
buttonSetAction [2, "[ lbData[1, (lbCurSel 1)] ] execVM ""scripts\lotto.sqf""; closeDialog 0"];

{

_lottoArray = _x call Other_GetLottoArray; 
_index = lbAdd [1, format["%1 ($%2)", (_lottoArray select 1), (_lottoArray select 2)]];					
lbSetData [1, _index, (_lottoArray select 0)];

} count ["lotto1", "lotto2", "lotto3", "lotto4"];

lbSetCurSel [1, 0];