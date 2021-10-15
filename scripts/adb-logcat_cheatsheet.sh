#!/bin/bash

# - iNFO -----------------------------------------------------------------------------
#
#        Author: wuseman <wuseman@nr1.nu>
#      FileName: logcat.sh 
#       Version: 1.0
#
#       Created: 2021-09-03 (00:07:31)
#      Modified: 2021-09-03 (00:07:37)
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
#     You should have received a copy of the GNU General Public License
#     along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
# - End of Header -------------------------------------------------------------

cat << "EOF"

           _ _      ____    _                       _   
  __ _  __| | |__   \ \ \  | | ___   __ _  ___ __ _| |_ 
 / _` |/ _` | '_ \   \ \ \ | |/ _ \ / _` |/ __/ _` | __|
| (_| | (_| | |_) |  / / / | | (_) | (_| | (_| (_| | |_ 
 \__,_|\__,_|_.__/  /_/_/  |_|\___/ \__, |\___\__,_|\__|
                                    |___/               

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Files / Paths
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

   N/A

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Commands                                                                                                                             
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
adb logcat -v brief -v long -v process -v raw -v tag -v thread -v threadtime -v time -v color                                   ## Run all at once, no reason for use it like this really
adb logcat -v brief                                                                                                             ## Display priority/tag and PID of the process issuing the message.
adb logcat -v long                                                                                                              ## Display all metadata fields, separate messages with blank lines.
adb logcat -v process                                                                                                           ## Display PID only.
adb logcat -v raw                                                                                                               ## Display the raw log message, with no other metadata fields.
adb logcat -v tag                                                                                                               ## Display the priority/tag only.
adb logcat -v thread                                                                                                            ## Display priority, PID and TID of process issuing the message.
adb logcat -v threadtime                                                                                                        ## Display the date, invocation time, priority, tag, and the PID (Default)
adb logcat -v time                                                                                                              ## Display the date, invocation time, priority/tag, and PID
adb logcat -v color                                                                                                             ## Use colors, were:
                                                                                                                                ## --->  Blue:  DEBUG
                                                                                                                                ## ----->  Green: INFO
                                                                                                                                ## ------->  Orange: WARNING
adb logcat -v color --format year,process,tag,long,zone -D *:V -B ActivityManager:I MyApp:D *:V
adb logcat -v color --format year,process,tag,long,zone -D *:V -B ActivityManager:I MyApp:D *:V -b radio
adb logcat -v color --format year,process,tag,long,zone -D *:V -B ActivityManager:I  *:V -b radio
 
                                                                                                                                ## --------->  RED:    ERROR and FATAL
## Thread

adb logcat --thread color
adb logcat --thread descriptive                                                                                                   ## Events logs only, descriptions from event-log-tags database.
adb logcat --thread epoch                                                                                                         ## Display time as seconds since Jan 1 1970.
adb logcat --thread monotonic                                                                                                     ## Display time as cpu seconds since last boot.
adb logcat --thread printable                                                                                                     ## Ensure that any binary logging content is escaped.
adb logcat --thread uid                                                                                                           ## If permitted, display the UID or Android ID of logged process.
adb logcat --thread usec                                                                                                          ## Display time down the microsecond precision.
adb logcat --thread UTC                                                                                                           ## Display time as UTC.
adb logcat --thread year                                                                                                          ## Add the year to the displayed time.
adb logcat --thread zone                                                                                                          ## Add the local timezone to the displayed time.
adb logcat --thread "<zone>"                                                                                                      ## Print using this public named timezone (experimental).
 
## Those can be used as: 

adb logcat -v long 

  [ 08-24 03:58:35.512  1587: 4958 I/chatty   ]
  uid=1000(system) Binder:1587_13 expire 3 lines

Then we can add year for example and output will ínclude year:

  adb logcat -v long --format zone,color,year 
    
    [ 2021-08-24 04:39:09.004 +0200  1587: 1627 I/GnssNetworkConnectivityHandler ]
    Network connection lost. Available networks count: 1

### Filter 

 adb logcat


 adb logcat *:V                                                                                                                   ## lowest priority, filter to only show Verbose level
 adb logcat *:D                                                                                                                   ## filter to only show Debug level
 adb logcat *:I                                                                                                                   ## filter to only show Info level
 adb logcat *:W                                                                                                                   ## filter to only show Warning level
 adb logcat *:E                                                                                                                   ## filter to only show Error level
 adb logcat *:F                                                                                                                   ## filter to only show Fatal level
 adb logcat *:S                                                                                                                   ## Silent, highest priority, on which nothing is ever printed

### Buffer
 adb logcat -b <Buffer>
 adb logcat -b                                                                                                                   ## radio View the buffer that contains radio/telephony related messages.
 adb logcat -b                                                                                                                   ## event View the buffer containing events-related messages.
 adb logcat -b                                                                                                                   ## main default
 adb logcat -c                                                                                                                   ## Clears the entire log and exits.
 adb logcat -d                                                                                                                   ## Dumps the log to the screen and exits.
 adb logcat -f                                                                                                                   ## test.logs Writes log message output to test.logs .
 adb logcat -g                                                                                                                   ## Prints the size of the specified log buffer and exits.
 adb logcat -n                                                                                                                   ## <count> Sets the maximum number of rotated logs to <count>.


### Backup
 adb backup [-apk] [-shared] [-system] [-all] -f file.backup
 # -apk -- Include APK from Third partie's applications
 # -shared -- Include removable storage
 # -system -- Include system Applciations
 # -all -- Include all the applications


### If you want to inspect the content of the backup:

( printf "\x1f\x8b\x08\x00\x00\x00\x00\x00" ; tail -c +25 myapp_backup.ab ) |  tar xfvz -
adb logcat -v color --format year,process,tag,long,zone -D *:D
adb logcat | grep -F "`adb shell ps | grep capplication  | tr -s [:space:] ' ' | cut -d' ' -f2`"
EOF
