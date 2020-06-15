check=1

StarCliff = {}
maketeam()

local function isInMap()
	if getmapid() == 20805
	or getmapid() == 20903
	or getmapid() == 21000
	or getmapid() == 20901
	or getmapid() == 20902 then
		return true
	end
	return false
end

local function isbuffEnd()
	if isbuff("Ëþ·ÆµÄÊØ»¤") == 0 then --check buff--
		return true
	end
	return false
end

function StarCliff.begin()
	bot_stop()--Stop auto play--

	printgame(0,255,0,"This Lua is fully automatic [Star Cliff] loaded 20 times on any map, if you press the wrong button, you have 5 seconds to stop loading")
	sleep(5000)

	if (isbuff("Ëþ·ÆµÄÊØ»¤") == 0 )then
		bot_stop()--Stop auto play--
		printgame(0,255,0,"To get [Ëþ·ÆµÄÊØ»¤] BUFF")
		plane(125)--Teleport to Star Cradle Entrance--
		while(true)--Judging the end of transmission
		do
			sleep(500)
			if door_if(210,784)==1 then
				break
			end
		end
		while(isbuff("Ëþ·ÆµÄÊØ»¤") == 0)--check buff
		do	
			mapid_now = getmapid()
			if mapid_now ~= mapid_last then--avoid system down--
				mapid_last = mapid_now
				if getmapid() == 21001 then
					script_txt_loaddata("D6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323137352C3738342E30382CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3632362E33322C3738342E30382CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3231312E3535392C3738342E30382CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C", 0)
					bot_start()--Start auto play
				end
				
				if(getmapid() == 21000 ) then
					bot_stop()--Stop auto play--
					open_npc(1288)--Open NPC--
					if(request_task(1288,430211003)==-1) then
						printgame(0,255,0,"Today, the time of the cliff of stars has been finished. Continue tomorrow.~£¡~£¡")
						bot_stop()--Stop auto play--
						return
					end
					sleep(500)
					submit_task(1288,430211003)
					close_npc(1288)
					sleep(1000)
					script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323935362C3936302CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323632342E31392C3936302E38322CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C333136372C3936302E38322CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C", 0)
					plane(124)
				end
			end
			sleep(200)
		end
	elseif(isbuff("Ëþ·ÆµÄÊØ»¤") == 1 )then
		if not isInMap() then
			plane(124)
		end
	end
	
	bot_start()--Start auto play--
	
	while(true)
	do
		sleep(100)
		mapid_now = getmapid()
		if mapid_now ~= mapid_last then--Avoid system down--
			mapid_last = mapid_now
					
			if(getmapid() == 20805 ) then
				if(indun_get("ÐÇÖ®ÇÍ±Ú")==20.0) then --times--
					printgame(0,255,0,"End")
					bot_stop()--Stop auto play--
					return
				end
				script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323935362C3936302CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323632342E31392C3936302E38322CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C333136372C3936302E38322CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C", 0)
				--2956.960 get into portal--
			end
			
			if(getmapid() == 20903 ) then
				script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3131342C3339392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C", 0)
				--144.399 get into portal---
			end
			
			if(getmapid() == 20901 ) then
				script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3634372C3834382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C", 0)
				--647.848 get into portal---
			end
			
			if(getmapid() == 20902 ) then
				script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C37312C3738332CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C", 0)
				--71.783 get into portal---
			end
		end
	end
end

StarCliff.begin()

return StarCliff