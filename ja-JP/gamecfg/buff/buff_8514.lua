slot2.trigger = {
	"onStack",
	"onUpdate"
}
slot5.box = {
	4,
	6,
	9
}
slot5.offset = {
	1.02,
	0,
	1.22
}
slot4[1] = {}
slot3.cld_list = {}

function slot3.centerPosFun(slot0)
	slot1 = slot0 * 3

	return Vector3(math.sin(slot1) * 2.5, 0.75, math.cos(slot1) * 3.5)
end

function slot3.rotationFun(slot0)
	return Vector3(0, slot0 * ys.Battle.BattleConfig.SHIELD_ROTATE_CONST + 90, 0)
end

slot2.arg_list = {
	effect = "shield02",
	count = 10,
	do_when_hit = "intercept",
	bulletType = 1
}
slot1[1] = {
	id = 1,
	type = "BattleBuffShieldWall"
}
slot2.trigger = {
	"onStack",
	"onUpdate"
}
slot5.box = {
	4,
	6,
	9
}
slot5.offset = {
	1.02,
	0,
	1.22
}
slot4[1] = {}
slot3.cld_list = {}

function slot3.centerPosFun(slot0)
	slot1 = slot0 * 3 + ys.Battle.BattleConfig.SHIELD_CENTER_CONST

	return Vector3(math.sin(slot1) * 2.5, 0.75, math.cos(slot1) * 3.5)
end

function slot3.rotationFun(slot0)
	return Vector3(0, slot0 * ys.Battle.BattleConfig.SHIELD_ROTATE_CONST - 90, 0)
end

slot2.arg_list = {
	effect = "shield02",
	count = 10,
	do_when_hit = "intercept",
	bulletType = 1
}
slot1[2] = {
	id = 2,
	type = "BattleBuffShieldWall"
}
slot0.effect_list = {}

return {
	time = 0,
	name = "潘多拉的魔盒",
	init_effect = "",
	picture = "",
	desc = "潘多拉的魔盒",
	stack = 1,
	id = 8514,
	icon = 8514,
	last_effect = ""
}
