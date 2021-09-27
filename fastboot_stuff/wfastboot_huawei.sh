#!/bin/bash

# - iNFO -----------------------------------------------------------------------------
#
#        Author: wuseman <wuseman@nr1.nu>
#      FileName:  
#       Version: 1.0
#
#       Created: 2021-09-03 (11:28:23)
#      Modified: 2021-09-03 (11:28:49)
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
           __           _   _                 _   
__      __/ _| __ _ ___| |_| |__   ___   ___ | |_ 
\ \ /\ / / |_ / _` / __| __| '_ \ / _ \ / _ \| __|
 \ V  V /|  _| (_| \__ \ |_| |_) | (_) | (_) | |_ 
  \_/\_/ |_|  \__,_|___/\__|_.__/ \___/ \___/ \__|
                                                 

# Fastboot

##### Print device info

    fastboot getvar all
    (bootloader) version:0.5
    (bootloader) variant:MTP eMMC
    (bootloader) secure:yes
    (bootloader) version-baseband:
    (bootloader) version-bootloader:
    (bootloader) display-panel:
    (bootloader) off-mode-charge:0
    (bootloader) charger-screen-enabled:0
    (bootloader) max-download-size: 0x20000000
    (bootloader) partition-type:cache:ext4
    (bootloader) partition-size:cache:       0x20000000
    (bootloader) partition-type:userdata:ext4
    (bootloader) partition-size:userdata:    0x5ba000000
    (bootloader) partition-type:system:ext4
    (bootloader) partition-size:system:      0x15d800000
    (bootloader) dm_count:0
    (bootloader) lock_count:1
    (bootloader) unlock_count:2
    (bootloader) serialno:LGH87011067135
    (bootloader) kernel:lk
    (bootloader) product:MSM8996
    (bootloader) unlocked:yes

##### Fastboot commands

    fastboot erase config
    fastboot reboot
    fastboot oem get-psid                               #_Print_Serial_and_IMEI
    fastboot getvar rescue_version                      #_Print_rescue_mode
    fastboot getvar rescue_phoneinfo                    #_Print_phone_model
    fsatboot getvar_vendorcountry                       #_Print_vendorcountry
    fastboot getvar rescue_ugs_port                     #_Print_rescue_ugs_port
    fastboot getvar rescue_enter_recovery               #_Enter_recovery
    fastboot getvar max-download-size                   #_Print_max_download_size
    fastboot getvar error_print                         #_Print_amount_of_errors
    fastboot getvar partition-type                      #_Print_partition_type
    fastboot oem get_key_version                        #_Print_version_key
    fastboot oem battery_present_check                  #_Print_battery_millivolt
    fastboot continue                                   #_Fastboot_continue
    fastboot oem get_hwnff_ver                          #_Get_hwnff_version
    fastboot oem reboot_boot_dump                       # UNKNOWN
    fastboot getvar rescue_version                      # Print rescue version
    fastboot getvar rescue_phoneinfo                    # Print rescue model
    fastboot getvar devicemodel                         # Print device model
    fastboot getvar rescue_ugs_port                     # Print rescue port
    fastboot getvar error_print                         # Error Print
    fastboot getvar rescue_enter_recovery               # Enter recover
    fastboot getvar rescue_get_hwid                     # (bootloader) xxxxxxxxxxxx / xxxxxxxxxxxx (bootloader)
    fastboot getvar inject_bootfail_memory_address      # NO DESCRIPTION - FOUND WHEN I CRACKED THE BOOTLOADER
    fastboot getvar rescue_get_updatetoken              # NO DESCRIPTION - FOUND WHEN I CRACKED THE BOOTLOADER
    fastboot getvar max-download-size                   # NO DESCRIPTION - FOUND WHEN I CRACKED THE BOOTLOADER
    fastboot oem check-rootinfo                         # NO DESCRIPTION - FOUND WHEN I CRACKED THE BOOTLOADER
    fastboot oem get-bootinfo                           # NO DESCRIPTION - FOUND WHEN I CRACKED THE BOOTLOADER
    fastboot oem get-product-model                      # NO DESCRIPTION - FOUND WHEN I CRACKED THE BOOTLOADER
    fastboot oem get-build-number                       # NO DESCRIPTION - FOUND WHEN I CRACKED THE BOOTLOADER
    fastboot oem unlock
    fastboot oem check-image
    fastboot oem relock
    fastboot oem frp-unlock
    fastboot oem get_key_version
    fastboot oem battery_present_check
    fastboot oem unlock_func
    fastboot oem get_hwnff_ver
    fastboot getvar error_print
    fastboot oem oeminforead
    fastboot oem get_bootFail_ver_func
    fastboot oem func
    fastboot oem get_bootFail_info_func
    fastboot oem relock_func
    fastboot oem reboot_boot_dump_func
    fastboot oem hwdog certify begin
    fastboot oem get-product-model
    fastboot oem get-build-number
    fastboot oem get_hwnff_ver_func
    fastboot flashing unlock

    EOF
