FROM ubuntu:14.04

MAINTAINER Tyler Hoyt <tyler.hoyt@kindlingapps.com> 

# This is needed to suppress warns from apt-get
ENV DEBIAN_FRONTEND noninteractive

# Install the required things
RUN apt-get update && \
    apt-get install -y \
        vim=2:7.4* \
    && rm -rf /var/lib/apt/lists/*

# set up new user and locale
RUN useradd dev && \
    echo "ALL            ALL = (ALL) NOPASSWD: ALL" >> /etc/sudoers && \
    cp /usr/share/zoneinfo/America/Los_Angeles /etc/localtime && \
    dpkg-reconfigure locales && \
    locale-gen en_US.UTF-8 && \
    /usr/sbin/update-locale LANG=en_US.UTF-8

WORKDIR /home/dev
ENV HOME /home/dev
ENV LC_ALL en_US.UTF-8

# Must chown before setting USER
RUN chown -R dev:dev $HOME
USER dev

# Set env back to normal
ENV DEBIAN_FRONTEND newt

ENTRYPOINT ["vim"]
