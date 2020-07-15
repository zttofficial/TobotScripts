check=1
sleep(100)
bridge = {}
timeold=gettime(3)+gettime(2)*60
timenow=gettime(3)+gettime(2)*60
maketeam()

local function isInMap()
	if getmapid() == 82900 
	or getmapid() == 82800 
	or getmapid() == 82801 
	or getmapid() == 82802
	or getmapid() == 82803	then
		return true
	end
	return false
end

local function isNumEnd()
	if indun_get(82800) == 15.0 then 
		return true
	end
	return false
end

function bridge.begin()

	sleep(5000)

	if not isInMap() then
		plane(82800) 
	end
	
	bot_start()
	
	while(true)
	do
if(((gettime(3)+gettime(2)*60)-timeold)>4) then
plane(82800)
timeold=gettime(3)+gettime(2)*60
sleep(100)
end
if(((gettime(3)+gettime(2)*60)-timenow)>50) then
return
end
		mapid_now = getmapid()
		if mapid_now ~= mapid_last then
			mapid_last = mapid_now
	
			if(getmapid()==82900)then
				bot_stop()
				while(door_if(3058,1567)~=1)
				do
					sleep(100)
				end
				
				if isNumEnd() then
					sleep(1050)
					return
				end
				
				if gety()~=1567 then
					plane(82800)
				end
				script_txt_loaddata("D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C313838322E38372C313534332E30382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333036382E31342C313536372E352CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C", 2)		
				bot_start()
			end	
			
			if getmapid()==82800 then
				script_txt_loaddata("C9CFCCF82CD3D2C5DCCAB12C323538302C3537352CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C323234382C3537352CD7F3C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C323032392C323335312CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C323032302C323335312CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C333038302C323331392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C333036302C323331392CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C313838302C313237392CB2BBB1E42C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C313235302C323335312CD7F3C5DC2C",0)
sleep(100)
timeold=gettime(3)+gettime(2)*60
			end
			
			if getmapid()==82801 then
				script_txt_loaddata("D3D2CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C3633322C323331392CD7F3C5DC2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C37332C3633392CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3537332C3233392CD3D2C5DC2C0D0AC9CFCCF82CD3D2C5DCCAB12C313133342C3633392CD3D2C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C323336372C323034382CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C323131312C323336372CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C323130302C323336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C333038342C3633392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C333035302C3633392CD3D2C5DC2C0D0AD3D2CCF82CD3D2C5DCCAB12C323333302C313533352CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C3835372C323336372CD7F3C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C313136382C3633392CD3D2C5DC2C0D0AD7F3CCF82CD7F3C5DCCAB12C36362C323331392CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3231372C313930372CD7F3C5DC2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C313135342C323336372CD7F3C5DC2C",0)
			end
			
			if getmapid()==82802 then
				script_txt_loaddata("C9CFCCF82CD3D2C5DCCAB12C323537332C3537352CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C323033392C323335312CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C323035302C323335312CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333035352C323331392CD3D2C5DC2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C313235342C323335312CB2BBB1E42C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C323235362C3537352CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C313838302C313237392CB2BBB1E42C",0)
			end
			
			if getmapid()==82803 then
				script_txt_loaddata("D7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C3930372C323336372CD7F3C5DC2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C3630312C323331392CD7F3C5DC2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C3639352C3633392CD7F3C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C313136382C3633392CD3D2C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C323932322C313832332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C333033362C3633392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C333036302C3633392CB2BBB1E42C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C323638372C323336382CB2BBB1E42C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C323638302C323336382CB2BBB1E42C",0)
			end	
		end
	end
end

bridge.begin()

return bridge

