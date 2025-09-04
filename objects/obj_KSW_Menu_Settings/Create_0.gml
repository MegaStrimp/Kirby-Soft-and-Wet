///@description Create

#region Initialize Variables
#region Component Setup
scr_Component_ButtonInputTimer_Setup(5);
#endregion

#region Menu Variables
playerNum = 0;

selection = 0;
targetKey = "";

buttonsList_Max = 17;
#endregion

#region Keys
var i = 0;
buttonRemap_KeysList[i] = "UP";
buttonRemap_KeysText[i] = input_binding_get("up");
i += 1;
buttonRemap_KeysList[i] = "DOWN";
buttonRemap_KeysText[i] = input_binding_get("down");
i += 1; 
buttonRemap_KeysList[i] = "LEFT";
buttonRemap_KeysText[i] = input_binding_get("left");
i += 1;
buttonRemap_KeysList[i] = "RIGHT";
buttonRemap_KeysText[i] = input_binding_get("right");
i += 1;
buttonRemap_KeysList[i] = "A";
buttonRemap_KeysText[i] = input_binding_get("A");
i += 1;
buttonRemap_KeysList[i] = "B";
buttonRemap_KeysText[i] = input_binding_get("B");
i += 1;
buttonRemap_KeysList[i] = "X";
buttonRemap_KeysText[i] = input_binding_get("X");
i += 1;
buttonRemap_KeysList[i] = "Y";
buttonRemap_KeysText[i] = input_binding_get("Y");
i += 1;
buttonRemap_KeysList[i] = "L";
buttonRemap_KeysText[i] = input_binding_get("L");
i += 1;
buttonRemap_KeysList[i] = "R";
buttonRemap_KeysText[i] = input_binding_get("R");
i += 1;
buttonRemap_KeysList[i] = "LT";
buttonRemap_KeysText[i] = input_binding_get("LT");
i += 1;
buttonRemap_KeysList[i] = "RT";
buttonRemap_KeysText[i] = input_binding_get("RT");
i += 1;
buttonRemap_KeysList[i] = "START";
buttonRemap_KeysText[i] = input_binding_get("start");
i += 1;
buttonRemap_KeysList[i] = "SELECT";
buttonRemap_KeysText[i] = input_binding_get("select");
#endregion
#endregion