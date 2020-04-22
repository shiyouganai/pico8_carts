pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
--spring. (c) 2020 shiyouganai
--gradient_lotus
g,s,r,u,v,x,y=0,0,0,0,0,0,0
l,w,a,c=63,126,20,8
cls()::_::for n=0,7 do
if g<=0.5 then
u,v,x,y=w*g,a*sin(g+s),u*cos(r)-v*sin(r),v*cos(r)+u*sin(r)pset(x+l,y+l,g*25%8+8)r+=.1
if r>1 then r=0 s+=.5 end
if s>.5 then s=0 g+=.01 end
end
end
flip()goto _
