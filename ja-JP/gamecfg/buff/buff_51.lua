slot1[1] = SYSTEM_SCENARIO
slot1[2] = SYSTEM_ROUTINE
slot0.limit = {}
slot2.trigger = {
	"onStartGame"
}
slot2.arg_list = {
	skill_id = 51
}
slot1[1] = {
	type = "BattleBuffCastSkill"
}
slot0.effect_list = {}

return {
	time = 0,
	name = "竞技场BUFF触发器",
	init_effect = "",
	picture = "",
	desc = "竞技场BUFF",
	stack = 1,
	id = 51,
	icon = 51,
	last_effect = ""
}
