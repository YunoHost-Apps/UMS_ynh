#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# dependencies used by the app
pkg_dependencies="mediainfo dcraw p7zip"

mach=`uname -m`

sha256_arm64=23b1bb23118cf0128c752c4e19afb2ad7f3a3830d24b4755f5fb8ebcf42e5c0d
sha256_armel=0785e8a3e3078a3956cf05b1f41b3f63e57df2e840f4e9a0af929e688cef0244
sha256_armhf=031ca6ac177212abd91b2cf8de39a6c09804935e0c775392ea78271023d770ab
sha256_x86_64=b6238039647660c23f3376c6524167fc845c4ca5ad5a5c13b21259ac7c96af20
sha256_x86=27e9d29297b3fb54e0c5db26f42e8dba218f38c8ee8eaa661db5d490a0fc2081

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
 			sha256=$sha256_arm64
 			pkg_dependencies="$pkg_dependencies openjdk-8-jre" ;;
 "aarch64" ) mach="arm64"
 			sha256=$sha256_arm64
 			pkg_dependencies="$pkg_dependencies openjdk-11-jre" ;;
 "x86_64" ) mach="x86_64"
 			sha256=$sha256_x86_64 ;;
 * ) mach="x86" 
 	sha256=$sha256_x86 ;;
esac
