check=1
sleep(100)
bigTube = {}

maketeam()


local function isInMap()
	if getmapid() == 8924.0 then
		return true
	end
	return false
end


local function isNumEnd()
	if indun_get(156) == 3.0 then
		return true
	end
	
	return false
end

function bigTube.begin()

	printgame(0,255,0,"This script will complete Big Tube 3 times. If you press wrong, you have 5s to stop it.")
	sleep(5000)

	
	if not isInMap() then
		plane(156) 
		sleep(2000)
	end

	while(true)
	do
		mapid_now = getmapid()
		if mapid_now ~= mapid_last then
			mapid_last = mapid_now
	
			if(getmapid()==8924.0)then 
				bot_stop()
				
				sleep(1000)
				open_npc(6076)
				if (task_get_state(134001021)==3) then
					submit_task(6076,134001021)
					sleep(100)
				end
			
				if (task_get_state(134001022)==3) then
					submit_task(6076,134001022)
					sleep(100)
				end
				
				if (task_get_state(134001023)==3) then
					submit_task(6076,134001023)
					sleep(100)
				end
				
				if (task_get_state(134001024)==3) then
					submit_task(6076,134001024)
					sleep(100)
				end
				
				if (task_get_state(134001025)==3) then
					submit_task(6076,134001025)
					sleep(100)
				end
				
				if (task_get_state(134001026)==3) then
					submit_task(6076,134001026)
					sleep(100)
				end
				
				if (task_get_state(134001027)==3) then
					submit_task(6076,134001027)
					sleep(100)
				end
				
				if (task_get_state(134001028)==3) then
					submit_task(6076,134001028)
					sleep(100)
				end
				
				if (task_get_state(134001029)==3) then
					submit_task(6076,134001029)
					sleep(100)
				end
				
				if (task_get_state(134001030)==3) then
					submit_task(6076,134001030)
					sleep(100)
				end
				
				if (task_get_state(134001031)==3) then
					submit_task(6076,134001031)
				end
				sleep(100)
				close_npc(6076)
				sleep(100)
				
				
				if isNumEnd() then
					printgame(0,255,0,"Done")
					return
				end
				sleep(1000)
				open_npc(6076)
				if (task_get_state(134001021)==0) then
				request_task(6076,134001021)
				sleep(100)
				end
				
				if (task_get_state(134001022)==0) then
				request_task(6076,134001022)
				sleep(100)
				end
				
				if (task_get_state(134001023)==0) then
				request_task(6076,134001023)
				sleep(100)
				end
				
				if (task_get_state(134001024)==0) then
				request_task(6076,134001024)
				sleep(100)
				end
				
				if (task_get_state(134001025)==0) then
				request_task(6076,134001025)
				sleep(100)
				end
				
				if (task_get_state(134001026)==0) then
				request_task(6076,134001026)
				sleep(100)
				end
				
				if (task_get_state(134001027)==0) then
				request_task(6076,134001027)
				sleep(100)
				end
				
				if (task_get_state(134001028)==0) then
				request_task(6076,134001028)
				sleep(100)
				end
				
				if (task_get_state(134001029)==0) then
				request_task(6076,134001029)
				sleep(100)
				end
				
				if (task_get_state(134001030)==0) then
				request_task(6076,134001030)
				sleep(100)
				end
				
				if (task_get_state(134001031)==0) then
				request_task(6076,134001031)
				end
				sleep(100)
				close_npc(6076)
				sleep(200)
				script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313137362C3730342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C", 2)		
				bot_start()
				sleep(100000)
				script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C343032342C3730342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313139312C3730342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C", 2)
			end	
		end
	end
end

bigTube.begin()

return bigTube