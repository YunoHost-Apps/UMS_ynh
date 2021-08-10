#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# dependencies used by the app
pkg_dependencies="mediainfo dcraw p7zip"

mach=`uname -m`
case "$mach" in
 "armv6l" ) mach="armel"
			sha256=ba056681a3f96afd700ad57d280cb56ab20c6f288fa2b3f89ac6c95d83f11651
			#for some reason, jre is not in the tarball
			pkg_dependencies="$pkg_dependencies openjdk-8-jre" ;;
 "armv7l" ) if [ $(dpkg --print-architecture) = "armhf" ]; then 
 				mach="armhf"
 				sha256=dc7a4e8108707c4b7a4206954591dfb9aa6891f713e9f34c43c259b3a239c0f4
				pkg_dependencies="$pkg_dependencies openjdk-8-jre"
 			else 
 				mach="armel"
 				sha256=ba056681a3f96afd700ad57d280cb56ab20c6f288fa2b3f89ac6c95d83f11651
				pkg_dependencies="$pkg_dependencies openjdk-8-jre"
 			fi ;;
 "armv8l" ) mach="arm64"
 			sha256=dcba4970ab2c29aa994199a083db51ec0dee43581df4cf56503cbcf4592ba19c ;;
 "x86_64" ) mach="x86_64"
 			sha256=58dda5dec6d37ad3a352060948ec5164439df066fdb54cbdc80a17c450877f84 ;;
 * ) mach="x86" 
 	sha256=5b0d0b5854db2c3f7dffbff9c017b7c1b7a23567852800a4ffb05fb7ae7b3e62 ;;
esac
