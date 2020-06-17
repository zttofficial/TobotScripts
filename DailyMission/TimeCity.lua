check=1
time = gettime(1)
if (time == 1.0 or time == 3.0 or time == 5.0)then
else
printgame(255,255,0,"Today is not Monday, Wednesday or Friday")
printgame(255,255,0,"End")
exit()
end
plane(1210)

while(getmapid() ~= 18400.0 and getx() < 536.0 )do
-- Wait for entry aim map
sleep(5000)
end
sleep(7000)
open_npc(1500115)
npc_plane(1500115,1500115,0,1500115,0)
close_npc(1500115)
sleep(1000)
bot_start()
script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3838322C313030372CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3937352C313335392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3935352C3532372CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3939342C3537352CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C",0)
while(true)
do

item = {
	"原始时空血脉水晶",
	"中级时空血脉水晶",
	"最低级时空血脉水晶",
	"低级时空血脉水晶",
	"高级时空血脉水晶",
	"最高级时空血脉水晶",
}

	for i=1,#item do
		if(item_if(item[i])>0) then
			item_use(item[i])
			sleep(100)
		end
	end	
	
if (getmapid() == 64400.0 and indun_get(322.0) == 2)then
printgame(255,255,0,"Done twice")
break
end
end


bot_stop()
