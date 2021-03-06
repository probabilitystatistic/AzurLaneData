pg = pg or {}
pg.shake_template = {
	[0] = {
		description = "无震动",
		priority = 0,
		time = 0,
		vibration_H = 0,
		bounce = false,
		loop = 0,
		friction_const_H = 0,
		friction_coefficient_H = 0,
		id = 0,
		vibration_V = 0,
		friction_const_V = 0,
		friction_coefficient_V = 0
	},
	[103] = {
		description = "水平微弱震动",
		priority = 0,
		time = 2.5,
		vibration_H = 30,
		bounce = false,
		loop = 3,
		friction_const_H = 0,
		friction_coefficient_H = 0.93,
		id = 103,
		vibration_V = 0,
		friction_const_V = 0,
		friction_coefficient_V = 0
	},
	[109] = {
		description = "水平强烈震动",
		priority = 0,
		time = 3,
		vibration_H = 100,
		bounce = false,
		loop = 2,
		friction_const_H = 0,
		friction_coefficient_H = 0.98,
		id = 109,
		vibration_V = 0,
		friction_const_V = 0,
		friction_coefficient_V = 0
	},
	[203] = {
		description = "垂直微弱震动",
		priority = 0,
		time = 2.5,
		vibration_H = 0,
		bounce = false,
		loop = 3,
		friction_const_H = 0,
		friction_coefficient_H = 0,
		id = 203,
		vibration_V = 30,
		friction_const_V = 0,
		friction_coefficient_V = 0.93
	},
	[209] = {
		description = "垂直剧烈震动",
		priority = 0,
		time = 3,
		vibration_H = 0,
		bounce = false,
		loop = 2,
		friction_const_H = 0,
		friction_coefficient_H = 0,
		id = 209,
		vibration_V = 100,
		friction_const_V = 0,
		friction_coefficient_V = 0.98
	},
	[301] = {
		description = "玩家被击中",
		priority = 0,
		time = 2,
		vibration_H = 0.5,
		bounce = false,
		loop = 2,
		friction_const_H = 0,
		friction_coefficient_H = 0.7,
		id = 301,
		vibration_V = 0,
		friction_const_V = 0,
		friction_coefficient_V = 0
	},
	[302] = {
		description = "大炮后坐力",
		priority = 0,
		time = 2,
		vibration_H = -1,
		bounce = false,
		loop = 3,
		friction_const_H = 0,
		friction_coefficient_H = 0.6,
		id = 302,
		vibration_V = 0,
		friction_const_V = 0,
		friction_coefficient_V = 0
	},
	[303] = {
		description = "机枪后坐力",
		priority = 0,
		time = 10,
		vibration_H = 20,
		bounce = false,
		loop = 7,
		friction_const_H = 0,
		friction_coefficient_H = -1,
		id = 303,
		vibration_V = 0,
		friction_const_V = 0,
		friction_coefficient_V = 0
	},
	[999] = {
		description = "测试地震效果",
		priority = 9,
		time = 3,
		vibration_H = 0.04,
		bounce = true,
		loop = 0,
		friction_const_H = 0,
		friction_coefficient_H = 1,
		id = 999,
		vibration_V = 0.007,
		friction_const_V = 0.0005,
		friction_coefficient_V = 1
	},
	all = {
		0,
		103,
		109,
		203,
		209,
		301,
		302,
		303,
		999
	}
}
