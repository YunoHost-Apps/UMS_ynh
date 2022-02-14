#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# dependencies used by the app
pkg_dependencies="mediainfo dcraw p7zip"

mach=`uname -m`

sha256_arm64=9bfbb42c68bf4fcdaaa37ab442bab42a56075b70d9092fbd4062c0f2d75fc570
sha256_armel=7ac0048d9908afdb66b724dc571b7fbdbfd0cb18d18248a5667ca066ecd1515f
sha256_armhf=70c3b834140816837c102541e3025b01795ff0d530ae82d21e308d2dc140bc08
sha256_x86_64=dd0aa1347dc223b83b647efc8004752624a187af937f838441fc259dd8d98077
sha256_x86=c7d948d2245f306f95661808cb279563ac792d68f04b33c54f35c2d47d73ed49

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
