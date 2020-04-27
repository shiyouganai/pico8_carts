pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
--chromatic_lotus
--spring. (c) 2020 shiyouganai
c,g,s,r,u,v,x,y=5,0,0,0,0,0,0,0
cls()::_::for n=0,9 do
if g>0.5 then g=0 end
u,v,x,y=126*g,20*sin(g+s),u*cos(r)-v*sin(r),v*cos(r)+u*sin(r)pset(x+63,y+63,c*25%8+8)r+=.1
if r>1 then r=0 s+=.5 end
if s>.5 then s=0 g+=.01 c+=.003 end
end
flip()goto _
