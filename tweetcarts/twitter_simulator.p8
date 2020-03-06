pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
--twitter_simulator
--tweet. copyright 2020 shiyouganai
text_name = "@ENDLESS_NOISE"
text_body = "BLAH "
frame_count = 210
circ_last = {10, -24}
circ_curr = {10, 12}

::_::
if (frame_count % 210 == 0) then
    cls(1)
    circ_last[2] = -24
    circ_curr[2] = 12
elseif (frame_count % 30 == 0) then
    circfill(circ_curr[1], circ_curr[2], 8, 6)
    print(text_name, circ_curr[1]+12, circ_curr[2]-7, 6)
    text_b2 = ""
    
    for i = 0, 4 do
        text_b2 = text_b2 .. text_body
    end

    print(text_b2, circ_curr[1]+12, circ_curr[2], 7)
    line(circ_last[1], circ_last[2]+10, circ_curr[1], circ_curr[2]-10, 12)
    circ_last[2] = circ_curr[2]
    circ_curr[2] += 24
end

frame_count += 1
flip()

goto _
