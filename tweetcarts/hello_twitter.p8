pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
--hello_twitter
--tweet. (c) 2020 shiyouganai
text = {'H','E','L','L','O',' ','T','W','I','T','T','E','R','!'}
color = {0,0,0,0,0,0,0,0,0,0,0,0,0,0}
color_index = 0
coord = {0,0}
angle_base = 0.25
frame_count = 0
::_::
cls()
angle = angle_base
if(frame_count % 3 == 0) then
    color[color_index%14+1] += 1
    color_index += 1
end
for angle = 0, 0.9, 0.1 do
    for k = 8, 60, 4 do
        coord[1] = k * cos(angle + angle_base) + 62
        coord[2] = k * sin(angle + angle_base) + 61
        print(text[k/4-1], coord[1], coord[2], (color[k/4-1]%8) + 8)
    end
end
frame_count += 1
angle_base += 0.002
flip()
goto _
