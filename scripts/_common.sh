#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# dependencies used by the app
pkg_dependencies="mediainfo dcraw p7zip"

mach=`uname -m`

sha256_arm64=365f475fbf6bfa1707059c58f04d8bd278ac198687ed079cdf9558ce907f99e8
sha256_armel=b2a2183fa1c8fb7fd21b26350de99e4111443be1418eaf1245b46d893fa1dda4
sha256_armhf=f3058462c4134bee62616c46b0642396ca61a393f2f1238052d1dc2af156234c
sha256_x86_64=a6d5fd04bbece4f8f5ecfb62e6d7cdb5b03f58d13fb1428d7568b8f97389d129
sha256_x86=8b9dd457ff8c86c15f6ca06335c7c62c750547911ed740195c9447e9d3e84888

case "$mach" in
 "armv6l" ) mach="armel"
			sha256=$sha256_armel
			#for some reason, jre is not in the tarball
			pkg_dependencies="$pkg_dependencies openjdk-8-jre" ;;
 "armv7l" ) if [ $(dpkg --print-architecture) = "armhf" ]; then 
 				mach="armhf"
 				sha256=$sha256_armhf
				pkg_dependencies="$pkg_dependencies openjdk-8-jre"
 			else 
 				mach="armel"
 				sha256=$sha256_armel
				pkg_dependencies="$pkg_dependencies openjdk-8-jre"
 			fi ;;
 "armv8l" ) mach="arm64"
 			sha256=$sha256_arm64 ;;
 "x86_64" ) mach="x86_64"
 			sha256=$sha256_x86_64 ;;
 * ) mach="x86" 
 	sha256=$sha256_x86 ;;
esac
