#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# dependencies used by the app
pkg_dependencies="mediainfo dcraw p7zip"

mach=`uname -m`

sha256_arm64=ce22661f83df554065e04445c485ee76462afc28aeca1bfe9e8d8500a203a83f
sha256_armel=da7a77a29a0f6bf57c27ea27f720b11434016b4004d7d393af20c1df27dca845
sha256_armhf=2c86cf254d4968d8be300cfc9c721cd83111743144a08d89361ba8aba63b780f
sha256_x86_64=69ebc27143c95e0acaf56b4fb1d6e5aa215291ed5e1a8fbcac53833071715af9
sha256_x86=f03f7191759eb3025a2fd63935b8db2176246300a8aad352601f6a37c58d221a

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
