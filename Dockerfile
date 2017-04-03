FROM ubuntu:16.10

RUN apt-get update && \
    apt-get install -y apt-utils python-software-properties software-properties-common host curl net-tools lsof && \
    add-apt-repository ppa:gluster/glusterfs-3.9 &&\
    apt-get -y install glusterfs-server glusterfs-client attr xfsprogs build-essential lvm2 inotify-tools &&\
    apt-get -y clean all && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD FILES.gluster /

EXPOSE 24007 24008 49152 49153 49154 49155 49156 49157 49158 49159 49160
