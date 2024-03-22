# HackRF-AmodemSendFile-ImGui
The use of python Amodem for sending a file via RF using HackRF

![image](https://github.com/YD1RUH/HackRF-AmodemSendFile-ImGui/blob/main/HackRF-AmodemSendFile.jpg)

## Requirement
- Linux Operating System
- HackRF One
- python3 : `sudo apt install python3`
- xterm : `sudo apt install xterm`
- Python Amodem : `pip3 install amodem`
- DearPyGUI : `pip3 install dearpygui`
- HackRF library : `sudo apt-get install hackrf libhackrf-dev`
- GNURadio3.10 : [Installation guide](https://wiki.gnuradio.org/index.php/LinuxInstall)
- SoapySDR : [Installation guide](https://github.com/pothosware/SoapySDR/wiki/BuildGuide#get-the-source-code)
- SoapySDR HackRF : [Installation guide](https://github.com/pothosware/SoapyHackRF/wiki#building-soapy-hack-rf)

## Additional
If you want to create virtual sink audio follow this step:
- install depencies `sudo apt-get install pavucontrol portaudio19-dev`
- open file config pulse audio using: `sudo nano /etc/pulse/default.pa`, at the bottom of file append this line: `load-module module-null-sink sink_name=virtual_sink sink_properties=device.description=virtual_sink`
- restart pulseaudio `pulseaudio -k` and `pulseaudio --start`

## How To Use
- Download the .zip file
- Extrac the zip `unzip HackRF-AmodemSendFile-ImGui-main.zip`
- go into the directory `cd HackRF-AmodemSendFile-ImGui-main`
- make all file executable `chmod +x *`
- Open terminal, then run `./AmodemSendFile-ImGUI`

## Notice
- make sure set all input and output audio at level **80%**
