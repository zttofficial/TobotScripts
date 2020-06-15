check=1

tiankongzhicheng = {}
tiankongzhicheng.chname = "天空之城" --副本名称--
tiankongzhicheng.donum = 5 --副本次数--
tiankongzhicheng.buffname = nil --BUFF名称，为nil表示没有BUFF要求----
tiankongzhicheng.targetthingname = nil --目标道具名称，为nil表示没有需要计数的道具--
tiankongzhicheng.warning = nil --提示，为nil表示没有提示--
tiankongzhicheng.version = "1.0.0.06241" --版本号--

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
	if indun_get(tiankongzhicheng.chname) == tiankongzhicheng.donum 
		and not isInMap() then 
		return true
	end
	
	return false
end

local targetthingnum = 0

local function intTargetThingNum()
	if tiankongzhicheng.targetthingname then
		targetthingnum = item_if(tiankongzhicheng.targetthingname)
	end
end

local function printTargetThingNum()
	if tiankongzhicheng.targetthingname then
		printgame(0,255,255,"当前["..tiankongzhicheng.targetthingname.."]数量："..item_if(tiankongzhicheng.targetthingname))
		printgame(0,255,255,"副本内获取["..tiankongzhicheng.targetthingname.."]数："..(item_if(tiankongzhicheng.targetthingname) - targetthingnum))
	end
end

function tiankongzhicheng.begin()
	bot_stop()--停止挂机--

	printgame(0,255,255,"此Lua为全自动["..tiankongzhicheng.chname.."]"..tiankongzhicheng.donum.."次 在任意地图载入启动 若按错 你有5秒时间停止载入")
	local printtime = 2000
	sleep(30)
	printtime = printtime - 30
	if tiankongzhicheng.warning then
		printgame(255,255,0,"提示："..tiankongzhicheng.warning)
		sleep(30)
		printtime = printtime - 30
	end
	printgame(0,255,255,"Version: "..tiankongzhicheng.version)
	sleep(30)
	printtime = printtime - 30
	printgame(0,255,255,"Code by Tom")
	sleep(30)
	printtime = printtime - 30
	printgame(0,255,255,"联系方式：QQ644540771")
	sleep(printtime)
	maketeam()
	sleep(3000)
	
	if not isInMap() then
		planeToEntry()
	end
	
	ini_change("tobot_scriptbot",1)--启动脚本挂机--

	intTargetThingNum()

	while(true)
	do
		sleep(30)	
		mapid_now = getmapid()
		if mapid_now ~= mapid_last then--防止加载地图崩溃--
			mapid_last = mapid_now
			if getmapid() == 93002.0 then
				bot_stop()--停止挂机--
				if isNumEnd() then
					ini_change("tobot_scriptbot", 0)--停止脚本挂机--
					ini_change("ban_hit_mob",0)--允许攻击--
					sleep(1000)
					printgame(0,255,255,"["..tiankongzhicheng.chname.."]已刷完"..tiankongzhicheng.donum.."次，此Lua执行完毕")
					return
				end
				script_txt_loaddata("D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C3939362E352C313437312E30382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C323139372E37312C313437312E30382CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313634322E36312C313437312E30382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C", 1)
				bot_start()--启动挂机--
			end

			if getmapid() == 93100.0 then --进入副本--
				bot_stop()--停止挂机--
				ini_change("ban_hit_mob",0)--允许攻击--
				script_txt_loaddata("D6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C333136372C313438372CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C313438372CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C", 1)
				bot_start()--启动挂机--
				while(true)
				do
					sleep(30)
					if getmapid() ~= 93100.0 then
						break
					end
					
					if door_if(1568,1487) == 1 then
						bot_stop()--停止挂机--
						ini_change("ban_hit_mob",1)--禁止攻击--
						script_txt_loaddata("D6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C333136372C313438372CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C313438372CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313536382C313438372CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C", 0)
						bot_start()--启动挂机--
						break
					end
				end
			end
			
			if getmapid() == 93101.0 then --进入副本--
				bot_stop()--停止挂机--
				ini_change("ban_hit_mob",0)--允许攻击--
				script_txt_loaddata("D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C3935392CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313536372C3935392CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C", 2)
				bot_start()--启动挂机--
				while(true)
				do
					sleep(30)
					if getmapid() ~= 93101.0 then
						break
					end
					
					if door_if(840,959) == 1 then
						bot_stop()--停止挂机--
						-- ini_change("ban_hit_mob",1)--禁止攻击--
						sleep(2000)
						script_txt_loaddata("D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C3935392CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313536372C3935392CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3834302C3935392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C", 0)
						bot_start()--启动挂机--
						break
					end
				end
			end
			
			if getmapid() == 93102.0 then --进入副本--
				bot_stop()--停止挂机--
				ini_change("ban_hit_mob",0)--允许攻击--
				script_txt_loaddata("D6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C333136372C313438372CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C313438372CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C", 1)
				bot_start()--启动挂机--
				while(true)
				do
					sleep(30)
					if getmapid() ~= 93102.0 then
						break
					end
					
					if door_if(1624,1487) == 1 then
						bot_stop()--停止挂机--
						ini_change("ban_hit_mob",1)--禁止攻击--
						script_txt_loaddata("D6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C333136372C313438372CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C313438372CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313632342C313438372CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C", 0)
						bot_start()--启动挂机--
						break
					end
				end
			end
			
			if getmapid() == 93103.0 then --进入副本--
				bot_stop()--停止挂机--
				ini_change("ban_hit_mob",0)--允许攻击--
				script_txt_loaddata("D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C3935392CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313536372C3935392CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C", 2)
				bot_start()--启动挂机--
				while(true)
				do
					sleep(30)
					if getmapid() ~= 93103.0 then
						break
					end
					
					if door_if(797,959) == 1 then
						bot_stop()--停止挂机--
						-- ini_change("ban_hit_mob",1)--禁止攻击--
						sleep(2000)
						script_txt_loaddata("D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C3935392CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313536372C3935392CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3739372C3935392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C", 0)
						bot_start()--启动挂机--
						break
					end
				end
			end
		end
	end
end

tiankongzhicheng.begin()

return tiankongzhicheng