slot0 = class("MapBuilder")
slot0.TYPENORMAL = 1
slot0.TYPEESCORT = 2
slot0.TYPESKIRMISH = 3
slot0.StateCtor = 1
slot0.StateLoading = 2
slot0.StateInit = 3
slot0.StateDestroy = 4
slot0.StateShow = 1
slot0.StateBlocked = 2

function slot0.Ctor(slot0, slot1, slot2)
	slot0.tfParent = slot1
	slot0.sceneParent = slot2
	slot0.map = slot1:Find("map")
	slot0.float = slot1:Find("float")
	slot0.state = uv0.StateCtor
	slot0.activeState = uv0.StateShow
	slot0.tweens = {}
	slot0.mapWidth = 1920
	slot0.mapHeight = 1440
end

function slot0.InvokeParent(slot0, slot1, ...)
	if slot0.sceneParent[slot1] then
		return slot2(slot0.sceneParent, ...)
	end
end

function slot0.GetUIName(slot0)
	return ""
end

function slot0.GetType(slot0)
end

function slot0.Load(slot0, slot1)
	PoolMgr.GetInstance():GetUI(slot0:GetUIName(), true, function (slot0)
		slot0.name = uv0:GetUIName()
		uv0.tf = tf(slot0)

		if uv0.state < uv1.StateInit then
			uv0:Init()
			uv2()
		else
			PoolMgr.GetInstance():ReturnUI(uv0:GetUIName(), slot0)
		end
	end)

	slot0.state = slot0.StateLoading
end

function slot0.Init(slot0)
	if uv0.StateDestroy <= slot0.state then
		return
	end

	slot0.tf:SetParent(slot0.float, false)
	slot0:OnInit()

	slot0.state = uv0.StateInit

	slot0.activeState == uv0.StateShow and slot0.Show or slot0.Hide(slot0)
end

function slot0.OnInit(slot0)
end

function slot0.Destroy(slot0)
	if uv0.StateDestroy <= slot0.state then
		return
	end

	if uv0.StateInit <= slot0.state then
		slot0:Hide()
		slot0:OnDestroy()

		slot0.tweens = nil

		PoolMgr.GetInstance():ReturnUI(slot0:GetUIName(), go(slot0.tf))
	end

	slot0.state = uv0.StateDestroy
end

function slot0.OnDestroy(slot0)
end

function slot0.Show(slot0)
	if uv0.StateDestroy <= slot0.state then
		return
	end

	if uv0.StateInit <= slot0.state then
		setActive(slot0.tf, true)
		slot0:OnShow()
	end

	slot0.activeState = uv0.StateShow
end

function slot0.OnShow(slot0)
end

function slot0.Hide(slot0)
	if uv0.StateDestroy <= slot0.state then
		return
	end

	if uv0.StateInit <= slot0.state then
		slot0:OnHide()

		for slot4, slot5 in pairs(slot0.tweens) do
			LeanTween.cancel(slot5)
		end

		slot0.tweens = {}

		setActive(slot0.tf, false)
	end

	slot0.activeState = uv0.StateBlocked
end

function slot0.OnHide(slot0)
end

function slot0.Update(slot0, slot1)
	slot0.data = slot1
end

function slot0.UpdateMapItems(slot0)
	slot0:Show()
end

function slot0.RecordTween(slot0, slot1, slot2)
	slot0.tweens[slot1] = slot2
end

function slot0.DeleteTween(slot0, slot1)
	if slot0.tweens[slot1] then
		LeanTween.cancel(slot2)

		slot0.tweens[slot1] = nil
	end
end

return slot0
