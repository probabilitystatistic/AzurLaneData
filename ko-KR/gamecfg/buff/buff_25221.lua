return {
	{
		desc = "主炮每进行9次攻击，触发全弹发射-扎拉级I"
	},
	time = 0,
	name = "全弹发射",
	init_effect = "",
	id = 25221,
	picture = "",
	desc = "主炮每进行9次攻击，触发全弹发射-扎拉级I",
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
				countTarget = 12,
				countType = 25220,
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
				skill_id = 25221,
				target = "TargetSelf",
				countType = 25220
			}
		}
	}
}
