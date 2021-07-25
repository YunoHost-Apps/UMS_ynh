#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# dependencies used by the app
pkg_dependencies="mediainfo dcraw p7zip"

MACH=`uname -m`
case "$MACH" in
 "armv6l" ) MACH="armel"
			SHA256=8a9dae0e39193967774630ab709b47ecb5377dbe2ba2bb0c2adc670845f72fdd
			#for some reason, jre is not in the tarball
			pkg_dependencies="$pkg_dependencies openjdk-8-jre" ;;
 "armv7l" ) if [ $(dpkg --print-architecture) = "armhf" ]; then 
 				MACH="armhf"
 				SHA256=7d1f35fc490aa047f44bb7f06bb35c5b0c5b891704704c419230c81485f34228
				pkg_dependencies="$pkg_dependencies openjdk-8-jre"
 			else 
 				MACH="armel"
 				SHA256=8a9dae0e39193967774630ab709b47ecb5377dbe2ba2bb0c2adc670845f72fdd
				pkg_dependencies="$pkg_dependencies openjdk-8-jre"
 			fi ;;
 "armv8l" ) MACH="arm64"
 			SHA256=775f817cc635ceffbfe9e346e0bb54b2dc98a3ccdc0141c50c65e557585fd50b ;;
 "x86_64" ) MACH="x86_64"
 			SHA256=5ed7d3d74cab76d7949f582f1258716913f68fe148c815c6d5fdb5ed089608ef ;;
 * ) MACH="x86" 
 	SHA256=b23fa9dd7e2ccfe015f0a5f93cb710bb79fd62b4ccd9477e3e88359fb918ff33 ;;
esac
