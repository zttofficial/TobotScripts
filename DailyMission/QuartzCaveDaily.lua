check=1

sleep(100)
   script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3237392C323036332CB2BBB1E42CCAB9D3C3BCBCC4DC2C313331333235300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3232332C323036332CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3135302C323036332CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3639362C313132372CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C3838372C3535312CD3D2C5DC2CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C313030",1)
	bot_start()
printgame(0,255,255,"Goto Oscuras Residence")
sleep(100)
plane(191)
sleep(8000)
while(getmapid() ~= 30800.0)
do
sleep(100)
end
bot_stop()
sleep(500)
bot_stop()
sleep(500)
bot_stop()
sleep(500)
bot_stop()
sleep(500)
bot_stop()
sleep(500)
bot_stop()
sleep(500)
while(getmapid() ~= 30800.0 or gety() ~= 1408.0) do printgame(255,255,0,[[Plz stand on the groud of Oscuras Residence]]) sleep(5000) end gotocoordinate(1,2674,1408)
sleep(100)
open_npc(7066)
sleep(100)
request_task(7066,144091011,1)
sleep(100)
close_npc(7066)
sleep(100)
open_npc(7067)
sleep(100)
request_task(7067,144091008,1)
sleep(100)
request_task(7067,144091009,1)
sleep(100)
request_task(7067,144091010,1)
sleep(100)
close_npc(7067)
sleep(100)
bot_start()
sleep(100)
while(1)
do
  sleep(100)
    if(getmapid()==30800.0)
    then
    script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333636372C313430382CD3D2C5DC2CCAB9D3C3BCBCC4DC2C31333133323530",0)
  sleep(100)
  end
    if(getmapid()==30700.0)
    then
    script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333636372C313430382CD3D2C5DC2CCAB9D3C3BCBCC4DC2C313331333235300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333030322C313337362CD3D2C5DC2CCAB9D3C3BCBCC4DC2C31333133323530",0)
  sleep(100)
  end
    if(getmapid()==30701.0)
    then
    script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323938392C313339322CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C",0)
  sleep(100)
  end
    if(getmapid()==30702.0)
    then
    script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323938392C313339322CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333035372C313337362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C",0)
  sleep(100)
  end
    if(getmapid()==30703.0)
    then
    script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333038342C313337362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C",0)
  sleep(100)
  end
    if(getmapid()==30704.0)
    then
    script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333030302C313337362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C",0)
  sleep(100)
  end
    if(task_get_state(144091008) == 2 and (task_sub_index_all(144091009,1) - task_sub_index_now(144091009,1))>1)
    then
    sleep(100)
      if(getmapid()==30600.0)
      then
      script_txt_loaddata("D7F3CCF82CD3D2C5DCCAB12C323238352C3836382CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C323930302C313331322CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C",0)
    sleep(100)
    end
    else
      if(getmapid()==30600.0)
      then
      script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333038342C313337362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333034332C313331322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C",0)
    sleep(100)
    end
      if(getmapid()==30601.0)
      then
      script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333038342C313337362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333034332C313331322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333036322C313331322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C",0)
    sleep(100)
    end
      if(getmapid()==30602.0)
      then
      script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333038342C313337362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333034332C313331322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333036322C313331322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323936362C313331322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C",0)
    sleep(100)
    end
      if(getmapid()==30603.0)
      then
      script_txt_loaddata("C9CFCCF82CD7F326D3D2CAB12C333134322C313234382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F326D3D2CAB12C333134342C3937352CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323833322C3937352CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82CD7F326D3D2CAB12C323134382C3736372CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C",0)
    sleep(100)
    end
  end
    if(task_get_state(144091010) == 3 and task_get_state(144091009) == 3) 
    then
    break
  end
  sleep(300)
end
sleep(100)
   script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3237392C323036332CB2BBB1E42CCAB9D3C3BCBCC4DC2C313331333235300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3232332C323036332CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3135302C323036332CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3639362C313132372CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C3838372C3535312CD3D2C5DC2CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C313030",1)
	bot_start()
printgame(0,255,255,"Goto Oscuras Residence")
sleep(100)
plane(191)
sleep(8000)
while(getmapid() ~= 30800.0)
do
sleep(100)
end
bot_stop()
sleep(500)
bot_stop()
sleep(500)
bot_stop()
sleep(500)
bot_stop()
sleep(500)
bot_stop()
sleep(500)
bot_stop()
sleep(500)
while(getmapid() ~= 30800.0 or gety() ~= 1408.0) do printgame(255,255,0,[[Plz stand on the groud of Oscuras Residence]]) sleep(5000) end gotocoordinate(1,2674,1408)
sleep(100)
sleep(100)
open_npc(7066)
sleep(100)
submit_task(7066,144091011)
sleep(100)
close_npc(7066)
sleep(100)
open_npc(7067)
sleep(100)
submit_task(7067,144091008)
sleep(100)
submit_task(7067,144091009)
sleep(100)
submit_task(7067,144091010)
sleep(100)
close_npc(7067)
sleep(100)
bot_start()