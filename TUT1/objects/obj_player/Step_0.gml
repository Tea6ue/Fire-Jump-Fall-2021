/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 00B74CEB
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "room_height / 2"
if(y < room_height / 2)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 77FC909B
	/// @DnDParent : 00B74CEB
	/// @DnDArgument : "var" "vspeed"
	/// @DnDArgument : "op" "1"
	if(vspeed < 0)
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2B7EB511
		/// @DnDParent : 77FC909B
		/// @DnDArgument : "var" "downspeed"
		/// @DnDArgument : "value" "-vspeed"
		var downspeed = -vspeed;
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 27BB38D7
		/// @DnDApplyTo : {obj_move_parent}
		/// @DnDParent : 77FC909B
		/// @DnDArgument : "value" "downspeed"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "instvar" "1"
		with(obj_move_parent) {
		y += downspeed;
		}
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 09023D26
		/// @DnDParent : 77FC909B
		/// @DnDArgument : "value" "room_height / 2"
		/// @DnDArgument : "instvar" "1"
		y = room_height / 2;
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 2CEF7F57
		/// @DnDParent : 77FC909B
		/// @DnDArgument : "var" "back_y"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "function" "layer_get_y"
		/// @DnDArgument : "arg" ""background""
		var back_y = layer_get_y("background");
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 42F38D41
		/// @DnDInput : 2
		/// @DnDParent : 77FC909B
		/// @DnDArgument : "function" "layer_y"
		/// @DnDArgument : "arg" ""background""
		/// @DnDArgument : "arg_1" "back_y + downspeed"
		layer_y("background", back_y + downspeed);
	}
}