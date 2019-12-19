pg = pg or {}
pg.open_systems_limited = {
	{
		scene = "MAINUI",
		name = "後宅",
		story_id = "SYG001",
		id = 1,
		mediator = "BackYardMediator",
		level = 8
	},
	{
		scene = "MAINUI",
		name = "每日副本",
		story_id = "",
		id = 2,
		mediator = "DailyLevelMediator",
		level = 10
	},
	{
		scene = "MAINUI",
		name = "大艦隊",
		story_id = "SYG002",
		id = 3,
		mediator = "NewGuildMediator",
		level = 11
	},
	{
		scene = "MAINUI",
		name = "軍事委託",
		story_id = "SYG003",
		id = 4,
		mediator = "EventMediator",
		level = 12
	},
	{
		scene = "MAINUI",
		name = "軍事演習",
		story_id = "SYG004",
		id = 5,
		mediator = "MilitaryExerciseMediator",
		level = 15
	},
	{
		scene = "MAINUI",
		name = "排行榜",
		story_id = "SYG005",
		id = 6,
		mediator = "BillboardMediator",
		level = 16
	},
	{
		scene = "MAINUI",
		name = "模擬戰",
		story_id = "",
		id = 7,
		mediator = "ShamPreCombatMediator",
		level = 10
	},
	{
		scene = "MAINUI",
		name = "核心兌換",
		story_id = "",
		id = 8,
		mediator = "ShamShop",
		level = 10
	},
	{
		scene = "MAINUI",
		name = "大講堂",
		story_id = "",
		id = 9,
		mediator = "ClassMediator",
		level = 50
	},
	{
		scene = "MAINUI",
		name = "開發船塢",
		story_id = "",
		id = 10,
		mediator = "ShipBluePrintMediator",
		level = 30
	},
	{
		scene = "MAINUI",
		name = "軍部科研室",
		story_id = "",
		id = 11,
		mediator = "TechnologyMediator",
		level = 30
	},
	{
		scene = "MAINUI",
		name = "商路護航",
		story_id = "",
		id = 12,
		mediator = "Escort",
		level = 30
	},
	[14] = {
		scene = "MAINUI",
		name = "指揮喵",
		story_id = "",
		id = 14,
		mediator = "CommandRoomMediator",
		level = 40
	},
	[15] = {
		scene = "MAINUI",
		name = "限界挑戰",
		story_id = "",
		id = 15,
		mediator = "ChallengeMainMediator",
		level = 80
	},
	[16] = {
		scene = "MAINUI",
		name = "原型商店",
		story_id = "",
		id = 16,
		mediator = "FragmentShop",
		level = 30
	},
	all = {
		1,
		2,
		3,
		4,
		5,
		6,
		7,
		8,
		9,
		10,
		11,
		12,
		14,
		15,
		16
	}
}

return
