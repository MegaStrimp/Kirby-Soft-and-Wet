#define execute_shell_simple
/// (path, args = "", action = "open", showCmd = 5/*SW_SHOW*/, ?workingDirectory)
var _path = argument[0];
var _args = argument_count > 1 ? argument[1] : "";
var _action = argument_count > 2 ? argument[2] : "open";
var _showCmd = argument_count > 3 ? argument[3] : 5;
var _working_directory = argument_count > 4 ? argument[4] : "";
execute_shell_simple_raw_1(_path, _args, _action, _working_directory)
return execute_shell_simple_raw_2(_showCmd);