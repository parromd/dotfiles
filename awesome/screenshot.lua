-- Written by denisoster
-- https://github.com/denisoster/awesomeem-screenshot
--
-- MIT License
--
-- Copyright (c) 2017 Denis Oster
--
-- Permission is herby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to deal
-- in the Software without restriction, including without limitation the rights
-- to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
-- copies of the Software, and to permit persons to whom the Software is
-- funished to do so, subject to the following conditions:
--
-- The above copyright notice and this permission notice shall be included in all
-- copies or substantial portions of the Software
--
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDRES BE LIABLE FOR ANY CLAIM, DAMAGGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION ON CONTRACT, TORT OR OTHERWISE, ARISING FORM,
-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
-- SOFTWARE


local awful = require("awful")
local naughty = require("naughty")

timers = { 5,10 }
screenshot = os.getenv("HOME") .. "/Pictures/scrot/$(date +%F_%T).png"

function scrot_full()
    scrot("scrot " .. screenshot .. " -e 'xclip -selection c -t image/png < $f', scrot_callback", scrot_callback, "Take a screenshot of entire screen")
end

function scrot_selection()
    scrot("sleep 0.5 && scrot -s " .. screenshot .. " -e 'xclip -selection c -t image/png < $f'", scrot_callback, "Take a screenshot of selection")
end

function scrot_window()
    scrot("scrot -u " .. screenshot .. " -e 'xclip -selection c -t image/png < $f'", scrot_callback, "Take a screenshot of focused window")    
end

function scrot_delay()
    items={}
    for key, value in ipairs(timers)  do
        items[#items+1]={tostring(value) , "scrot -d ".. value.." " .. screenshot .. " -e 'xclip -selection c -t image/png < $f'","Take a screenshot of delay" }
    end
    awful.menu.new(
    {
        items = items
    }
    ):show({keygrabber= true})
    scrot_callback()
end

function scrot(cmd , callback, args)
    awful.util.spawn_with_shell(cmd)
    callback(args)
end
function scrot_callback(text)
    naughty.notify({
        text = text,
        timeout = 0.5
    })
end
