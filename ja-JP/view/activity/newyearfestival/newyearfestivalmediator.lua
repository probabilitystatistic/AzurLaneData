slot0 = class("NewYearFestivalMediator", import("view.base.ContextMediator"))
slot0.MINI_GAME_OPERATOR = "MINI_GAME_OPERATOR"
slot0.GO_SCENE = "GO_SCENE"
slot0.GO_SUBLAYER = "GO_SUBLAYER"
slot0.MINIGAME_OPERATION = "MINIGAME_OPERATION"
slot0.ON_OPEN_PILE_SIGNED = "ON_OPEN_PILE_SIGNED"

function slot0.register(slot0)
	slot0:BindEvent()
end

function slot0.BindEvent(slot0)
	slot0:bind(uv0.ON_OPEN_PILE_SIGNED, function ()
		slot3.viewComponent = PileGameSignedLayer
		slot3.mediator = PileGameSignedMediator

		uv0:addSubLayers(Context.New({}))
	end)
	slot0:bind(uv0.MINI_GAME_OPERATOR, function (slot0, ...)
		uv0:sendNotification(GAME.SEND_MINI_GAME_OP, ...)
	end)
	slot0:bind(uv0.GO_SCENE, function (slot0, slot1, ...)
		uv0:sendNotification(GAME.GO_SCENE, slot1, ...)
	end)
	slot0:bind(uv0.GO_SUBLAYER, function (slot0, slot1, slot2)
		uv0:addSubLayers(slot1, nil, slot2)
	end)
	slot0:bind(uv0.MINIGAME_OPERATION, function (slot0, slot1, slot2, slot3)
		slot7.hubid = slot1
		slot7.cmd = slot2
		slot7.args1 = slot3

		uv0:sendNotification(GAME.SEND_MINI_GAME_OP, {})
	end)
end

function slot0.listNotificationInterests(slot0)
	slot1[1] = GAME.SEND_MINI_GAME_OP_DONE
	slot1[2] = ActivityProxy.ACTIVITY_UPDATED

	return {}
end

function slot0.handleNotification(slot0, slot1)
	if slot1:getName() == GAME.SEND_MINI_GAME_OP_DONE then
		slot4[1] = function (slot0)
			if #uv0.awards > 0 then
				uv1.viewComponent:emit(BaseUI.ON_ACHIEVE, slot1, slot0)
			else
				slot0()
			end
		end

		slot4[2] = function (slot0)
			uv0.viewComponent:UpdateView()
		end

		seriesAsync({})
		slot0:OnSendMiniGameOPDone(slot1:getBody())
	elseif slot2 == ActivityProxy.ACTIVITY_UPDATED then
		slot0.viewComponent:UpdateView()
	end
end

function slot0.OnSendMiniGameOPDone(slot0, slot1)
	slot2 = slot1.argList

	if slot2[1] == 3 and slot2[2] == 1 then
		slot0.viewComponent:UpdateView()
	end
end

return slot0
