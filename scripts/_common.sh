#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# dependencies used by the app
pkg_dependencies="mediainfo dcraw p7zip"

MACH=`uname -m`
case "$MACH" in
 "armv6l" ) MACH="armel"
			SHA256=781ccf547298cad5fa1a23a58515257508442f02165744bc1d8c9894f6323dff
			#for some reason, jre is not in the tarball
			pkg_dependencies="$pkg_dependencies openjdk-8-jre" ;;
 "armv7l" ) if [ $(dpkg --print-architecture) = "armhf" ]; then 
 				MACH="armhf"
 				SHA256=649740993f4f022293190784c3343d3fa976b4d8bc5b807f630856aea722e259
				pkg_dependencies="$pkg_dependencies openjdk-8-jre"
 			else 
 				MACH="armel"
 				SHA256=781ccf547298cad5fa1a23a58515257508442f02165744bc1d8c9894f6323dff
				pkg_dependencies="$pkg_dependencies openjdk-8-jre"
 			fi ;;
 "armv8l" ) MACH="arm64"
 			SHA256=c1bd700f5bd6f75e7f188b56f3452793ba029d1843609195606822f2e609b60b ;;
 "x86_64" ) MACH="x86_64"
 			SHA256=bb800be0a4d2ab370dd35d17bc96e94eea6f715b8a12efdb722b07abfda5c6c0 ;;
 * ) MACH="x86" 
 	SHA256=bd1d82efe492387c225bfea5c3b0e3c85c0a01eb979e5140d6730c42a80d07fa ;;
esac
