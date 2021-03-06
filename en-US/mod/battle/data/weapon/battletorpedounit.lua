ys = ys or {}
slot0 = ys
slot0.Battle.BattleTorpedoUnit = class("BattleTorpedoUnit", slot0.Battle.BattleWeaponUnit)
slot0.Battle.BattleTorpedoUnit.__name = "BattleTorpedoUnit"

function slot0.Battle.BattleTorpedoUnit.Ctor(slot0)
	uv0.Battle.BattleTorpedoUnit.super.Ctor(slot0)
end

function slot0.Battle.BattleTorpedoUnit.DoAttack(slot0, slot1)
	uv0.Battle.BattleTorpedoUnit.super.DoAttack(slot0, slot1)
end

function slot0.Battle.BattleTorpedoUnit.TriggerBuffOnFire(slot0)
	slot0._host:TriggerBuff(uv0.Battle.BattleConst.BuffEffectType.ON_TORPEDO_FIRE, {
		equipIndex = slot0._equipmentIndex
	})
end

function slot0.Battle.BattleTorpedoUnit.TriggerBuffWhenSpawn(slot0, slot1)
	slot2 = {
		_bullet = slot1,
		equipIndex = slot0._equipmentIndex
	}

	slot0._host:TriggerBuff(uv0.Battle.BattleConst.BuffEffectType.ON_BULLET_CREATE, slot2)
	slot0._host:TriggerBuff(uv0.Battle.BattleConst.BuffEffectType.ON_TORPEDO_BULLET_CREATE, slot2)
end
