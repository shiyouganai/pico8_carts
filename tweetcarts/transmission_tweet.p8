pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
--transmission
--anxiety. copyright 2020 shiyouganai
c,n,z,p=128,8,function(x,y,i)if pget(x,y)==0 and rnd(1)>.5 then pset(x,y,n%16+1)p[i]=n+1 end end,{}cls()pset(63,63,8)p[8127]=n::_::for i=0,16383 do
x,y=i/c,i%c
if p[i]==n then
z(x-1,y,i-c)z(x+1,y,i+c)z(x,y-1,i-1)z(x,y+1,i+1)end
end
n+=1
flip()goto _
