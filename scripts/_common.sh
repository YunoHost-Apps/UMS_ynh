#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# dependencies used by the app
pkg_dependencies="mediainfo dcraw p7zip"

mach=`uname -m`

sha256_arm64=bb148afaf5b250ec4735bba81cb37ff8625e63e63cb9051472c725c955e3bf13
sha256_armel=8785f54195a5b0a4a126338ccd72b61b00ab59243fe34477e6c8d7d4a90ef530
sha256_armhf=a3664b1907f58b4b125a3a25bca1995bd9949843f38bc71a65908ec3d18006e0
sha256_x86_64=311102fccfb06f90d2f370106c084ff41df6bb391d4f1ceff69b13f4af39f8e6
sha256_x86=b27daf548e6c6e5a164616c5232d8752ad1c1e6c4b1da3477ce30d68904ea4b7

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
