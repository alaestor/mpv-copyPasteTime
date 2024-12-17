require 'mp'

local function setClipboard(text)
   if mp.commandv("script-message", "set-clipboard", text) then
        mp.osd_message(string.format("Copied to Clipboard: %s", text))
    else
        mp.osd_message(string.format("Failed to copy '%s'.\nAre you missing `mpv-clipboard`?", text))
    end
end

local function divmod(a, b)
    return a / b, a % b
end

local function copyTime()
    local time_pos = mp.get_property_number("time-pos")
    local minutes, remainder = divmod(time_pos, 60)
    local hours, minutes = divmod(minutes, 60)
    local seconds = math.floor(remainder)
    local milliseconds = math.floor((remainder - seconds) * 1000 + 0.5)
    local time = string.format("%02d:%02d:%02d.%03d", math.floor(hours), math.floor(minutes), seconds, milliseconds)
    setClipboard(time)
end

local function copyFrame()
    local frame_number = mp.get_property_number("estimated-frame-number")
    local frame_string = string.format("%d", frame_number)
    setClipboard(frame_string)
end

mp.add_key_binding(nil, "copyFrame", copyFrame)
mp.add_key_binding(nil, "copyTime", copyTime)
