#!/bin/bash

# - iNFO -----------------------------------------------------------------------------
#
#        Author: wuseman <wuseman@nr1.nu>
#      FileName: wapk-modify.sh
#       Version: 1.0
#
#       Created: 2018-XX-XX (XX:XX:XX)
#      Modified: 2021-10-15 (02:47:37)
#
#           iRC: wuseman (Libera/EFnet/LinkNet) 
#       Website: https://www.nr1.nu/
#        GitHub: https://github.com/wuseman/
#
# - Descrpiption --------------------------------------------------------------------
#
#      No description has been added
#
# - LiCENSE -------------------------------------------------------------------------
#
#      Copyright (C) 2021, wuseman                                     
#                                                                       
#      This program is free software; you can redistribute it and/or modify 
#      it under the terms of the GNU General Public License as published by 
#      the Free Software Foundation; either version 3 of the License, or    
#      (at your option) any later version.                                  
#                                                                       
#      This program is distributed in the hope that it will be useful,      
#      but WITHOUT ANY WARRANTY; without even the implied warranty of       
#      MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the        
#      GNU General Public License for more details.                         
#                                                                       
#      You must obey the GNU General Public License. If you will modify     
#      the file(s), you may extend this exception to your version           
#      of the file(s), but you are not obligated to do so.  If you do not   
#      wish to do so, delete this exception statement from your version.    
#      If you delete this exception statement from all source files in the  
#      program, then also delete it here.                                   
#
#      You should have received a copy of the GNU General Public License
#      along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
# - End of Header -------------------------------------------------------------

usage() {
    cat << EOF

wadb-extractor.sh is a tool for facialiate the work with apk files from command-line

   where:
       -c|--compile     | Compile your decrypted package to apk
       -e|--extract     | Extract any apk file
       -h|--help        | Print this help and exit
       -s|--sign        | Sign your compiled apk 

EOF
}


key() {

    if [[ ! -f $HOME/.wapk/wapk.keystore ]]; then
        printf "You must create a key to sign the apk..\n"
        mkdir -p $HOME/.wapk/
        keytool -genkey -v -keystore $HOME/.wapk/wapk.keystore -alias wapk -keyalg RSA -keysize 4096 -validity 10000
    fi
}

extractapk() {
    key

    read -p "APK To extract: " apk
    printf "You must provide a real .apk file..\n"
    printf "Extracting $apk, please wait\n"
    apktool d -r -s $apk &> /dev/null
    printf "Extracted $(echo $apk | sed 's/.apk//g') successfully..\n"
}

compressapk() {
    read -p "Path to compress: " apkcompress
    if [[ -z $apkcompress ]]; then
        printf "You must provide a path name..\n"
    else
        printf "Compressing $apkcompress, please wait\n"
        apktool b -f -d $apkcompress &> /dev/null
        printf "Compressed $(echo $apkcompress | sed 's/.apk//g') successfully..\n"
        printf "You can sign $apkcompress.apk now.."
    fi
    mv $apkcompress/dist/*.apk .

}

signapk() {
    read -p "APK To Sign: " apksign
    printf "Please wait, trying to sign $apksign\n"
    jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore $HOME/.wapk/wapk.keystore $apksign wapk
    if [[ $? -eq 0 ]]; then
        printf "\nSuccessfully signed $apksign\n\n"

        read -p "Do you want to install $apksign (y/n): " installapk
        if [[ $installapk = "y" ]]; then
            echo "Please wait, installing $apksign\n" 
            adb install $installapk
            printf "Successfully installed $installapk\n"
            exit
        else
            sleep 0 
        fi
    fi
}


key


if [[ -z $1 ]]; then
    usage
fi

if [[ $1 = "-e" ]]; then
    extractapk
fi

if [[ $1 = "-c" ]]; then
    compressapk
fi

if [[ $1 = "-s" ]]; then
    signapk
fi

