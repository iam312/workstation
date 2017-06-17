#FROM opensuse:leap
FROM opensuse:tumbleweed

RUN touch /etc/bash.bashrc
RUN zypper install -y sudo git-core tmux zsh vim vim-data wget tar make gcc gcc-c++ ruby zlib-devel libopenssl-devel ncurses-utils glibc-locale youtube-dl readline-devel libbz2-devel libsqlite3-0 sqlite3-devel cmake python-devel

# set timezone to seoul
RUN zypper install -y timezone
RUN /bin/rm /etc/localtime && ln -s /usr/share/zoneinfo/Asia/Seoul /etc/localtime

RUN useradd -ms /bin/zsh samil
RUN echo 'samil ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER samil
WORKDIR /home/samil
