#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# dependencies used by the app
pkg_dependencies="mediainfo dcraw p7zip"

mach=`uname -m`

sha256_arm64=01febdabb3b43e1bf7a2d563d9b26b337d0ee3dcd4696fe7c201bf5350d40842
sha256_armel=d55425fe9ad11a808fbbd10a73b3d342718807d892cf1ec84ec5096895408036
sha256_armhf=7680ea43ace00f59658bbf83d9754e2f5ba90ae03af4dc5f125f041397fb16dd
sha256_x86_64=3e6165ef22a769f4974d80bb5956b887b70ef64d2d16cdb3c0a2d4b28204547a
sha256_x86=22a0fe3f0012e1bbd504b35649a3d0c4b6ce336e58db2f5ce40d656c5e6ac7bc

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
