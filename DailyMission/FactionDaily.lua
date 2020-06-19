check=1

plane(747)
sleep(1000)
while(true)
do
	if(getmapid() == 63400.0)then
		bot_start()
		script_txt_loaddata("C9CFCCF82CD7F326D3D2CAB12C313038382C313435362CB2BBB1E42CB4F2BFAA4E50432C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313038382C313339312CB2BBB1E42CB4F2BFAA4E50432C",0)
	end
	
	if(getmapid() == 95000.0)then
		bot_stop()
		sleep(100)
		gotocoordinate(1,2833,1472)
		open_npc(700065)
		request_task(700065,5180019,1)
		request_task(700065,5180034,1)
		request_task(700065,5180035,1)
		sleep(100)
		submit_task(700065,5180019)
		submit_task(700065,5180034)
		submit_task(700065,5180035)
		close_npc(700065)
	end
end
