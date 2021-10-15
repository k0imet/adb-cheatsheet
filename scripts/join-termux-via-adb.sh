#!/bin/bash

# - iNFO -----------------------------------------------------------------------------
#
#        Author: wuseman <wuseman@nr1.nu>
#      FileName: join-termux-via-adb.sh
#       Version: 1.0
#
#       Created: 2021-09-11 (11:16:16)
#      Modified: 2021-09-26 (21:12:52)
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

# Go install termux from playstore or via an apk
# In termux, run 

    apt update; 
    apt install openssh -y -qq

### Once done, add your ssh_id.pub to authorized_keys file. 
### This file is created when you installing openssh via apt

### If your device is rooted, do as below

cat ~/.ssh/id_rsa.pub   # Copy your key
echo "...key" >> /data/data/com.termux/files/home/.ssh/authorized_keys

### If your device is not rooted, go add the key manually and it's done.

From now you are able to ssh into your termux setup: 

    ssh -p 8022 <android_device>

    All Done!

### SSH is a bit laggy imo when working in cli, then things must go 
### be running quick and smooth, if you share this opinion with me, the do:

### We gonan setup a port forwarding, this require usb:
### Port: 8022 is used since thats the default openssh port in termux

    adb forward tcp:8022 tcp:8022

### Now just ssh into your device and things going to run much faster: 

    ssh localhost -p 8022

### You must forward the port everytime your device is unplugged or your pc is restarted:
### Tips and tricks, add below to alias
# -> adb forward tcp:8022 tcp:8022 && adb forward tcp:8080 tcp:8080 && ssh localhost -p 802
