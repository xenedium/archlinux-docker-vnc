
## Archlinux image with i3-wm and TigerVNC server


### Description
This is a ready to use docker image with a minimal Desktop environment (i3) and a VNC server.
### Steps

- Pull and run the docker image from docker hub
```sh
docker run -d --network host xenedium/archlinux-vnc:latest
```
- Download VNC viewer : https://sourceforge.net/projects/tigervnc/files/stable/1.13.1/vncviewer64-1.13.1.exe/download
- Connect to the VNC :
```
VNC server: localhost
Password: password
```
- I3 Config :<br>
Choose your i3 mod key Win/Alt then press Win/Alt + D to open dmenu
