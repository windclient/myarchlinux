FROM archlinux:latest

#establish source
RUN sed -i '1i\Server = https://mirrors.tuna.tsinghua.edu.cn/archlinux/\$repo/os/\$arch' /etc/pacman.d/mirrorlist
RUN echo "[archlinuxcn]" >> /etc/pacman.conf
RUN echo "SigLevel = Optional TrustAll" >> /etc/pacman.conf
RUN echo "Server = https://mirrors.ustc.edu.cn/archlinuxcn/\$arch" >> /etc/pacman.conf

RUN cat /etc/pacman.d/mirrorlist

RUN pacman -Syu --noconfirm
RUN pacman -S yaourt --noconfirm
RUN pacman -S yay --noconfirm
RUN pacman -S wget --noconfirm
RUN pacman -S curl --noconfirm
RUN pacman -S gcc --noconfirm
RUN pacman -S make --noconfirm
RUN pacman -S gdb --noconfirm
RUN pacman -S qemu-base --noconfirm
RUN pacman -S arm-none-eabi-gcc --noconfirm
RUN pacman -S cmake --noconfirm
RUN pacman -S python2 --noconfirm
RUN pacman -S python-pip --noconfirm

