# mpv-copyTimeOrFrame

A fork of [mpv-copyTime](https://github.com/Arieleg/mpv-copyTime) with a few bugfixes from unmerged PRs, expanded to also allow copying MPV's estimated frame number.

Copy the current time (formatted as `HH:MM:SS.sss`) or estimated frame number of the video to clipboard.

# Installation

Put the script `copyTimeOrFrame.lua` in your scripts folder, usually in:
*  Windows: `"%APPDATA%\mpv\scripts"`.
*  Linux and Mac: `"~/.config/mpv/scripts/"`.

Add your preferred keybinds to your `mpv/inputs.conf` file. e.g.
```
ctrl+c script-message-to copyTimeOrFrame copyTime
shift+c script-message-to copyTimeOrFrame copyFrame
```

To work, the script depends on:
* Windows: `Powershell`.
* Linux/X11: `xclip`.
* Linux/Wayland : `wl-clipboard`.
* MacOS: `pbcopy` (not tested).

# Screenshot
![ss1](https://user-images.githubusercontent.com/40000640/111867156-02f68a00-8951-11eb-84a8-c78616c68aa3.PNG)
