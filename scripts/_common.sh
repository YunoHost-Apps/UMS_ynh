#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# dependencies used by the app
pkg_dependencies="mediainfo dcraw p7zip"

mach=`uname -m`

sha256_arm64=0480572e9cb5c4aae8fddc9cea1402d7e0466a98dab4b19fe32a660a543fbf4d
sha256_armel=fbb7e56abaf3bbf55457d46d5f72843a039b039ffe5a886fce1b91c0f01c6d6e
sha256_armhf=a14163ee429b8762d477d4845859d6bf5a1ff3b77cf64f5fffc65e170e701206
sha256_x86_64=664c4f006fc66f82aaef67186d4c77b2d2c581c8756c56579397a7a6fc938d2f
sha256_x86=7e7fffe1d3ea345ef9d60a9fdb0cb38978ce8739ebffd8b0b7d799be58cfbc40

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
