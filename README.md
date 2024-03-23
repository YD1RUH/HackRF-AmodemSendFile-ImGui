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

**Note**, if you have installed older gnuradio and you want to **install gnuradio3.10 instead your older version gnuradio** without break you system [follow this step](https://github.com/YD1RUH/HackRF-AmodemSendFile-ImGui/blob/main/Install_GNUradio3.10_instead_your_GNUradio_default_version.md)

## Additional
If you want to create virtual sink audio follow this step:
- install depencies `sudo apt-get install pavucontrol portaudio19-dev`
- open file config pulse audio using: `sudo nano /etc/pulse/default.pa`, at the bottom of file append this line: `load-module module-null-sink sink_name=virtual_sink sink_properties=device.description=virtual_sink`
- restart pulseaudio `pulseaudio -k` and `pulseaudio --start`

## How To Calibrate
### two side with hackrf each side
- left side run `./AmodemSendFile-ImGUI` then open **Menu** and click **Calibrate TX**
- right side run `./AmodemSendFile-ImGUI` then open **Menu** and click **Calibrate RX**
- Do it again vice versa left side **Calibrate RX** and right side **Calibrate TX**
### two side with left side HackRF right side rtlsdr
- left side run `./AmodemSendFile-ImGUI` then open **Menu** and click **Calibrate TX**
- right side open terminal then open sdr software **gqrx**, **sdr++**, **etc**
- right side open terminal run `export BITRATE=[same as the left side]; amodem recv calibrate`

## How To Use
- Download the .zip file
- Extrac the zip `unzip HackRF-AmodemSendFile-ImGui-main.zip`
- go into the directory `cd HackRF-AmodemSendFile-ImGui-main`
- make all file executable `chmod +x *`
- Open terminal, then run `./AmodemSendFile-ImGUI`
### Only have 1 hackrf (left side) and 1 rtlsdr (right side)
**RTL-SDR (run this first)**
- right side open terminal then open sdr software **gqrx**, **sdr++**, **etc**
- right side set sdr software frequency same as transmit side
- right side open terminal run `export BITRATE=[same as the left side]; bash listen.sh`

**Hackrf (run after the listener is ready)**
- left side run `./AmodemSendFile-ImGUI` then click **select & send file**
- choose file then klik **OK**

## Notice
- make sure set all input and output audio at level **80%**

## Contributors

[//]: contributor-faces

<a href="https://github.com/YD1RUH"><img src="https://avatars.githubusercontent.com/u/32731955?v=3" title="YD1RUH" width="40" height="40"></a>
<a href="https://github.com/alphafox02"><img src="https://avatars.githubusercontent.com/u/44436101?v=3" title="alphafox02" width="40" height="40"></a>

[//]: contributor-faces
