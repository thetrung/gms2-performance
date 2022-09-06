local function benchmark_array(loops)
    local sum = 0
    local a = {}
    a[0] = 10; a[1] = 20; a[2] = 30; a[3] = 40; a[4] = 50;

    for i = 0, loops-1 do
        sum = sum + a[0]
        sum = sum + a[1]
        sum = sum + a[2]
        sum = sum + a[3]
        sum = sum + a[4]
    end

    print("Array sum = " .. sum)
end


local n = 10000000
-- start clock
local t1 = os.clock()

-- running test
benchmark_array(n)

-- stop clock
local t2 = os.clock()

print("Array time = " .. (t2-t1))

--------------------------
--------- Result ---------
--------------------------
--
-- Lua 5.4
-- Array sum = 1500000000
-- Array time = 0.348525
--
-- LuaJIT
-- Array sum = 1500000000
-- Array time = 0.050399
-- 
-- GMS2022.6.1.40
-- Array sum = 1500000000
-- Array time = 4.59
-------------------------