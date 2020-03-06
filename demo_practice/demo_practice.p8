pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
-- demo_practice
-- copyright 2020 shiyouganai

-- audio function wrapper table
audio = {}
audio["get_sfx"] = function (self, channel)
    if (channel >= 0 and channel < 4) then
        note = stat(16 + channel)
    else
        note = -1
    end

    return note
end
audio["get_note"] = function (self, channel)
    if (channel >= 0 and channel < 4) then
        note = stat(20 + channel)
    else
        note = -1
    end

    return note
end
audio["music"] = music

-- entity prototype
entity = {pos = {0, 0}}
function entity:new (object)
    object = object or {}
    setmetatable(object, self)
    self.__index = self
    return object
end

-- drawable sprite prototype
sprite = entity:new()
sprite["sheet_num"] = 0
sprite["dimensions"] = {8, 8}
function sprite:draw()
    spr(self.sheet_num, self.pos[1], self.pos[2],
        self.dimensions[1], self.dimensions[2])
end

row_curr = 0
row_prev = 0

-- heart sprite
heart = sprite:new()
heart.pos = {63, 0}
function heart:beat()
    pal(8, 1 + rnd(15))
end

function _init()
    cls()
    audio:music(0, 0)
end

function _update()
    row_curr = audio:get_note(0)
    if row_curr ~= row_prev then
        if row_curr < row_prev then
            heart.pos[2] += 8
            if(heart.pos[2] > 120) then
                heart.pos[2] = 0
            end
            heart.pos[1] = 63
        elseif (row_curr % 8) == 0 then
            heart:beat()
            heart.pos[1] += 16
        end
        row_prev = row_curr
    end
end

function _draw()
    cls()
    for cnt = 0, 3, 1 do
        print("sfx[" .. cnt .. "] = " .. audio:get_sfx(cnt))
        print("nte[" .. cnt .. "] = " .. audio:get_note(cnt))
    end
    heart:draw()
end

__gfx__
08800880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88888888000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88888888000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
88888888000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
08888880000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00888800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00088000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
0106000018050180501805018050000000000000000000001a0501a0501a0501a050000000000000000000001c0501c0501c0501c050000000000000000000001d0501d0501d0501d05000000000000000000000
__music__
02 00424344

