slot0 = class("LevelRemasterView", import("..base.BaseSubView"))

function slot0.getUIName(slot0)
	return "LevelRemasterView"
end

function slot0.OnInit(slot0)
	slot0:InitUI()
	setActive(slot0._tf, true)
	pg.UIMgr.GetInstance():BlurPanel(slot0._tf)
end

function slot0.OnDestroy(slot0)
	slot0.onItem = nil
	slot0.onCancel = nil

	pg.UIMgr.GetInstance():UnblurPanel(slot0._tf, slot0._parentTF)
end

function slot0.setCBFunc(slot0, slot1, slot2)
	slot0.onItem = slot1
	slot0.onCancel = slot2
end

function slot0.InitUI(slot0)
	slot0.content = slot0:findTF("list/content")
	slot0.item = slot0.content:Find("item")
	slot0.numsTxt = slot0:findTF("nums/text")
	slot0.helpBtn = slot0:findTF("help")

	setActive(slot0.item, false)

	slot0.getRemasterTF = slot0:findTF("getBtn/state_before")
	slot0.gotRemasterTF = slot0:findTF("getBtn/state_after")
	slot0.exToggle = slot0:findTF("toggles/EX")
	slot0.spToggle = slot0:findTF("toggles/SP")
end

function slot0.set(slot0, slot1, slot2, slot3)
	slot0.templates = slot1
	slot0.tickets = slot2

	if not slot0.temp then
		slot0.temp = slot1
	end

	slot0:flush(slot3)
end

function slot0.flush(slot0, slot1)
	slot2 = pg.TimeMgr.GetInstance()
	slot3 = UIItemList.New(slot0.content, slot0.item)

	slot3:make(function (slot0, slot1, slot2)
		if slot0 == UIItemList.EventUpdate then
			setActive(slot2:Find("right"), slot1 % 2 == 0)
			setActive(slot2:Find("bg/icon"), false)
			setActive(slot2:Find("bg/lock"), false)
			setActive(slot2:Find("bg/wait"), false)
			setText(slot2:Find("bg/index"), slot1 + 1 < 10 and "0" .. slot1 + 1 or slot1 + 1)

			if not uv0.temp[slot1 + 1] then
				setActive(slot6, true)
				onButton(uv0, slot6, function ()
					pg.TipsMgr.GetInstance():ShowTips(i18n("levelScene_remaster_do_not_open"))
				end, SFX_PANEL)
			elseif uv1:GetServerTime() >= uv1:parseTimeFromConfig(slot3.time[2], true) then
				if uv1:parseTimeFromConfig(slot3.time[3], true) < uv1:GetServerTime() then
					setActive(slot5, true)
					onButton(uv0, slot5, function ()
						pg.TipsMgr.GetInstance():ShowTips(i18n("levelScene_remaster_do_not_open"))
					end, SFX_PANEL)
				else
					setActive(slot4, true)
					GetImageSpriteFromAtlasAsync("activitybanner/" .. slot3.bg, "", slot4)

					slot7 = pg.memory_group[slot3.memory_group]
					slot8 = #_.filter(slot7.memories, function (slot0)
						return pg.StoryMgr.GetInstance():IsPlayed(pg.memory_template[slot0].story)
					end) / #slot7.memories

					setSlider(slot4:Find("progress"), 0, 1, slot8)
					setText(slot4:Find("progress_text"), math.floor(slot8 * 100) .. "%")
					onButton(uv0, slot4, function ()
						uv0.onItem(uv1)
					end, SFX_PANEL)
				end
			end
		end
	end)
	slot3:align(math.ceil(#slot0.templates / 4) * 4)
	setText(slot0.numsTxt, slot0.tickets .. "/" .. pg.gameset.reactivity_ticket_max.key_value)
	onButton(slot0, slot0._tf, function ()
		uv0.onCancel()
	end, SFX_CANCEL)
	onButton(slot0, slot0.helpBtn, function ()
		slot2.type = MSGBOX_TYPE_HELP
		slot2.helps = i18n("levelScene_remaster_help_tip")

		pg.MsgboxMgr.GetInstance():ShowMsgBox({})
	end, SFX_PANEL)

	if getProxy(ChapterProxy).remasterDailyCount > 1 then
		SetActive(slot0.getRemasterTF, false)
		SetActive(slot0.gotRemasterTF, true)
	else
		SetActive(slot0.getRemasterTF, true)
		SetActive(slot0.gotRemasterTF, false)
		onButton(slot0, slot0.getRemasterTF, function ()
			if pg.gameset.reactivity_ticket_max.key_value < uv0.remasterTickets + pg.gameset.reactivity_ticket_daily.key_value then
				slot0.content = i18n("tack_tickets_max_warning", math.max(pg.gameset.reactivity_ticket_max.key_value - uv0.remasterTickets, 0))

				function slot0.onYes()
					uv0:emit(LevelMediator2.ON_CLICK_RECEIVE_REMASTER_TICKETS_BTN)
				end

				pg.MsgboxMgr.GetInstance():ShowMsgBox({})

				return
			end

			uv1:emit(LevelMediator2.ON_CLICK_RECEIVE_REMASTER_TICKETS_BTN)
		end, SFX_PANEL)
	end

	slot5[1] = slot0.exToggle
	slot5[2] = slot0.spToggle

	for slot9, slot10 in ipairs({}) do
		onToggle(slot0, slot10, function (slot0)
			if slot0 then
				uv0.temp = _.filter(uv0.templates, function (slot0)
					return slot0.activity_type == uv0
				end)

				uv2:align(math.max(math.ceil(#uv0.temp / 4), 4))
			end
		end, SFX_PANEL)
	end

	triggerToggle(slot5[slot1 or 1], true)
end

return slot0
