#!/bin/sh

case "$1" in
	start)
 		echo "loading scull, misc-modules and hello module "
  		/usr/bin/module_load faulty
 		/usr/bin/scull_load
 		/usr/bin/aesdchar_load
 		#modprobe hello
 		;;
	stop)
 		echo "unloading scull, misc-modules and hello" 
 		/usr/bin/module_unload faulty
 		/usr/bin/scull_unload
 		/usr/bin/aesdchar_unload
 		#rmmod hello
 		 ;;
 	*)
 		echo "Usage: $0 {start|stop}"
	exit 1
esac
exit 0
