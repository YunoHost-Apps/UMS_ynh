#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# dependencies used by the app
pkg_dependencies="mediainfo dcraw p7zip"

mach=`uname -m`

sha256_arm64=5b9a0ba69dd60bc08e09f789c3e5bc497bc0ac15cc8ae6cec947972891600b09
sha256_armel=891bf8c965099f24742a5ee1cc98c9e44ead7d45c1ddd49c2d94ce1c82556312
sha256_armhf=7ebf9797fc96e191b8741ce77be6efa000e4707c061f22c94f52bb26212983e7
sha256_x86_64=bbf469c3ae5ea25312dd616c16888e9e471565d57361d44f58ecf68db8354ec6
sha256_x86=81c3335f61de0c883f679b60dbfdcba4a0be28c4bfea77d22ad4811bf8b13ad9

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
