--[[
    description: 该脚本主要是用于描述redis.call和redis.pcall的区别    
--]]


local rsp = redis.pcall('zbig',"1","2")

if rsp.err ~= nil  then
    redis.debug("this is error:",rsp.err)
    redis.breakpoint()
end
local rsp = redis.call('zbig',"1","2")
return true






