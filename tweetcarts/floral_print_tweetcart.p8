pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
--floral_print
--spring. (c) 2020 shiyouganai
b=function(l,w,a,c)local g,s,r,u,v,x,y=0,0,0,0,0,0,0
return function()if g<0.5 then
u,v,x,y=w*g,a*sin(g+s),u*cos(r)-v*sin(r),v*cos(r)+u*sin(r)pset(x+l,y+l,c)r+=(1/8)if r>1 then r=0 s+=.5 end
if s>.5 then s=0 g+=.005 end
end
end
end
cls()h=b(63,100,20,8)i=b(30,60,8,10)j=b(95,60,8,9)::_::
for n=1,9 do
h()i()j()end
flip()goto _
