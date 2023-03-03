# Why I need this script ?
# NJDPB has disabled login access for sadmin user. The boxes can only be accessed by typgang user and then I have to switch to sadmin for siebel related activities.
# This creates a problem for file downloads. Since only typgang can access the box, filezilla can only be used with typgang user.
# If I need to download a log file from Siebel, I need to perform below steps
# 1. create a folder with 777 access in /home/typgang called download
# 2. copy the log file from siebel to this folder - supply file to be copied in command line parameter
# example - ./download /siebqa1/SIEBEL/siebsrvr
# 3. change mode of the copied log file to 777
# 4. use filezilla to connect to this box with typgang user
# 5. go to /home/typgang/DOWNLOAD and download the file

# Uploading a file has similar problems.
# This scrip automates steps 1-5

# !/usr/bin/ksh
DIR=/home/typgang/DOWNLOAD

if [ -s "$DIR" ]; then
    # even if folder exists, chamge mode to 777
    echo "Make sure that DOWNLOAD folder has 777 permission"
    if [ $# -eq 0 ]; then
        echo "Provide the file to download"
        exit 1
    fi
    # copy the file to destination
    scp -r $1 $DIR
    # change mode of the file
    chmod -R 777 $DIR/$1
else
    echo " switch to typgang and create $DIR with 777 permission"
fi
