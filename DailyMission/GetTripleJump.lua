check=1

getTripleJump = {}

local function isInMap()
	if getmapid() == 63400
	or getmapid() == 92901
	or getmapid() == 93000 then
		return true
	end
	return false
end

local function isitem()
	if item_if("天使之泪")~=0 then --check necessary item--
		printgame(0,255,0,"Lack of necessary item [天使之泪] ")
		return true
	end
	
	return false
end

function getTripleJump.begin()
	bot_stop()
    sleep(5000)

	if not isitem() then
		return
	end
	
	
	
	if not isInMap() then
		plane(747)
		sleep(3000)
		script_txt_load("TripleJump.txt",2)
	end
	
	bot_start()
	
	while(true)
	do
		mapid_now = getmapid()
		if mapid_now ~= mapid_last then
			mapid_last = mapid_now
			if (getmapid() == 63400 or getmapid()==92901 )then
				script_txt_loaddata("TripleJump.txt",2)
			end

			if(getmapid()==93000)then
				bot_stop()
				sleep(3000)
				open_npc(700059)
				request_task(700059,5180015)
				sleep(1000)
				submit_task(700059,5180015)
				close_npc(700059)
				sleep(1000)
				item_wear("超级飞翔石(12小时)")
				printgame(0,255,0,"Already received [超级飞翔石(12小时)]")
				return
			end
		end
	end
end
getTripleJump.begin()

return getTripleJump