#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# dependencies used by the app
pkg_dependencies="mediainfo dcraw p7zip"

mach=`uname -m`
case "$mach" in
 "armv6l" ) mach="armel"
			sha256=4975bf06ad5cac301411302294a2dd36a337772d409f0b236640d75163e09dc1
			#for some reason, jre is not in the tarball
			pkg_dependencies="$pkg_dependencies openjdk-8-jre" ;;
 "armv7l" ) if [ $(dpkg --print-architecture) = "armhf" ]; then 
 				mach="armhf"
 				sha256=ff3b7182d741b142b6708690239ff390c017ae0cdb0be0fd45bbd601686c61e1
				pkg_dependencies="$pkg_dependencies openjdk-8-jre"
 			else 
 				mach="armel"
 				sha256=4975bf06ad5cac301411302294a2dd36a337772d409f0b236640d75163e09dc1
				pkg_dependencies="$pkg_dependencies openjdk-8-jre"
 			fi ;;
 "armv8l" ) mach="arm64"
 			sha256=9ee0844e9f32d14ffcbdec8f001767ae0bfc412e26bb3e63308f3df6b638bcb3 ;;
 "x86_64" ) mach="x86_64"
 			sha256=c0116491f44ae7345a6f991f847bc746761e54ccfeb54ad78a9059271c3af40b ;;
 * ) mach="x86" 
 	sha256=426eebd0b516bc271fda4dab808e9fb2e1afd3a3e480d916e3ab6db456fd82d6 ;;
esac
