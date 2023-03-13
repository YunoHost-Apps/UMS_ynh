#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# dependencies used by the app
pkg_dependencies="mediainfo dcraw p7zip"

if [[ "$YNH_ARCH" == "armhf" ]] || [[ "$YNH_ARCH" == "arm64" ]]
then
    pkg_dependencies+="openjdk-17-jre"
fi
