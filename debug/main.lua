local var1 = "hello"
local var2 = "world"
for i = 1, 10, 1 do
    if i == 9  then
        redis.breakpoint()
    end
    redis.debug("当前的索引是：", i)
end
local var3 = redis.pcall("zrange","zset1","0","-1")
redis.debug(var1,var2,var3,var3.err,KEYS[1],KEYS[2],ARGV[1],ARGV[2])
print("你可真的是hello")
return var3