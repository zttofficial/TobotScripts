check=1
DreamWorld={}
timer=0
bossdie=0
goback=0

time1=430
time2=470
time3=500  
time4=540
--These are the time when Dream World 1, 2, 3, 4 map went to Dream World 5
--e.g. When the program starts 430 seconds, if the character is still on map 1, return map 5

local function isInMap()--check whether character in aim map
getmapnow=getmapid()
	if getmapnow==58300
	or getmapnow==58301
	or getmapnow==58302
	or getmapnow==58303
	or getmapnow==58304
	or getmapnow==58305 then
		return true
	end
return false
end


local function gobackwhere()--which map to return
if item_if("ͨ��������Դ��Կ��")~=0 then
	gobackw=4
	if item_if("ͨ��������Դ��Կ��")~=0 then
		gobackw=3
		if item_if("ͨ��������Դ��Կ��")~=0 then
			gobackw=2
			if item_if("ͨ���ڶ���Դ��Կ��")~=0 then
				gobackw=1
			end
		end
	end
end
print(gobackw)
return gobackw
end

local function gotoroom(mapid,gobackid)--which map to go
	if mapid==58301 and gobackid==1 
	or mapid==58302 and gobackid==2
	or mapid==58303 and gobackid==3 then
		goback=4
		lastmapid=0
	end
end


local function timelast(mapid,timer)--which map to go
--time1=430  time2=470  time3=500  time4=540
	if mapid==58301 and timer>=time1*10
	or mapid==58302 and timer>=time2*10
	or mapid==58303 and timer>=time3*10
	or mapid==58304 and timer>=time4*10 then
		goback=5
		lastmapid=0
		print(goback)
	end
end

scripts = {
	-- "0-1.txt",
	-- "1-2.txt",
	-- "2-3.txt",
	-- "3-4.txt",
	-- "4-5.txt",
	-- "5-����.txt",
	-- "�հ׽ű�.txt",
	-- "5-4.txt",
	-- "4-3.txt",
	-- "3-2.txt",
	-- "2-1.txt",
	"BDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C313137322C313433392CB2BBB1E4",
	"BDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C313137322C313433392CB2BBB1E4",
	"BDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C313137322C313433392CB2BBB1E4",
	"BDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C313137322C313433392CB2BBB1E4",
	"BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333039332C313339312CB2BBB1E4",
	"BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313538352C313339312CB2BBB1E4",
	"D6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3635312C313433392CB2BBB1E42CD3CECFB7BAB0BBB02C7777772E6368646E642E636F6D2F746F626F74",
	"BDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C39302C313339312CB2BBB1E4",
	"BDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C39302C313339312CB2BBB1E4",
	"BDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3132302C313433392CB2BBB1E4",
	"BDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3132302C313433392CB2BBB1E4",
}


suipians = {
	"[����]������Ƭ",
	"[����]��������Ƭ",
	"[����]������Ƭ",
	"[����]ľż��Ƭ",
	"[����]��������Ƭ",
	"[����]��è������Ƭ",
	"[����]����˿��Ƭ",
	"[����]�ױ���Ƭ",
	"[����]�����������Ƭ",
	"[����]����ӳ���Ƭ",
	
	"[����]��ɫ����ʯ��Ƭ",
	"[����]�����è��Ƭ",
	"[����]������Ƭ",
	"[����]������Ƭ",
	"[����]Сɽ����Ƭ",
	"[����]������Ƭ",
	"[����]��˹ִ�����Ƭ",
	"[����]�������Ƭ",
	"[����]������è��Ƭ",
	"[����]���¼�̳��Ƭ",
	
	"[����]Ӱ��ʯ����Ƭ",
	"[����]ʯ����Ƭ",

	"[����]��������Ƭ",
	"[����]��������Ƭ",
	"[����]��������Ƭ",
	"[����]�Ͼ�����Ƭ",


	"[����]����ѩ����Ƭ",
	
}


function DreamWorld.begin()
	if not isInMap() then
		speak("Plz entry Dream World firstly")
		return
	end
	print("Start")
	bot_start()--Start auto play--
	while(true)
	do
		sleep(100)
		timer=timer+1
		getmapnow=getmapid()
		if getmapnow~=lastmapid then --Map id already changed
			lastmapid=getmapnow
			
			if not isInMap() then
				bot_stop()--Stop auto play--
				sleep(2000)
				return
			end
			
			if getmapnow==58300 then
				--script_txt_load("��Դ���.txt",0)
				script_txt_loaddata(scripts[1],0)
			end
			
			if getmapnow==58301 then
				if goback==1 then
					script_txt_loaddata(scripts[7],0)
					--�հ׽ű�
				else
					script_txt_loaddata(scripts[2],0)
					--script_txt_load("��Դ һ.txt",0)
				end
			end
			
			if getmapnow==58302 then
				if goback==1 then
					script_txt_loaddata(scripts[11],0)
					--Go back to 1
				elseif goback==2 then
					script_txt_loaddata(scripts[7],0)
					--�հ׽ű�
				else
					script_txt_loaddata(scripts[3],0)
					--script_txt_load("��Դ ��.txt",0)
				end
			end
			
			if getmapnow==58303 then			
				if goback==1 or goback==2 then
					script_txt_loaddata(scripts[10],0)
					--Go back to 2
				elseif goback==3 then
					script_txt_loaddata(scripts[7],0)
					--�հ׽ű�
				else
					script_txt_loaddata(scripts[4],0)
					--script_txt_load("��Դ ��.txt",0)
				end
			end
			
			if getmapnow==58304 then
				if goback~=0 then
					print("��ͼ��Դ  ��goback"..goback)
				end
				if goback==1 or goback==2 or goback==3 then
					script_txt_loaddata(scripts[9],0)
					print("Go back to 3")
					--Go back to 3
				elseif goback==4 then
					script_txt_loaddata(scripts[7],0)
					--�հ׽ű�
					sleep(5000)
					timer=timer+50
					goback=gobackwhere()
					if goback==1 or goback==2 or goback==3 then
						script_txt_loaddata(scripts[9],0)
						--Go back to 3
					end
				else
					script_txt_loaddata(scripts[5],0)
					--script_txt_load("��Դ ��.txt",0)	
				end
			end
			
			if getmapnow==58305 then
				--script_txt_load("��Դ ��.txt",0)
				script_txt_loaddata(scripts[6],0)
				if timer<=3000 and bossdie==0 then
					while(getmapnow==58305)
					do
						sleep(100)
						timer=timer+1
						nowx=getx()
						if(1250<=nowx and nowx<=1750) then
							if mob_if("��Ⱦ֮Դ")==0 then
								bossdie=1
								if timer<=3000 then
									goback=gobackwhere()
									print("goback"..goback)
									getmapnow=0
								end
							end
						end
						if bossdie==0 then
							getmapnow=getmapid()
						end
					end
					if goback~=0 and goback~=5 then
						script_txt_loaddata(scripts[8],0)
						print("Go back to 4")
						--Go back to 4
					end
				end
			end
		end
		if goback==1 or goback==2 or goback==3 then
			gotoroom(lastmapid,goback)
			print("Judge 1 2 3")
		end
		if goback~= 5 then
			timelast(lastmapid,timer)
		end
		
		for i=1,#suipians do
			if item_if(suipians[i])>0 then
				item_use(suipians[i])
				sleep(100)
				timer=timer+1
			end
		end
		
		if timer>=6300 then
			speak("END")
			bot_stop()--Stop auto play--
			return
		end
		
	end
end

DreamWorld.begin()

return DreamWorld
