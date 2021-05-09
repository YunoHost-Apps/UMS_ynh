#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# dependencies used by the app
pkg_dependencies="mediainfo dcraw p7zip"

MACH=`uname -m`
case "$MACH" in
 "armv6l" ) MACH="armel"
			SHA256=751b4e17078d9dc6b7e76d94e2c8d23be7e3ccec5ed5424ec2f03cd9eec392eb 
			#for some reason, jre is not in the tarball
			pkg_dependencies="$pkg_dependencies openjdk-8-jre" ;;
 "armv7l" ) if [ $(dpkg --print-architecture) = "armhf" ]; then 
 				MACH="armhf"
 				SHA256=7a128510ac3d24040a9e18e973aeed92a4014bab4cfb39a8fba77e4e05a6695a
				pkg_dependencies="$pkg_dependencies openjdk-8-jre"
 			else 
 				MACH="armel"
 				SHA256=751b4e17078d9dc6b7e76d94e2c8d23be7e3ccec5ed5424ec2f03cd9eec392eb
				pkg_dependencies="$pkg_dependencies openjdk-8-jre"
 			fi ;;
 "armv8l" ) MACH="arm64"
 			SHA256=995f43a00316d53b99bc2e87ed781bd61f826b58fd865bdcf5f60d47e0a2e0ee ;;
 "x86_64" ) MACH="x86_64"
 			SHA256=a023b36d099090ac52253882031e45ebed519a9d7937cbd1d9c2d0fcf45eb251 ;;
 * ) MACH="x86" 
 	SHA256=e48f287493fe264fab204bafbd2c916da341c647ec7cebba3c66083014f8e8c2 ;;
esac

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
# Need also the helper https://github.com/YunoHost-Apps/Experimental_helpers/blob/master/ynh_handle_getopts_args/ynh_handle_getopts_args

# Install or update the main directory yunohost.multimedia
#
# usage: ynh_multimedia_build_main_dir
ynh_multimedia_build_main_dir () {
        local ynh_media_release="v1.2"
        local checksum="806a827ba1902d6911095602a9221181"

        # Download yunohost.multimedia scripts
        wget -nv https://github.com/Yunohost-Apps/yunohost.multimedia/archive/${ynh_media_release}.tar.gz 2>&1

        # Check the control sum
        echo "${checksum} ${ynh_media_release}.tar.gz" | md5sum -c --status \
                || ynh_die "Corrupt source"

	# Check if the package acl is installed. Or install it.
	ynh_package_is_installed 'acl' \
		|| ynh_package_install acl

        # Extract
        mkdir yunohost.multimedia-master
        tar -xf ${ynh_media_release}.tar.gz -C yunohost.multimedia-master --strip-components 1
        ./yunohost.multimedia-master/script/ynh_media_build.sh
}

# Add a directory in yunohost.multimedia
# This "directory" will be a symbolic link to a existing directory.
#
# usage: ynh_multimedia_addfolder "Source directory" "Destination directory"
#
# | arg: -s, --source_dir= - Source directory - The real directory which contains your medias.
# | arg: -d, --dest_dir= - Destination directory - The name and the place of the symbolic link, relative to "/home/yunohost.multimedia"
ynh_multimedia_addfolder () {
	# Declare an array to define the options of this helper.
	declare -Ar args_array=( [s]=source_dir= [d]=dest_dir= )
	local source_dir
	local dest_dir
	# Manage arguments with getopts
	ynh_handle_getopts_args "$@"

	./yunohost.multimedia-master/script/ynh_media_addfolder.sh --source="$source_dir" --dest="$dest_dir"
}

# Move a directory in yunohost.multimedia, and replace by a symbolic link
#
# usage: ynh_multimedia_movefolder "Source directory" "Destination directory"
#
# | arg: -s, --source_dir= - Source directory - The real directory which contains your medias.
# It will be moved to "Destination directory"
# A symbolic link will replace it.
# | arg: -d, --dest_dir= - Destination directory - The new name and place of the directory, relative to "/home/yunohost.multimedia"
ynh_multimedia_movefolder () {
	# Declare an array to define the options of this helper.
	declare -Ar args_array=( [s]=source_dir= [d]=dest_dir= )
	local source_dir
	local dest_dir
	# Manage arguments with getopts
	ynh_handle_getopts_args "$@"

	./yunohost.multimedia-master/script/ynh_media_addfolder.sh --inv --source="$source_dir" --dest="$dest_dir"
}

# Allow an user to have an write authorisation in multimedia directories
#
# usage: ynh_multimedia_addaccess user_name
#
# | arg: -u, --user_name= - The name of the user which gain this access.
ynh_multimedia_addaccess () {
	# Declare an array to define the options of this helper.
	declare -Ar args_array=( [u]=user_name=)
	local user_name
	# Manage arguments with getopts
	ynh_handle_getopts_args "$@"

	groupadd -f multimedia
	usermod -a -G multimedia $user_name
}

