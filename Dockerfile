FROM opensuse:leap
RUN touch /etc/bash.bashrc
RUN zypper install -y sudo git-core tmux zsh vim wget tar make gcc ruby zlib-devel libopenssl-devel
RUN useradd -ms /bin/zsh samil
RUN echo 'samil ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER samil
WORKDIR /home/samil
