pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
--twitter_simulator
--tweet. copyright 2020 shiyouganai
n="@ENDLESS_NOISE"
b="BLAH "
z=circfill
f=210
::_::if f%210==0 then
cls(1)l=-24
c=12
elseif f%30==0 then
z(9,c,8,6)z(9,c-3,2,5)z(9,c+5,4,5)d=""
?n,21,c-7,6
for i=0,4 do
d=d..b
end
?d,21,c,7
line(9,l+11,9,c-11,12)l=c
c+=24
end
f+=1
flip()goto _
