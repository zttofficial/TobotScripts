--Please unzip trigger script firstly
--Be sure you have Token in bag
check=1
ini_change("tobot_scriptbot",1)
map1=getmapid()
sleep(100)
plane(32501)
    script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C313636372C3632332CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C363030300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313138342C3632332CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C36303030",1)
	bot_start()
while(true)
do
  if(getmapid()==20004.0) then
    if(indun_get(32501)==15.0 and indun_get(32601)==15.0) then
	printgame(0,255,0,"Done")
    break
    sleep(100)
    end
  else
    map1=getmapid()
    sleep(240000)
    if(getmapid()==map1) then 
      plane(32501)
      end
  end 

sleep(1000)
end