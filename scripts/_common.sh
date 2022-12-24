#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# dependencies used by the app
pkg_dependencies="mediainfo dcraw p7zip"

mach=`uname -m`

case "$mach" in
 "armv6l" ) mach="armel"
			#for some reason, jre is not in the tarball
			pkg_dependencies="$pkg_dependencies openjdk-17-jre" ;;
 "armv7l" ) if [ $(dpkg --print-architecture) = "armhf" ]; then 
 				mach="armhf"
 			else 
 				mach="armel"
 			fi 
 			pkg_dependencies="$pkg_dependencies openjdk-17-jre";;
 "armv8l" ) mach="arm64"
 			pkg_dependencies="$pkg_dependencies openjdk-17-jre" ;;
 "aarch64" ) mach="arm64"
 			pkg_dependencies="$pkg_dependencies openjdk-17-jre" ;;
 "x86_64" ) mach="x86_64" ;;
 * ) mach="x86" ;;
esac
