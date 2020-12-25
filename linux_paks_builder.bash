#!/bin/bash

# Description:
# by using utility "qpakman",
# creating Quake2 PAK-files at output directory (root of project for later use by GitHub Actions),
# from dirs/files of each directory from user provided list
# 2020-09 by Amok[MEn]

# Assuming that this script is running from project root directory

# This path would be part of absolute path, so here should not be any prefix dot and "/"
# Just "qpakman" --> would search tool at the same path where script was run from
PAK_CREATION_TOOL_PATH="qpakman"

# Each dir here would become PAK-file
# HARDCODE! If change this list - change also GitHub Actions workflow!
LIST_SOURCE_DIRS_NAMES="pak96_env pak97_models pak98_pics pak99_textures pak97_models_bright pak95_v_models"

# Here would be all created PAK-files
OUTPUT_DIR_NAME="."

# Log file name
LOG_FILE_NAME="qpakman.log"

######################### DO NOT EDIT BELOW! ################################

printf '##########################################################################################\n'
printf "Shell-script by Amok for creating Quake2 PAK-files for GitHub 'tosher/q2textures' project.\n"
printf '##########################################################################################\n\n'

# One-liner which will give you the full directory name of the script no matter where it is being called from
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

ABSOLUTE_LOG_PATH=$SCRIPT_DIR/$LOG_FILE_NAME
ABSOLUTE_OUTPUT_DIR_PATH=$SCRIPT_DIR/$OUTPUT_DIR_NAME
ABSOLUTE_QPAKMAN_PATH=$SCRIPT_DIR/$PAK_CREATION_TOOL_PATH

# Creating empty directory for builded PAK files
if [ -d "$ABSOLUTE_OUTPUT_DIR_PATH" ]; then
        printf "[INFO] output directory '$ABSOLUTE_OUTPUT_DIR_PATH' already exist, do nothing.\n"
else
        printf "[INFO] output directory is not exist, creating '$ABSOLUTE_OUTPUT_DIR_PATH'.\n"
        mkdir $ABSOLUTE_OUTPUT_DIR_PATH
fi

# Removed this functional because it's hardcoded anyway, so no need to search all dirs with prefix
# Get list of all directories in project folder which name starts from "pak*"
#LIST_SOURCE_DIRS_NAMES=$(ls $SCRIPT_DIR | grep "^pak")

# Trying to run and get qpakman version
VER=$($ABSOLUTE_QPAKMAN_PATH | grep "Andrew" | cut -d" " -f3)

# Checking if variable is not empty
if [ $VER ]; then
        printf "[OK] tool 'qpakman' version $VER is available, processing...\n\n"
else
        printf "[ERROR] Could not run tool 'qpakman', terminating script now!\n"
        exit 1
fi

# Creating&clearing log file and adding date&time
echo $(date +"%Y-%m-%d %T") >$ABSOLUTE_LOG_PATH

# Looping, creating 1 pak file from each directory
for DIRNAME in $LIST_SOURCE_DIRS_NAMES; do
        # Cheking if each dir is exist (if there is no checking and dir is not exist, then pushd would exit with error and PWD would be project root directory which qpakman would pak)
        if [ -d "$SCRIPT_DIR/$DIRNAME" ]; then
                printf "[OK] source directory '$SCRIPT_DIR/$DIRNAME' exist.\n"
        else
                printf "[ERROR] source directory is not exist, terminating script now!\n"
                exit 1
        fi

        printf "Trying to build '$DIRNAME.pak' from source directory '$DIRNAME' ...\n"
        pushd $SCRIPT_DIR/$DIRNAME >/dev/null 2>&1
        # options are:
        # * --> list of all dirs, subdirs, files which would be added into PAK-file
        # -raw --> do not trying to convert (w/o this would try to convert all PNG files from dir 'textures' and it's subdirs and there would be a lot of failures!)
        # -game quake2 --> building PAK file for Quake2
        # -o somedir/some.pak --> output PAK file would be into build directory with name like "pak99_textures.pak"
        # tee --> redirecting STDOUT (not STDERR!) to log file with APPENDING each tool run result to one log file
        # grep --> showing last important resulting line from 'qpakman'
        $ABSOLUTE_QPAKMAN_PATH * -raw -game quake2 -o $ABSOLUTE_OUTPUT_DIR_PATH/$DIRNAME.pak | tee -a $ABSOLUTE_LOG_PATH | grep "^Packed"
        printf "Exit code for 'qpakman' is --> $?\n\n"
        popd >/dev/null 2>&1
done

printf "Check full log here: $ABSOLUTE_LOG_PATH\n"

exit 0
