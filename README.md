# mpv-copyTimeOrFrame

A fork of [mpv-copyTime](https://github.com/Arieleg/mpv-copyTime) with a few bugfixes from unmerged PRs and a couple new features.

Features:

- Copy the current time (formatted as `HH:MM:SS.sss`) or estimated frame number to clipboard.

# Screenshot
![ss1](https://user-images.githubusercontent.com/40000640/111867156-02f68a00-8951-11eb-84a8-c78616c68aa3.PNG)

# Installation

## 1. Install dependencies

This script requires [mpv-clipboard](https://github.com/CogentRedTester/mpv-clipboard) be installed.

Windows users may prefer [dyphire's fork](https://github.com/dyphire/mpv-clipboard) as it appears to have some improvements.

## 2. Install the script

Put `copyTimeOrFrame.lua` in your scripts folder, usually in:
*  Windows: `"%APPDATA%\mpv\scripts"`.
*  Linux and Mac: `"~/.config/mpv/scripts/"`.

## 3. Configure Your Keybinds

There are two ways to do this.

Either...

1. Modify the lines at the bottom of the script by changing `nil` to your desired keybinds. e.g.
```
mp.add_key_binding("ctrl+c", "copyFrame", copyFrame)
mp.add_key_binding("shift+c", "copyTime", copyTime)
```

or

2. Add your preferred keybinds to your `inputs.conf` file. e.g.
```
ctrl+c script-message-to copyTimeOrFrame copyTime
shift+c script-message-to copyTimeOrFrame copyFrame
```

Note: these example keybinds may conflict with your existing keybinds or [MPV's defaults](https://github.com/mpv-player/mpv/blob/master/etc/input.conf).

