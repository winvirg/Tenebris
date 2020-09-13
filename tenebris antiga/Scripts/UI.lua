
ScreenUI.hpBarVisible  = false
ScreenUI.mpBarVisible  = false
ScreenUI.expBarVisible  = false
ScreenUI.levelVisible = false

HPMP = Image("Pictures/HPMP.png", Rect(2, Client.height-477, 207, 41))
HUD = Image("Pictures/HUD.png", Rect(0, Client.height-32, 1200, 32))
BAR_HP = Image("Pictures/BAR_HP.png", Rect(45, Client.height-471, 149, 10))
BAR_MP = Image("Pictures/BAR_MP.png", Rect(45, Client.height-455, 148, 10))
BAR_EXP = Image("Pictures/BAR_EXP.png", Rect(178, Client.height-50, 520, 5))

LVTextOut1 = Text()
LVTextOut1.rect = Rect(9, Client.height-44+17, 140, 31)
LVTextOut1.textSize = 18
LVTextOut2 = Text()
LVTextOut2.rect = Rect(9, Client.height-44+19, 140, 31)
LVTextOut2.textSize = 18
LVTextOut3 = Text()
LVTextOut3.rect = Rect(11, Client.height-44+17, 140, 31)
LVTextOut3.textSize = 18
LVTextOut4 = Text()
LVTextOut4.rect = Rect(11, Client.height-44+19, 140, 31)
LVTextOut4.textSize = 18
LVText = Text()
LVText.rect = Rect(10, Client.height-44+18, 140, 31)
LVText.textSize = 18

-- Numeral HP/MP

hptxt = Text("",Rect(90, -2, 100, 30))
hptxt.textSize = 11
mptxt = Text("",Rect(90, 14, 100, 30))
mptxt.textSize = 11
xptxt = Text("",Rect(85, 455, 100, 30))
xptxt.textSize = 14

hptxt.showOnTop = true
mptxt.showOnTop = true
xptxt.showOnTop = true


function refreshUI()

	ScreenUI.hpBarVisible  = false
	ScreenUI.mpBarVisible  = false
	ScreenUI.expBarVisible  = false
	ScreenUI.levelVisible = false
	
	hptxt.text = "<color=black>"..Client.myPlayerUnit.hp.." / "..Client.myPlayerUnit.maxHP.."</color>"
	mptxt.text = "<color=black>"..Client.myPlayerUnit.mp.." / "..Client.myPlayerUnit.maxMP.."</color>"
	xptxt.text = "<color=black>"..math.floor(Client.myPlayerUnit.exp / Client.myPlayerUnit.maxEXP * 100).."%</color>"
	
	LVText.text = "LV."..Client.myPlayerUnit.level
	LVTextOut1.text = "<color=black>LV."..Client.myPlayerUnit.level.."</color>"
	LVTextOut2.text = "<color=black>LV."..Client.myPlayerUnit.level.."</color>"
	LVTextOut3.text = "<color=black>LV."..Client.myPlayerUnit.level.."</color>"
	LVTextOut4.text = "<color=black>LV."..Client.myPlayerUnit.level.."</color>"

	BAR_HP.DOScale(Point(Client.myPlayerUnit.hp/Client.myPlayerUnit.maxHP, 1), 0.5)
	BAR_MP.DOScale(Point(Client.myPlayerUnit.mp/Client.myPlayerUnit.maxMP, 1), 0.5)
	BAR_EXP.DOScale(Point(Client.myPlayerUnit.exp/Client.myPlayerUnit.maxEXP, 1), 0.5)
end

Client.onTick.Add(refreshUI,1)