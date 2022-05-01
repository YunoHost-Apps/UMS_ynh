#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# dependencies used by the app
pkg_dependencies="mediainfo dcraw p7zip"

mach=`uname -m`

sha256_arm64=89b662b321ea30d69bc67d603f807f1cac3ad96b34efdf76928e42822d4c1d6a
sha256_armel=5cf3522442459aaef80deed1a40e673179ec59936ad3c16901d9a29d430342d4
sha256_armhf=632de1a4a54ef1a88a2a45d38212f7463e95cd6185a709e047103ceea70d0bf7
sha256_x86_64=55be296603b94a26c35906cba005509448b367a4bbe182d90958b5f14f088906
sha256_x86=29231aa88d3789f58c5274e578d1ea0e16ea930ca61ca3f056c18615d4d7c6c3

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
 			sha256=$sha256_arm64
 			pkg_dependencies="$pkg_dependencies openjdk-8-jre" ;;
 "aarch64" ) mach="arm64"
 			sha256=$sha256_arm64
 			pkg_dependencies="$pkg_dependencies openjdk-8-jre" ;;
 "x86_64" ) mach="x86_64"
 			sha256=$sha256_x86_64 ;;
 * ) mach="x86" 
 	sha256=$sha256_x86 ;;
esac
