Client.GetTopic("업데이트").Add(function(Notice) -- 서버에게서 업데이트라는 신호를 받았을 때
	
	-- 업데이트 Notice 시작
	if Notice == "업데이트" then
		NoticeNotice = Text("<color=#00FFFF>Notice</color>", Rect(0, Client.height / 2.4, Client.width, Client.height))
		NoticeUpdate = Text("<color=#00FFFF>After a while, Tenebris will reboot for the update.</color>", Rect(0, Client.height / 2, Client.width, Client.height))
		NoticeImage = Image("Pictures/DarkOnline.jpg", Rect(0, 0, Client.width, Client.height))
		NoticeExit = Button("<color=#00FFFF>Confirm</color>", Rect(Client.width / 2.2, Client.height / 1.3, 100, 50))

		NoticeExit.color = Color(255, 100, 100, 255)
	
		NoticeUpdate.textSize = 20
		NoticeUpdate.textAlign = 1
		NoticeNotice.textSize = 30
		NoticeNotice.textAlign = 1
	
		NoticeImage.showOnTop = true
		NoticeNotice.showOnTop = true
		NoticeUpdate.showOnTop = true
		NoticeExit.showOnTop = true
	
		NoticeExit.onClick.Add(function()
			NoticeImage.Destroy()
			NoticeNotice.Destroy()
			NoticeUpdate.Destroy()
			NoticeExit.Destroy()
		end)
	
	end
	-- 업데이트 Notice 끝
		
end)