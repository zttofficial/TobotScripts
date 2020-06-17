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
-- You can add any item you want to use to replace this list

	for i=1,#item do
		if(item_if(item[i])>0) then
			item_use(item[i])
			sleep(100)
		end
	end	
end