#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# dependencies used by the app
pkg_dependencies="mediainfo dcraw p7zip"

mach=`uname -m`

sha256_arm64=13b2aa5067c29fcb77956e0804ee96935cf731d1a88d3a24c15dd70964d45c73
sha256_armel=f0f9b517fbcedd4b4883ef5de1a6bd96ba1740658220f52037fdb6a4a14d8543
sha256_armhf=864924728649edb50a0b679fd058dcf0e6e4abbcf96a4ceb0c63e48f6b5514ce
sha256_x86_64=32cd336096e373bf8b05d2b654bdac688b6daba3e0317be8ae63436820bdb6a4
sha256_x86=18e897527abe618d477036198f963fadac737cf37ad12234cb40ba701afc736d

case "$mach" in
 "armv6l" ) mach="armel"
			sha256=$sha256_armel
			#for some reason, jre is not in the tarball
			pkg_dependencies="$pkg_dependencies openjdk-17-jre" ;;
 "armv7l" ) if [ $(dpkg --print-architecture) = "armhf" ]; then 
 				mach="armhf"
 				sha256=$sha256_armhf
 			else 
 				mach="armel"
 				sha256=$sha256_armel
 			fi 
 			pkg_dependencies="$pkg_dependencies openjdk-17-jre";;
 "armv8l" ) mach="arm64"
 			sha256=$sha256_arm64
 			pkg_dependencies="$pkg_dependencies openjdk-17-jre" ;;
 "aarch64" ) mach="arm64"
 			sha256=$sha256_arm64
 			pkg_dependencies="$pkg_dependencies openjdk-17-jre" ;;
 "x86_64" ) mach="x86_64"
 			sha256=$sha256_x86_64 ;;
 * ) mach="x86" 
 	sha256=$sha256_x86 ;;
esac
