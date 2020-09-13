skills = {001}

-- 범위에서 몹을 대상으로 가장 가까운 대상을 타겟으로 삼아 공격
    local me = Client.myPlayerUnit
    local target = nil

    local range = 249
    -- 내 위치로부터 238 범위가 사거리, 초과할 시 보는 방향으로 나감
    local skillID = 001
    -- 발사될 스킬 번호 1번


    target = Client.field.FindNearUnit(me.x, me.y, range, 2, me)

    if (target ~= nil) then
        local dist = (me.x - target.x)^2 + (me.y - target.y)^2
        if dist < range^2 then
            me.UseSkill(skillID, Point(target.x - me.x, target.y - me.y))
        end
    else
        me.UseSkill(001)
    end
end