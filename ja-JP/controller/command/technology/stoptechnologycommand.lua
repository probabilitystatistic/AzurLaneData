slot0 = class("StopTechnologyCommand", pm.SimpleCommand)

function slot0.execute(slot0, slot1)
	slot2 = slot1:getBody()
	slot4 = slot2.pool_id

	if not getProxy(TechnologyProxy):getTechnologyById(slot2.id) then
		return
	end

	if not slot6:isStarting() then
		print("the technology is not active")

		return
	end

	slot10.tech_id = slot3
	slot10.refresh_id = slot4

	pg.ConnectionMgr.GetInstance():Send(63005, {}, 63006, function (slot0)
		if slot0.result == 0 then
			uv0:reset()

			if uv0:hasCondition() then
				slot1 = uv0

				if slot1:getTaskId() then
					getProxy(TaskProxy):removeTaskById(slot1)
				end
			end

			uv1:updateTechnology(uv0)
			uv2:sendNotification(GAME.STOP_TECHNOLOGY_DONE)
		else
			pg.TipsMgr.GetInstance():ShowTips(i18n("blueprint_stop_erro") .. slot0.result)
		end
	end)
end

return slot0
