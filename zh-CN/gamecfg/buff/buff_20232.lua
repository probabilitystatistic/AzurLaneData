return {
	{
		desc = "主炮每进行8次攻击，触发全弹发射-波特兰级II"
	},
	time = 0,
	name = "全弹发射",
	init_effect = "",
	id = 20232,
	picture = "",
	desc = "主炮每进行8次攻击，触发全弹发射-波特兰级II",
	stack = 1,
	color = "red",
	icon = 20200,
	last_effect = "",
	effect_list = {
		{
			type = "BattleBuffCount",
			trigger = {
				"onFire"
			},
			arg_list = {
				countTarget = 8,
				countType = 20230,
				index = {
					1
				}
			}
		},
		{
			type = "BattleBuffCastSkill",
			trigger = {
				"onBattleBuffCount"
			},
			arg_list = {
				skill_id = 20232,
				target = "TargetSelf",
				countType = 20230
			}
		}
	}
}
