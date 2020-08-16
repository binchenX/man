FROM ubuntu:bionic AS build

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && yes | unminimize
RUN apt-get install -y dialog apt-utils curl && \
    curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh
# http://manpages.ubuntu.com/
RUN apt-get install -y \
        bpfcc-tools \
        etcd-server \
        man-db \
        manpages-dev \
        manpages-posix \
        manpages-posix-dev \
        runc \
        sysstat \
        xfsprogs
RUN apt-get update && apt-get install -y \
        etcd-client \
        nginx-extras \
        openssh-server

# comment out following when ready to release
# FROM ubuntu:bionic AS release
# COPY --from=build /usr/bin/man /usr/bin/
# COPY --from=build /usr/share/man /usr/share/man
# COPY --from=build /usr/local/share/man /usr/loca/share/man
RUN apt-get update && apt-get install -y \
        apt-utils \
        curl \
        dialog \
        man-db \
        tldr \
        zsh \
        qemu \
        qemu-kvm \
        netplan.io
