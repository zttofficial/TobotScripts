check=1

warehouse = {}
maketeam()
ini_change("tobot_scriptbot",1)
ini_change("tobot_script_x_distance",100)
bot_start()

local function isInMap()
	if getmapid()==58500
	or getmapid()==58501
	or getmapid()==58502
	or getmapid()==58503
	or getmapid()==58504
	or getmapid()==58505
	or getmapid()==28600  then
		return true
	end
	return false
end

local function isNumEnd()
	if indun_get(186) == 3.0 then 
		printgame(0,255,255,"No more chance.")
		return true
	end
	return false
end

function warehouse.begin()
	bot_stop()
    sleep(5000)

	if isNumEnd() then
		speak("END")
		bot_stop()
		return
	end

	
	if not isInMap() then
		plane(186)
	end
	
	while(true)
	do
		mapid_now = getmapid()
		if mapid_now ~= mapid_last then
			mapid_last = mapid_now
			if(getmapid()==28600)then
				plane(186)
				if isNumEnd() then
					sleep(2000)
					bot_stop()
					return
				end
				script_txt_loaddata("D6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3834302C313331322CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C323233392C313331322CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0AD7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C333039332C3637312CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C323731322C313331322CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C313534352C313331322CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3731302C3637312CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313131382C3635362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3735362C3637312CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C333038392C3637312CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD", 1)
				bot_start()
			end
			
			if(getmapid()==58500)then
				script_txt_load("Warehouse 1.txt",0)
			end
			
			if(getmapid()==58501)then
				script_txt_load("Warehouse 2.txt",0)
			end
				
			if(getmapid()==58502)then
				script_txt_load("Warehouse 3.txt",0)
			end
			
			if(getmapid()==58503)then
				script_txt_load("Warehouse 4.txt",0)
			end
			
			if(getmapid()==58504)then
				script_txt_load("Warehouse 5.txt",0)
			end
				
			if(getmapid()==58505)then
				script_txt_load("Warehouse 6.txt",0)
			end

		end
	end
end

warehouse.begin()

return warehouse


