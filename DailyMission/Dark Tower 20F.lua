check=1
shuata={}
name="暗之塔20层"
state=0 --instance initial state
XunHuanNum=0 --loop count initial
XunHuan=0
--1 loop 0 no loop
getbox=1
--1 open box 0 leave box
local function isIndunEnd(state)
	if(state==2) then
		printgame(0,255,0,"Tower："..name.."Completed and no more chance！")
	elseif(state==3) then
		printgame(0,255,0,"Hint：Lack of vitality")
	elseif(state==8848) then
		printgame(0,255,0,"Hint：loop mode")
	else
		printgame(0,255,0,"     Tower："..name.."Done!")
	end
	sleep(500)
end

function shuata.begin()
	while(true)
	do   
		sleep(100)
		getmapnow=getmapid()
		if getmapnow~=lastmapid then --map id changed
			lastmapid=getmapnow
			lastmapname=getmapname()
			IndunReset=1
			if(lastmapname == name) then --Already reached this floor--
				box_if=indun_box_if()--check box state--
				if(box_if==0) then
					bot_start()--Start auto play--
				end
			end
		end
		if(lastmapname == name) then --Already reached this floor--
			box_if=indun_box_if()--check box state--
			if box_if==1 or box_if==2 then --box appear--
				bot_stop()--Pause auto play
				sleep(200)
				if box_if==1 and getbox==1 then
					indun_box_get()--get box--
				end
				if XunHuan==0 then
					break
				elseif XunHuan==1 then
					if IndunReset~=0 then
						IndunReset=0
						XunHuanNum = XunHuanNum + 1
						speak("Hint：loop mode 【 "..name.." 】already completed "..XunHuanNum.." times.")
						isIndunEnd(8848)
						plane(95800)--Go to Elias
					end
				end
			end
		else
			if XunHuan==1 then
				speak("Hint：loop mode. It will get into【 "..name.." 】  soon")
			end
			state=indun_into(name)
			if(state==2) then
				break
			elseif(state==1) then
				bot_start()--Start auto play--
			elseif(state==-1) then
				bot_start()--Start auto play--
			elseif(state==0) then
			elseif(state==3) then
				if(useitem("高级活力能量剂")==0) then
					if(useitem("中级活力能量剂")==0) then
						if(useitem("低级活力能量剂")==0) then
							break
						end
					end
				end
			end
		end
	end
	isIndunEnd(state)
end
shuata.begin()

bot_stop()

return shuata

