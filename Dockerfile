FROM archlinux:base-devel

RUN pacman -Syyu --noconfirm && pacman -S supervisor xorg xorg-xinit tigervnc i3 alacritty dmenu nitrogen firefox --noconfirm

RUN groupadd sudo && \
    useradd -m -G sudo -s /bin/bash user && \
    echo 'user:password' | chpasswd && \
    echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

RUN echo ':0=user' >> /etc/tigervnc/vncserver.users

USER user
WORKDIR /home/user
RUN echo 'exec i3' >> /home/user/.xinitrc
RUN printf "password\npassword\nn\n" | vncpasswd

CMD ["vncserver", ":0"]
