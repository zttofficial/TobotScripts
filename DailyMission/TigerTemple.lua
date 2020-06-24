check=1

HulangTemple = {}
HulangTemple.chname = "Tiger Temple"
HulangTemple.donum = 3
HulangTemple.buffname = nil
HulangTemple.targetthingname = "Tiger Temple Ingot"
HulangTemple.warning = nil
HulangTemple.version = "1.1.0.06142"

local function isInMap()
	if getmapid() == 20600.0
	or getmapid() == 20601.0
	or getmapid() == 20602.0
	or getmapid() == 20603.0 then
		return true
	end
	return false
end

local function isNumEnd()
	if indun_get(123) == HulangTemple.donum
		and not isInMap() then
		return true
	end

	return false
end

local function planeToEntry()
	if getmapid() ~= 63404.0 then
		plane(123)
		wait_loadmap()
	end
end

local targetthingnum = 0

local function intTargetThingNum()
	if HulangTemple.targetthingname then
		targetthingnum = item_if(430311411)
	end
end

local function printTargetThingNum()
	if HulangTemple.targetthingname then
		printgame(0,255,255,"Now ["..HulangTemple.targetthingname.."] number: "..item_if(430311411))
		printgame(0,255,255,"Instance ["..HulangTemple.targetthingname.."] number: "..(item_if(430311411) - targetthingnum))
	end
end

function HulangTemple.begin()
	bot_stop()--Stop auto play--

	printgame(0,255,255,"This is a fully automatic script ["..HulangTemple.chname.."] "..HulangTemple.donum.." times. Load in any places. If you press wrong, you have 5 seconds to stop loading.")
	local printtime = 2000
	sleep(30)
	printtime = printtime - 30
	if HulangTemple.warning then
		printgame(255,255,0,"Hint: "..HulangTemple.warning)
		sleep(30)
		printtime = printtime - 30
	end
	printgame(0,255,255,"Version: "..HulangTemple.version)
	sleep(30)
	printtime = printtime - 30
	sleep(printtime)
	maketeam()
	sleep(3000)

	if isNumEnd() then
		printgame(0,255,255,"["..HulangTemple.chname.."] Already done "..HulangTemple.donum.." times,end")
		return
	end

	ini_change("tobot_scriptbot",1)--Start auto play--

	if HulangTemple.buffname then

	else
		if not isInMap() then
			planeToEntry()
		end
	end

	intTargetThingNum()

	while(true)
	do
		sleep(30)
		mapid_now = getmapid()
		if mapid_now ~= mapid_last then--avoid system down--
			mapid_last = mapid_now
			if getmapid() == 63404.0 then
				bot_stop()--Not allow auto play--
				if isNumEnd() then
					ini_change("tobot_scriptbot", 0)--Stop auto play--
					ini_change("ban_hit_mob",0)--Allow attack--
					sleep(1000)
					printgame(0,255,255,"["..HulangTemple.chname.."] Already done "..HulangTemple.donum.." times, end")
					sleep(30)
					printTargetThingNum()
					return
				end
				script_txt_loaddata("D6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C3939302E3134342C313032332E30382CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C3634372E3939382C313032332E30382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3833392E3234362C313032332E30382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C",1)
				bot_start()--Start auto play--
			end

			if getmapid() == 20600.0 then
				bot_stop()--Not allow auto play--
				ini_change("ban_hit_mob",1)--Not allow attack--
				script_txt_loaddata("D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C313435352E36342CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD3D2C5DCCAB12C313230392E36352C313333342E362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD3D2C5DCCAB12C333634332E32352C313334382E362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C363336372C313437312E37362CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C353732382E38382C313437312E37362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323439362E36332C313437312E30382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363231372E36342C313437312E34342CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C",2)
				bot_start()--Start auto play--
			end

			if getmapid() == 20601.0 then
				bot_stop()--Not allow auto play--
				ini_change("ban_hit_mob",1)--Not allow attack--
				script_txt_loaddata("D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C313435352E36342CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD3D2C5DCCAB12C3633302E3330392C313332312E39322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C313437312E32342CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C313838382E35342C313437312E33362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD3D2C5DCCAB12C343434352E38362C313334362E30382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C363131322E35322C313437312E33362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C363336372C313437312E33362CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363234392E30312C313437312E33362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C",2)
				bot_start()--Start auto play--
			end

			if getmapid() == 20602.0 then
				bot_stop()--Not allow auto play--
				ini_change("ban_hit_mob",1)--Not allow attack--
				script_txt_loaddata("D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C313432332E36382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD3D2C5DCCAB12C3430352C313330362E32382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313636322E30382C313236332E38382CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C313238352E30332C313236332E35362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C3538322E3133312C3839352E31362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323830392E36342C3839352E31362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C333136372C3839352E31362CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333039322E37312C3839352E31362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C333136372C3532372E32342CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323038392E372C3532372E32342CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C323434382E32332C3532372E3634312CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C",2)
				bot_start()--Start auto play--
			end

			if getmapid() == 20603.0 then
				bot_stop()--Not allow auto play--
				ini_change("ban_hit_mob",0)--Allow attack--
				script_txt_loaddata("D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C313032332E30382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313732372C313032332E30382CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C",2)
				bot_start()--Start auto play--
				while(true)
				do
					sleep(30)
					if getmapid() ~= 20603.0 then
						break
					end

					if door_if(1131,1023) == 1 then --Check whether leave entry--
						bot_stop()--Stop auto play--
						sleep(3000)
						planeToEntry()
						break
					end
				end
			end
		end
	end
end

HulangTemple.begin()

return HulangTemple