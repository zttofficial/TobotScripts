check=1

shyCastle = {}
shyCastle.chname = "Sky Castle" --instance name--
shyCastle.donum = 15 --instance times--
shyCastle.buffname = nil --BUFF name, value is nil stands for no Buff requirements--
shyCastle.targetthingname = nil --Aim item name, value is nil stands for no item needed to be counted--
shyCastle.warning = nil --Hint, value is nil stands for no hint--
shyCastle.version = "1.0.0.06241" --version number--

local function isInMap()
	if getmapid() == 93100.0
	or getmapid() == 93101.0
	or getmapid() == 93102.0
	or getmapid() == 93103.0 then
		return true
	end
	return false
end

local function planeToEntry()
	if getmapid() ~= 93002.0 then
		plane(745)
		wait_loadmap()
	end
end

local function isNumEnd()
	if indun_get(745) == shyCastle.donum
		and not isInMap() then
		return true
	end

	return false
end

local targetthingnum = 0

local function intTargetThingNum()
	if shyCastle.targetthingname then
		targetthingnum = item_if(shyCastle.targetthingname)
	end
end

local function printTargetThingNum()
	if shyCastle.targetthingname then
		printgame(0,255,255,"Now ["..shyCastle.targetthingname.."] number:" ..item_if(shyCastle.targetthingname))
		printgame(0,255,255,"Instance["..shyCastle.targetthingname.."] number:" ..(item_if(shyCastle.targetthingname) - targetthingnum))
	end
end

function shyCastle.begin()
	bot_stop()--Stop auto play--

	printgame(0,255,255,"This is a fully automatic script ["..shyCastle.chname.."] "..shyCastle.donum.." times. Load in any places. If you press wrong, you have 5 seconds to stop loading.")
	local printtime = 2000
	sleep(30)
	printtime = printtime - 30
	if shyCastle.warning then
		printgame(255,255,0,"Hint: "..shyCastle.warning)
		sleep(30)
		printtime = printtime - 30
	end
	printgame(0,255,255,"Version: "..shyCastle.version)
	sleep(30)
	printtime = printtime - 30
	sleep(printtime)
	maketeam()
	sleep(3000)

	if not isInMap() then
		planeToEntry()
	end

	ini_change("tobot_scriptbot",1)--Start--

	intTargetThingNum()

	while(true)
	do
		sleep(30)
		mapid_now = getmapid()
		if mapid_now ~= mapid_last then--Avoid system down--
			mapid_last = mapid_now
			if getmapid() == 93002.0 then
				bot_stop()--Stop--
				if isNumEnd() then
					ini_change("tobot_scriptbot", 0)--Stop auto play--
					ini_change("ban_hit_mob",0)--Allow attack--
					sleep(1000)
					printgame(0,255,255,"["..shyCastle.chname.."] have been done " ..shyCastle.donum.." times, end.")
					return
				end
				script_txt_loaddata("D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C3939362E352C313437312E30382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C323139372E37312C313437312E30382CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313634322E36312C313437312E30382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C", 1)
				bot_start()--Start auto play--
			end

			if getmapid() == 93100.0 then --Entry instance--
				bot_stop()--Stop auto play--
				ini_change("ban_hit_mob",0)--Allow attack--
				script_txt_loaddata("D6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C333136372C313438372CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C313438372CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C", 1)
				bot_start()--Start auto play--
				while(true)
				do
					sleep(30)
					if getmapid() ~= 93100.0 then
						break
					end

					if door_if(1568,1487) == 1 then
						bot_stop()--Stop auto play--
						ini_change("ban_hit_mob",1)--Not allow attack--
						script_txt_loaddata("D6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C333136372C313438372CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C313438372CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313536382C313438372CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C", 0)
						bot_start()--Start auto play--
						break
					end
				end
			end

			if getmapid() == 93101.0 then --Entry instance--
				bot_stop()--Stop auto play--
				ini_change("ban_hit_mob",0)--Allow attack--
				script_txt_loaddata("D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C3935392CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313536372C3935392CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C", 2)
				bot_start()--Start auto play--
				while(true)
				do
					sleep(30)
					if getmapid() ~= 93101.0 then
						break
					end

					if door_if(840,959) == 1 then
						bot_stop()--Stop auto play--
						-- ini_change("ban_hit_mob",1)--Not allow attack--
						sleep(2000)
						script_txt_loaddata("D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C3935392CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313536372C3935392CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3834302C3935392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C", 0)
						bot_start()--Start auto play--
						break
					end
				end
			end

			if getmapid() == 93102.0 then --Entry instance--
				bot_stop()--Stop auto play--
				ini_change("ban_hit_mob",0)--Allow attack--
				script_txt_loaddata("D6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C333136372C313438372CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C313438372CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C", 1)
				bot_start()--Start auto play--
				while(true)
				do
					sleep(30)
					if getmapid() ~= 93102.0 then
						break
					end

					if door_if(1624,1487) == 1 then
						bot_stop()--Stop auto play--
						ini_change("ban_hit_mob",1)--Not allow attack--
						script_txt_loaddata("D6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C333136372C313438372CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C313438372CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313632342C313438372CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C", 0)
						bot_start()--Start auto play--
						break
					end
				end
			end

			if getmapid() == 93103.0 then --Entry instance--
				bot_stop()--Stop auto play--
				ini_change("ban_hit_mob",0)--Allow attack--
				script_txt_loaddata("D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C3935392CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313536372C3935392CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C", 2)
				bot_start()--Start auto play--
				while(true)
				do
					sleep(30)
					if getmapid() ~= 93103.0 then
						break
					end

					if door_if(797,959) == 1 then
						bot_stop()--Stop auto play--
						-- ini_change("ban_hit_mob",1)--Not allow attack--
						sleep(2000)
						script_txt_loaddata("D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C3935392CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313536372C3935392CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3739372C3935392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C", 0)
						bot_start()--Start auto play--
						break
					end
				end
			end
		end
	end
end

shyCastle.begin()

return shyCastle
