# Hamlib-AmodemSendFileRig-ImGui
The use of python Amodem for sending a file via RF using Rig/Transciever

![image](https://github.com/YD1RUH/HackRF-AmodemSendFile-ImGui/blob/support-hamlib/AmodemSendFileRig.png)

## Requirement
- Linux Operating System
- Rig/Transciever with CAT controller
- python3 : `sudo apt install python3`
- hamlib : [link github source](https://github.com/Hamlib/Hamlib) 
- xterm : `sudo apt install xterm`
- Python Amodem : `pip3 install amodem`
- DearPyGUI : `pip3 install dearpygui`

## Additional
If you want to create virtual sink audio follow this step:
- install depencies \
  `sudo apt-get install pavucontrol portaudio19-dev`
- open file config pulse audio using: \
  `sudo nano /etc/pulse/default.pa`\
  at the bottom of file append this line: \
  `load-module module-null-sink sink_name=virtual_sink sink_properties=device.description=virtual_sink`
- restart pulseaudio: \
  `pulseaudio -k` \
  and \
  `pulseaudio --start`

## Installation
- clone the repository : \
  `git clone https://github.com/YD1RUH/HackRF-AmodemSendFile-ImGui.git`
- get into repository directory : \
  `cd HackRF-AmodemSendFile-ImGui` 
- Change branch to support-hamlib : \
  `git checkout support-hamlib` 
- make executable : \
  `chmod +x *`
- run the programm : \
  `./AmodemSendFileRig-ImGUI`

## Notice
- make sure set all input and output audio at level **80%**

## Contributors

[//]: contributor-faces

<a href="https://github.com/YD1RUH"><img src="https://avatars.githubusercontent.com/u/32731955?v=3" title="YD1RUH" width="40" height="40"></a>
<a href="https://github.com/alphafox02"><img src="https://avatars.githubusercontent.com/u/44436101?v=3" title="alphafox02" width="40" height="40"></a>

[//]: contributor-faces
