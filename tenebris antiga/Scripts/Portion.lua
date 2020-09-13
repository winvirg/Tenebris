H_portion = Button("", Rect(Client.width - 180,Client.height - 250, 34, 34))
H_portion.color = Color(250,250,250,100)
M_portion = Button("", Rect(Client.width - 90,Client.height - 250, 34, 34))
M_portion.color = Color(250,250,250,100)
H_change = Button("", Rect(Client.width - 180,Client.height - 275, 34, 20))
H_change.color = Color(255,255,255,150)
M_change = Button("", Rect(Client.width - 90,Client.height - 275, 34, 20))
M_change.color = Color(255,255,255,150)

H_img = Image("Icons/H1.png", Rect(0, 0, 34, 34))
M_img = Image("Icons/M1.png", Rect(0, 0, 34, 34))
H_changeImg = Image("Icons/change.png", Rect(0, 0, 34, 20))
M_changeImg = Image("Icons/change.png", Rect(0, 0, 34, 20))

H_portion.AddChild(H_img)
M_portion.AddChild(M_img)
H_change.AddChild(H_changeImg)
M_change.AddChild(M_changeImg)

--Drink HP Potion
H_portion.onClick.Add(function()
   Client.FireEvent("H_PORTION")
end)  

--Drink MP Potion
M_portion.onClick.Add(function()
    Client.FireEvent("M_PORTION")
end)  

--HP Potion Change Panel
H_change.onClick.Add(function()
	Client.FireEvent("H_change")
end)

Client.GetTopic("H_changeExit").Add(function(text)

		H_Cp.Destroy()
		H_portion1Pan.Destroy()
		H_img1Pan.Destroy()
		H_portion2Pan.Destroy()
		H_img2Pan.Destroy()
		H_portion3Pan.Destroy()
		H_img3Pan.Destroy()
		H_portion4Pan.Destroy()
		H_img4Pan.Destroy()
end)


Client.GetTopic("H_changeAdd").Add(function(text)

		H_Cp = Image("Pictures/changepan.png", Rect(Client.width/2 + 80 ,Client.height/2 - 150, 60, 250))

		H_portion1Pan = Button("", Rect(Client.width/2 + 93 ,Client.height/2 - 130, 34, 34))
		H_portion1Pan.color = Color(250,250,250,100)
		H_img1Pan = Image("Icons/H1.png", Rect(0,0, 34, 34))
		H_img1Pan.showOnTop = true
		H_portion1Pan.AddChild(H_img1Pan)
		
		H_portion2Pan = Button("", Rect(Client.width/2 + 93 ,Client.height/2 - 70, 34, 34))
		H_portion2Pan.color = Color(250,250,250,100)
		H_img2Pan = Image("Icons/H2.png", Rect(0,0, 34, 34))
		H_img2Pan.showOnTop = true
		H_portion2Pan.AddChild(H_img2Pan)

		H_portion3Pan = Button("", Rect(Client.width/2 + 93 ,Client.height/2 - 10, 34, 34))
		H_portion3Pan.color = Color(250,250,250,100)
		H_img3Pan = Image("Icons/H3.png", Rect(0,0, 34, 34))
		H_img3Pan.showOnTop = true
		H_portion3Pan.AddChild(H_img3Pan)

		H_portion4Pan = Button("", Rect(Client.width/2 + 93 ,Client.height/2 +50, 34, 34))
		H_portion4Pan.color = Color(250,250,250,100)
		H_img4Pan = Image("Icons/H4.png", Rect(0,0, 34, 34))
		H_img4Pan.showOnTop = true
		H_portion4Pan.AddChild(H_img4Pan)

--Selected HP Potion
H_portion1Pan.onClick.Add(function()
  Client.FireEvent("H_PORTION1")
end)  

H_portion2Pan.onClick.Add(function()
Client.FireEvent("H_PORTION2")
end)  

H_portion3Pan.onClick.Add(function()
Client.FireEvent("H_PORTION3")
end)  

H_portion4Pan.onClick.Add(function()
Client.FireEvent("H_PORTION4")
end)  
end)

--Selected HP Potion Button
Client.GetTopic("H_PORTION1").Add(function(text)

	H_img.Destroy()
	H_img = Image("Icons/H1.png", Rect(0, 0, 34, 34))
	H_portion.AddChild(H_img)
end)

Client.GetTopic("H_PORTION2").Add(function(text)

	H_img.Destroy()
	H_img = Image("Icons/H2.png", Rect(0, 0, 34, 34))
	H_portion.AddChild(H_img)
end)

Client.GetTopic("H_PORTION3").Add(function(text)

	H_img.Destroy()
	H_img = Image("Icons/H3.png", Rect(0, 0, 34, 34))
	H_portion.AddChild(H_img)
end)

Client.GetTopic("H_PORTION4").Add(function(text)

	H_img.Destroy()
	H_img = Image("Icons/H4.png", Rect(0, 0, 34, 34))
	H_portion.AddChild(H_img)
end)

--MP Potion Change Panel
M_change.onClick.Add(function()
	Client.FireEvent("M_change")
end)

Client.GetTopic("M_changeExit").Add(function(text)

		M_Cp.Destroy()
		M_portion1Pan.Destroy()
		M_img1Pan.Destroy()
		M_portion2Pan.Destroy()
		M_img2Pan.Destroy()
		M_portion3Pan.Destroy()
		M_img3Pan.Destroy()
		M_portion4Pan.Destroy()
		M_img4Pan.Destroy()
end)

Client.GetTopic("M_changeAdd").Add(function(text)

		M_Cp = Image("Pictures/changepan.png", Rect(Client.width/2 + 140 ,Client.height/2 - 150, 60, 250))

		M_portion1Pan = Button("", Rect(Client.width/2 + 153 ,Client.height/2 - 130, 34, 34))
		M_portion1Pan.color = Color(250,250,250,100)
		M_img1Pan = Image("Icons/M1.png", Rect(0,0, 34, 34))
		
		M_img1Pan.showOnTop = true
		M_portion1Pan.AddChild(M_img1Pan)

		M_portion2Pan = Button("", Rect(Client.width/2 + 153 ,Client.height/2 - 70, 34, 34))
		M_portion2Pan.color = Color(250,250,250,100)
		M_img2Pan = Image("Icons/M2.png", Rect(0,0, 34, 34))
	
		M_img2Pan.showOnTop = true
		M_portion2Pan.AddChild(M_img2Pan)

		M_portion3Pan = Button("", Rect(Client.width/2 + 153 ,Client.height/2 - 10, 34, 34))
		M_portion3Pan.color = Color(250,250,250,100)
		M_img3Pan = Image("Icons/M3.png", Rect(0,0, 34, 34))
	
		M_img3Pan.showOnTop = true
		M_portion3Pan.AddChild(M_img3Pan)

		M_portion4Pan = Button("", Rect(Client.width/2 + 153 ,Client.height/2 +50, 34, 34))
		M_portion4Pan.color = Color(250,250,250,100)
		M_img4Pan = Image("Icons/M4.png", Rect(0,0, 34, 34))
	
		M_img4Pan.showOnTop = true
		M_portion4Pan.AddChild(M_img4Pan)

--Selected MP Potion
M_portion1Pan.onClick.Add(function()
Client.FireEvent("M_PORTION1")
end)  

M_portion2Pan.onClick.Add(function()
Client.FireEvent("M_PORTION2")
end)  

M_portion3Pan.onClick.Add(function()
Client.FireEvent("M_PORTION3")
end)  

M_portion4Pan.onClick.Add(function()
Client.FireEvent("M_PORTION4")
end)  
end)

--Selected MP Potion Button
Client.GetTopic("M_PORTION1").Add(function(text)
	M_img.Destroy()
	M_img = Image("Icons/M1.png", Rect(0, 0, 34, 34))
	M_portion.AddChild(M_img)
end)

Client.GetTopic("M_PORTION2").Add(function(text)
	M_img.Destroy()
	M_img = Image("Icons/M2.png", Rect(0, 0, 34, 34))
	M_portion.AddChild(M_img)
end)

Client.GetTopic("M_PORTION3").Add(function(text)
	M_img.Destroy()
	M_img = Image("Icons/M3.png", Rect(0, 0, 34, 34))
	M_portion.AddChild(M_img)
end)

Client.GetTopic("M_PORTION4").Add(function(text)
	M_img.Destroy()
	M_img = Image("Icons/M4.png", Rect(0, 0, 34, 34))
	M_portion.AddChild(M_img)
end)