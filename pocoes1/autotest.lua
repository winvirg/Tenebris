skills = {}

function skills:attack01() -- função a ser ativada
    local me = Client.myPlayerUnit
	local target = nil
	local range = 32*15 -- distancia x.* y.
	local skillID = 1 -- id da skill
	target = Client.field.FindNearUnit(me.x, me.y, range, 2, me)

	if (target ~= nil) then
		local dist = (me.x - target.x)^2 + (me.y - target.y)^2
		if dist < range^2 then
			me.UseSkill(skillID, Point(target.x - me.x, target.y - me.y))
		end
	else
		me.UseSkill(skillID)
	end
end