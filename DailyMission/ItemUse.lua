while(true)
do	

item = {
	"ԭʼʱ��Ѫ��ˮ��",
	"�м�ʱ��Ѫ��ˮ��",
	"��ͼ�ʱ��Ѫ��ˮ��",
	"�ͼ�ʱ��Ѫ��ˮ��",
	"�߼�ʱ��Ѫ��ˮ��",
	"��߼�ʱ��Ѫ��ˮ��",
}
-- You can add any item you want to use to replace this list

	for i=1,#item do
		if(item_if(item[i])>0) then
			item_use(item[i])
			sleep(100)
		end
	end	
end