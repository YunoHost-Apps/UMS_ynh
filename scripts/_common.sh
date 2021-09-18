#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# dependencies used by the app
pkg_dependencies="mediainfo dcraw p7zip"

mach=`uname -m`

sha256_arm64=511df8e139974222fbd6803ac901d9e17041b4cc5763ccf879ea70cd7b5265b8
sha256_armel=c3b52a8a086723ecb67b7a970dc7e7f90698fb6da0957afb0aa69fb03e066b6d
sha256_armhf=8e85204a7648a11b8d993aee277ecd43ab0fd6cb4541b7d16dfbb332b2b2a3e1
sha256_x86_64=d66170780699533810fbefee81a688cae6d18972a810eebc566aa4e2e636c919
sha256_x86=268e43886a4312f5eaaae06f6d081e8f217bb2b5bbb2b84566946bced92f6d48

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
