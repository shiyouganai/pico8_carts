pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
--hello_twitter
--tweet. copyright 2020 shiyouganai
t="HELLO TWITTER!"
c={}i=0 d={0,0}b=0.25 f=0
::_::
cls()a=b
if f%3==0 then
j=i%14+1
c[j]=(c[j]or 0)+1
i+=1
end
for a=0,0.9,0.1 do
for k=8,60,4 do
d[1]=k*cos(a+b)+62
d[2]=k*sin(a+b)+61
j=k/4-1 
?sub(t,j,j),d[1],d[2],(c[j]or 0)%8+8
end
end
f+=1 b+=0.002
flip()goto _