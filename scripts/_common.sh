#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# dependencies used by the app
pkg_dependencies="mediainfo dcraw p7zip"

mach=`uname -m`

sha256_arm64=32290c3d4217c6cc0168566691787f503204af44e44ea33d3b7a3c7bd1d4763f
sha256_armel=27d3c770885226b0e3762de81a24ea39cfe2ec0d90a595059bfb10f9252e0f7a
sha256_armhf=a7acecc62dae6dbb5c4161ee47662c427b025270b64ecb1edc932e9fed1dae28
sha256_x86_64=12533de6705ff7a7526753cf1c25c45a469f8ae743824dfa2abb40b2071459eb
sha256_x86=34ca82263301e41d1666621d8f156f5fdfef34b451eefd0829530101089328db

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
