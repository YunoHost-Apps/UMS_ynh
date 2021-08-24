#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# dependencies used by the app
pkg_dependencies="mediainfo dcraw p7zip"

mach=`uname -m`
case "$mach" in
 "armv6l" ) mach="armel"
			sha256=5f8c48404c5f9ec0e33ba1db25a26ec0bbcbac80ae971b586289873940d9bce0
			#for some reason, jre is not in the tarball
			pkg_dependencies="$pkg_dependencies openjdk-8-jre" ;;
 "armv7l" ) if [ $(dpkg --print-architecture) = "armhf" ]; then 
 				mach="armhf"
 				sha256=aac79bcdc8d84250ec7f91a0b8752c9b1e7f6b9a4a1935bdbd0f5c01cacf7d09
				pkg_dependencies="$pkg_dependencies openjdk-8-jre"
 			else 
 				mach="armel"
 				sha256=5f8c48404c5f9ec0e33ba1db25a26ec0bbcbac80ae971b586289873940d9bce0
				pkg_dependencies="$pkg_dependencies openjdk-8-jre"
 			fi ;;
 "armv8l" ) mach="arm64"
 			sha256=177460262ec4d1dfb8b28f44b4f91d79d519ca7a4afe2a6e6ed6c0d1a821a240 ;;
 "x86_64" ) mach="x86_64"
 			sha256=471b7bf68aaae7c68836b6e503ee0748cfba7b4cd01f23e408be559172dda45a ;;
 * ) mach="x86" 
 	sha256=309d61fe65cbca5b7f6fca7eff4b7a14a13f177a0912798c38f5c80dd833c7d9 ;;
esac
