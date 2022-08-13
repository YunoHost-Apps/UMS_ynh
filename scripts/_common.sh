#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# dependencies used by the app
pkg_dependencies="mediainfo dcraw p7zip"

mach=`uname -m`

sha256_arm64=1402af4a8b9235c5b7e074694fbc2b0d16be77c7124b00e143e174fb585d3711
sha256_armel=1432dcec235b2ecfd674a1d9c8400dc2022ebe135b4f6b26ccd18d263e1ec8d9
sha256_armhf=cf9ba4dad0776c6f8bc3dfe2faf3baeec16f599a613d3afddaab55ad0ad5c41d
sha256_x86_64=eca4900b51518153206dd0cddf7fbc4ed2e74e8bd9291b9d63ff2346da95581e
sha256_x86=1bdbd61ebd34e0967c902f0832abe77575964acdffb282126122c76827695f71

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
