#!/bin/bash

curr_dir=`pwd`

dir=`dirname $0`
FILE_PATH=`cd  $dir;pwd`


if [ -f ~/.bashrc ]
then
	echo "Making backup of .bashrc"
	mv ~/.bashrc ~/.bashrc.backup.`date +%Y%m%d.%H%M%S`
fi


ln -s "$FILE_PATH/.bashrc" ~/.bashrc

echo "Loading new .bashrc"
. ~/.bashrc

