#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# dependencies used by the app
pkg_dependencies="mediainfo dcraw p7zip"

MACH=`uname -m`
case "$MACH" in
 "armv6l" ) MACH="armel"
			SHA256=df54ec6cdbb2b0b445d29a86dce27c4580e519b5c241a039ad4b81cda0dd5c96
			#for some reason, jre is not in the tarball
			pkg_dependencies="$pkg_dependencies openjdk-8-jre" ;;
 "armv7l" ) if [ $(dpkg --print-architecture) = "armhf" ]; then 
 				MACH="armhf"
 				SHA256=588c83ae673fd7dba6ae5fd163a7c833eabeac994b9b0c3f3a39cf59d1323fe6
				pkg_dependencies="$pkg_dependencies openjdk-8-jre"
 			else 
 				MACH="armel"
 				SHA256=df54ec6cdbb2b0b445d29a86dce27c4580e519b5c241a039ad4b81cda0dd5c96
				pkg_dependencies="$pkg_dependencies openjdk-8-jre"
 			fi ;;
 "armv8l" ) MACH="arm64"
 			SHA256=2718c10fc368ae8f953de6d7eda9bbcb6ea7370c9e2b80f03cb312cc1a7d3113 ;;
 "x86_64" ) MACH="x86_64"
 			SHA256=7cbb5bb38d00acad52dd7a16afc2a3ba8a735ab31a515dffc0d132fd64e176cf ;;
 * ) MACH="x86" 
 	SHA256=d59a0cf4e7db1ef8785435c4e5e832bc1576d91d5eab35182b7d450b2dd258e8 ;;
esac
