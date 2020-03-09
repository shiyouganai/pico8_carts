pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
--transmission
--anxiety. copyright 2020 shiyouganai
frame_count = 0
color = 8
color_next = 9
gen = 0
gen_next = 1
gen_map = {}
cls(0)
pset(63, 63, 8)
gen_map[63*128 + 63 + 1] = gen
::_::
if (frame_count % 10 == 0) then
    for x = 0, 127 do
        for y = 0, 127 do
            if pget(x, y) == color and gen_map[x*128 + y + 1] == gen then
                if pget(x-1, y) == 0 then if rnd(100) > 50 then pset(x-1, y, color_next) gen_map[(x - 1)*128 + y + 1] = gen_next end end
                if pget(x+1, y) == 0 then if rnd(100) > 50 then pset(x+1, y, color_next) gen_map[(x + 1)*128 + y + 1] = gen_next end end
                if pget(x, y-1) == 0 then if rnd(100) > 50 then pset(x, y-1, color_next) gen_map[x*128 + y] = gen_next end end
                if pget(x, y+1) == 0 then if rnd(100) > 50 then pset(x, y+1, color_next) gen_map[x*128 + y + 2] = gen_next end end
            end
        end
    end
    gen = gen_next
    gen_next += 1
    color = color_next
    color_next += 1
    if color_next == 16 then color_next = 1 end
end

frame_count += 1
flip()

goto _
