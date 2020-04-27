pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
--floral_print
--spring. (c) 2020 shiyouganai
bloom = function (offset, width, amplitude, petals, color)
    local angle, phase_shift, rotation, coord = 0, 0, 0, {0,0,0,0}
    return function ()
        if angle > 0.5 then return end
        coord[1] = width * angle
        coord[2] = amplitude * sin(angle+phase_shift)

        coord[3] = coord[1] * cos(rotation) - coord[2] * sin(rotation)
        coord[4] = coord[2] * cos(rotation) + coord[1] * sin(rotation)

        pset(coord[3] + offset[1], coord[4] + offset[2], color)
        rotation += (1.0/petals)
        if rotation > 1 then rotation = 0 phase_shift += 0.5 end
        if phase_shift > 0.5 then phase_shift = 0 angle += 0.005 end
    end
end
cls()
flower_1 = bloom({63, 63}, 100, 20, 8, 8)
flower_2 = bloom({30, 30}, 60, 8, 7, 10)
flower_3 = bloom({95, 95}, 60, 8, 6, 9)
flower_4 = bloom({20, 100}, 40, 6, 6, 15)
flower_5 = bloom({100, 30}, 40, 6, 7, 12)
::_::
for i = 1, 10 do
    flower_1()
    flower_2()
    flower_3()
    flower_4()
    flower_5()
end
flip()
goto _
