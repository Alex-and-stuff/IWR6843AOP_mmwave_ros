FROM nvidia/cuda:11.0.3-cudnn8-devel-ubuntu18.04

ENV DEBIAN_FRONTEND noninteractive
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8
ENV ROS_DISTRO melodic
ARG GAZ=gazebo9
###################################### user #####################################

ENV SHELL=/bin/bash \
    NB_USER=ldsc \
    NB_UID=1000 \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8

RUN adduser --disabled-password \
    --gecos "Default user" \
    --uid ${NB_UID} \
    ${NB_USER} 

RUN echo "root:root" | chpasswd
RUN echo "${NB_USER}:111111" | chpasswd

ENV HOME=/home/${NB_USER}
##################################### basic tools #####################################
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A4B469963BF863CC

RUN apt-get -o Acquire::ForceIPv4=true update && apt-get -yq dist-upgrade \
    && apt-get -o Acquire::ForceIPv4=true install -yq --no-install-recommends \
    vim \
    wget \
    sudo \
    cmake \
    gedit \
    gnupg2 \
    gtk+-3.0 \
    locales \
    dirmngr \
    mercurial \
    net-tools \
    lsb-release \
    openssh-client \
    build-essential \
    libcanberra-gtk-module \
    libcanberra-gtk3-module \
    libpcap-dev \
    libusb-1.0 \
    tzdata \
    libglfw3-dev \
    libmetis-dev \
    python-gtk2 \
    python-gobject \
    python-tk \
    software-properties-common \
    ruby \
    python3-pip \
    python3-setuptools \
    python3-numpy \
    python3-empy  \
    python3-opencv \
    python3-dbg \
    python3-venv \
    python3-dev \
    python3-yaml \
    libfltk1.3-dev \ 
    freeglut3-dev \ 
    libpng-dev \ 
    libjpeg-dev \
    libxft-dev \ 
    libxinerama-dev \ 
    libtiff5-dev \ 
    netbase \ 
    fluid \
    xterm \
    qtbase5-dev \
    && apt-get update && apt-get install -y git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

###################################### ROS #####################################

# setup sources.list
RUN echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list \
    && echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable $(lsb_release -sc) main" > /etc/apt/sources.list.d/gazebo-stable.list

# setup keys
RUN apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654 \
    && wget http://packages.osrfoundation.org/gazebo.key -O - | apt-key add -


# install bootstrap tools
RUN apt-get -o Acquire::ForceIPv4=true update && apt-get -o Acquire::ForceIPv4=true install --no-install-recommends -y \
    ${GAZ} \
    lib${GAZ}-dev \
    ros-$ROS_DISTRO-desktop-full \
    ros-$ROS_DISTRO-mavros \
    ros-$ROS_DISTRO-mavros-extras \
    ros-$ROS_DISTRO-octomap-* \
    ros-$ROS_DISTRO-gazebo-plugins \
    ros-$ROS_DISTRO-gazebo-ros \
    ros-$ROS_DISTRO-gazebo-ros-control \
    ros-$ROS_DISTRO-gazebo-ros-pkgs \
    ros-$ROS_DISTRO-effort-controllers \
    ros-$ROS_DISTRO-geographic-info \
    ros-$ROS_DISTRO-hector-gazebo-plugins \
    ros-$ROS_DISTRO-joint-state-controller \
    ros-$ROS_DISTRO-joint-state-publisher \
    ros-$ROS_DISTRO-joy \
    ros-$ROS_DISTRO-joy-teleop \
    ros-$ROS_DISTRO-kdl-parser-py \
    ros-$ROS_DISTRO-key-teleop \
    ros-$ROS_DISTRO-move-base \
    ros-$ROS_DISTRO-robot-localization \
    ros-$ROS_DISTRO-robot-state-publisher \
    ros-$ROS_DISTRO-rqt \
    ros-$ROS_DISTRO-rqt-common-plugins \
    ros-$ROS_DISTRO-rqt-robot-plugins \
    ros-$ROS_DISTRO-teleop-tools \
    ros-$ROS_DISTRO-teleop-twist-joy \
    ros-$ROS_DISTRO-teleop-twist-keyboard \
    ros-$ROS_DISTRO-tf2-geometry-msgs \
    ros-$ROS_DISTRO-tf2-tools \
    ros-$ROS_DISTRO-urdfdom-py \
    ros-$ROS_DISTRO-velodyne-gazebo-plugins \
    ros-$ROS_DISTRO-xacro \
    ros-$ROS_DISTRO-pointcloud-to-laserscan \
    ros-$ROS_DISTRO-spacenav-node \
    ros-$ROS_DISTRO-tf2-sensor-msgs \
    ros-$ROS_DISTRO-twist-mux \
    ros-$ROS_DISTRO-velodyne-simulator \
    ros-$ROS_DISTRO-soem \
    ros-$ROS_DISTRO-openslam-gmapping \
    ros-$ROS_DISTRO-geodesy \
    ros-$ROS_DISTRO-ddynamic-reconfigure \
    ros-$ROS_DISTRO-rviz-imu-plugin \
    python-catkin-tools \
    python-rosdep \
    python-rosinstall \
    python-rosinstall-generator \
    python-wstool \
    python-vcstool \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*



##################################### Settings #####################################

RUN echo "root ALL=(ALL)  ALL" >> /etc/sudoers \
    && echo "source /opt/ros/${ROS_DISTRO}/setup.bash" >> ${HOME}/.bashrc 

# Support of nvidia-docker 2.0
ENV NVIDIA_VISIBLE_DEVICES=all
ENV NVIDIA_DRIVER_CAPABILITIES=all
