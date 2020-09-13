--Use HP Potion
Server.GetTopic("H_PORTION").Add(function(text)
		unit.StartGlobalEvent(288) 
end) 

--Use MP Potion
Server.GetTopic("M_PORTION").Add(function(text)
		unit.StartGlobalEvent(287) 
end) 

--HP Potion Change Panel
Server.GetTopic("H_change").Add(function(text)
   if unit.GetVar(285) == 1 then
      unit.SetVar(285, 0)
      unit.FireEvent("H_changeExit")

elseif unit.GetVar(285) == 0 then
      unit.SetVar(285, 1)
      unit.FireEvent("H_changeAdd")
   end
end) 

--MP Potion Change Panel
Server.GetTopic("M_change").Add(function(text) 
  if unit.GetVar(284) == 1 then
      unit.SetVar(284, 0)
      unit.FireEvent("M_changeExit")

  elseif unit.GetVar(284) == 0 then
      unit.SetVar(284, 1)
      unit.FireEvent("M_changeAdd")
   end
end) 

--Selected HP Potions
Server.GetTopic("H_PORTION1").Add(function(text)
		unit.SetVar(283, 0)
		unit.FireEvent("H_PORTION1")
end) 

Server.GetTopic("H_PORTION2").Add(function(text) 
        unit.SetVar(283, 1)
		unit.FireEvent("H_PORTION2")
end) 

Server.GetTopic("H_PORTION3").Add(function(text) 
		unit.SetVar(283, 2)
		unit.FireEvent("H_PORTION3")
end) 

Server.GetTopic("H_PORTION4").Add(function(text) 
		unit.SetVar(283, 3)
		unit.FireEvent("H_PORTION4")
end) 

--Selected MP Potions
Server.GetTopic("M_PORTION1").Add(function(text) 
		unit.SetVar(282, 0)
		unit.FireEvent("M_PORTION1")
end) 

Server.GetTopic("M_PORTION2").Add(function(text) 
		unit.SetVar(282, 1)
		unit.FireEvent("M_PORTION2")
end) 

Server.GetTopic("M_PORTION3").Add(function(text) 
		unit.SetVar(282, 2)
		unit.FireEvent("M_PORTION3")
end) 

Server.GetTopic("M_PORTION4").Add(function(text) 
		unit.SetVar(282, 3)
		unit.FireEvent("M_PORTION4")
end) 