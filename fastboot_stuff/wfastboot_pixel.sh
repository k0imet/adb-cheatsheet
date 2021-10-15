#!/bin/bash

# - iNFO -----------------------------------------------------------------------------
#
#        Author: wuseman <wuseman@nr1.nu>
#      FileName:  
#       Version: 1.0
#
#       Created: 2021-09-03 (22:03:46)
#      Modified: 2021-09-03 (22:03:54)
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

# Google Pixel 4
   
Various stuff for Google Pixel - To be updated


    wuseman@latitude:~$ enable oem unlock
    wuseman@latitude:~$ reboot fastboot
    wuseman@latitude:~$ fastboot devices
    99101FFAXXXX  fastboot

### Reboot to bootloader by vol down + power

    wuseman@latitude:~$ fastboot flashing unlock
    OKAY [  0.023s]
    Finished. Total time: 0.023s

### Press vol+/- and hit power button to unlock 
 
    wuseman@latitude:~$ fastboot reboot
    Rebooting                                          
    OKAY [  0.012s]
    Finished. Total time: 0.263s

### Press power button, reboot into bootloader after booted and flash twrp

    wuseman@latitude:~$ fastboot flash boot -w twrp/twrp-3.5.0_10-1-flame.img 
    Sending 'boot_b' (6 KB)                            OKAY [  0.140s]
    Writing 'boot_b'                                   OKAY [  0.152s]
    Erasing 'userdata'                                 OKAY [  8.332s]
    Erase successful, but not automatically formatting.
    File system type raw not supported.
    Erasing 'metadata'                                 OKAY [  0.137s]
    Erase successful, but not automatically formatting.
    File system type raw not supported.
    Finished. Total time: 9.470s
    wuseman@latitude:~$ 
    
    
### Chnage active bank

    root@latitude:/home/wuseman/twrp# fastboot --set-active=b 
    Setting current slot to 'b'                        OKAY [  0.157s]
    Finished. Total time: 0.174s

    
### Fastboot Commands

    root@latitude:/home/wuseman/twrp# fastboot getvar all
    (bootloader) product:flame
    (bootloader) serialno:XX1X1FFAZ001ZF
    (bootloader) variant:SM8 UFS
    (bootloader) max-download-size:0x10000000
    (bootloader) slot-suffixes:_a,_b
    (bootloader) version-bootloader:c2f2-0.3-70625XX
    (bootloader) version-baseband:g8150-00082-210106-B-XX65218
    (bootloader) secure-boot:PRODUCTION
    (bootloader) secure:yes
    (bootloader) hw-revision:MP1.0
    (bootloader) is-userspace:no
    (bootloader) slot-count:2
    (bootloader) current-slot:a
    (bootloader) unlocked:yes
    (bootloader) nos-production:yes
    (bootloader) off-mode-charge:1
    (bootloader) slot-retry-count:a:1
    (bootloader) slot-unbootable:a:no
    (bootloader) slot-successful:a:no
    (bootloader) slot-retry-count:b:0
    (bootloader) slot-unbootable:b:no
    (bootloader) slot-successful:b:yes
    (bootloader) battery-voltage:4286
    (bootloader) battery-soc-ok:yes
    (bootloader) snapshot-update-status:none
    (bootloader) storage-vendor:MICRON
    (bootloader) storage-model:64GB-UFS-MT
    (bootloader) storage-rev:8QSP
    (bootloader) citadel-fw:0.0.3/brick_v0.0.8279-f93f993XX 2021-02-04 19:23:
    (bootloader) auto-shutdown:0
    (bootloader) partition-type:ssd:raw
    (bootloader) partition-size:ssd:0x2000
    (bootloader) partition-type:persist:raw
    (bootloader) partition-size:persist:0x2000000
    (bootloader) partition-type:misc:raw
    (bootloader) partition-size:misc:0x100000
    (bootloader) partition-type:keystore:raw
    (bootloader) partition-size:keystore:0x80000
    (bootloader) partition-type:frp:raw
    (bootloader) partition-size:frp:0x80000
    (bootloader) partition-type:boot_a:raw
    (bootloader) partition-size:boot_a:0x4000000
    (bootloader) partition-type:boot_b:raw
    (bootloader) partition-size:boot_b:0x4000000
    (bootloader) partition-type:modem_a:raw
    (bootloader) partition-size:modem_a:0x6000000
    (bootloader) partition-type:modem_b:raw
    (bootloader) partition-size:modem_b:0x6000000
    (bootloader) partition-type:klog:raw
    (bootloader) partition-size:klog:0x800000
    (bootloader) partition-type:metadata:raw
    (bootloader) partition-size:metadata:0x1000000
    (bootloader) partition-type:vbmeta_system_a:raw
    (bootloader) partition-size:vbmeta_system_a:0x10000
    (bootloader) partition-type:vbmeta_system_b:raw
    (bootloader) partition-size:vbmeta_system_b:0x10000
    (bootloader) partition-type:super:raw
    (bootloader) partition-size:super:0x245800000
    (bootloader) partition-type:userdata:raw
    (bootloader) partition-size:userdata:0xC7FFFB000
    (bootloader) partition-type:xbl_a:raw
    (bootloader) partition-size:xbl_a:0x380000
    (bootloader) partition-type:xbl_config_a:raw
    (bootloader) partition-size:xbl_config_a:0x20000
    (bootloader) partition-type:xbl_b:raw
    (bootloader) partition-size:xbl_b:0x380000
    (bootloader) partition-type:xbl_config_b:raw
    (bootloader) partition-size:xbl_config_b:0x20000
    (bootloader) partition-type:ALIGN_TO_128K_1:raw
    (bootloader) partition-size:ALIGN_TO_128K_1:0x1A000
    (bootloader) partition-type:cdt:raw
    (bootloader) partition-size:cdt:0x20000
    (bootloader) partition-type:ddr:raw
    (bootloader) partition-size:ddr:0x100000
    (bootloader) partition-type:aop_a:raw
    (bootloader) partition-size:aop_a:0x80000
    (bootloader) partition-type:tz_a:raw
    (bootloader) partition-size:tz_a:0x400000
    (bootloader) partition-type:hyp_a:raw
    (bootloader) partition-size:hyp_a:0x84000
    (bootloader) partition-type:abl_a:raw
    (bootloader) partition-size:abl_a:0x200000
    (bootloader) partition-type:keymaster_a:raw
    (bootloader) partition-size:keymaster_a:0x80000
    (bootloader) partition-type:cmnlib_a:raw
    (bootloader) partition-size:cmnlib_a:0x80000
    (bootloader) partition-type:cmnlib64_a:raw
    (bootloader) partition-size:cmnlib64_a:0x80000
    (bootloader) partition-type:devcfg_a:raw
    (bootloader) partition-size:devcfg_a:0x20000
    (bootloader) partition-type:qupfw_a:raw
    (bootloader) partition-size:qupfw_a:0x14000
    (bootloader) partition-type:vbmeta_a:raw
    (bootloader) partition-size:vbmeta_a:0x10000
    (bootloader) partition-type:dtbo_a:raw
    (bootloader) partition-size:dtbo_a:0x800000
    (bootloader) partition-type:uefisecapp_a:raw
    (bootloader) partition-size:uefisecapp_a:0x200000
    (bootloader) partition-type:imagefv_a:raw
    (bootloader) partition-size:imagefv_a:0x200000
    (bootloader) partition-type:apdp_a:raw
    (bootloader) partition-size:apdp_a:0x10000
    (bootloader) partition-type:msadp_a:raw
    (bootloader) partition-size:msadp_a:0x10000
    (bootloader) partition-type:multiimgoem_a:raw
    (bootloader) partition-size:multiimgoem_a:0x8000
    (bootloader) partition-type:aop_b:raw
    (bootloader) partition-size:aop_b:0x80000
    (bootloader) partition-type:tz_b:raw
    (bootloader) partition-size:tz_b:0x400000
    (bootloader) partition-type:hyp_b:raw
    (bootloader) partition-size:hyp_b:0x84000
    (bootloader) partition-type:abl_b:raw
    (bootloader) partition-size:abl_b:0x200000
    (bootloader) partition-type:keymaster_b:raw
    (bootloader) partition-size:keymaster_b:0x80000
    (bootloader) partition-type:cmnlib_b:raw
    (bootloader) partition-size:cmnlib_b:0x80000
    (bootloader) partition-type:cmnlib64_b:raw
    (bootloader) partition-size:cmnlib64_b:0x80000
    (bootloader) partition-type:devcfg_b:raw
    (bootloader) partition-size:devcfg_b:0x20000
    (bootloader) partition-type:qupfw_b:raw
    (bootloader) partition-size:qupfw_b:0x14000
    (bootloader) partition-type:vbmeta_b:raw
    (bootloader) partition-size:vbmeta_b:0x10000
    (bootloader) partition-type:dtbo_b:raw
    (bootloader) partition-size:dtbo_b:0x800000
    (bootloader) partition-type:uefisecapp_b:raw
    (bootloader) partition-size:uefisecapp_b:0x200000
    (bootloader) partition-type:imagefv_b:raw
    (bootloader) partition-size:imagefv_b:0x200000
    (bootloader) partition-type:apdp_b:raw
    (bootloader) partition-size:apdp_b:0x10000
    (bootloader) partition-type:msadp_b:raw
    (bootloader) partition-size:msadp_b:0x10000
    (bootloader) partition-type:multiimgoem_b:raw
    (bootloader) partition-size:multiimgoem_b:0x8000
    (bootloader) partition-type:devinfo:raw
    (bootloader) partition-size:devinfo:0x1000
    (bootloader) partition-type:spunvm:raw
    (bootloader) partition-size:spunvm:0x800000
    (bootloader) partition-type:splash:raw
    (bootloader) partition-size:splash:0x8000
    (bootloader) partition-type:limits:raw
    (bootloader) partition-size:limits:0x1000
    (bootloader) partition-type:toolsfv:raw
    (bootloader) partition-size:toolsfv:0x100000
    (bootloader) partition-type:logfs:raw
    (bootloader) partition-size:logfs:0x800000
    (bootloader) partition-type:storsec:raw
    (bootloader) partition-size:storsec:0x20000
    (bootloader) partition-type:uefivarstore:raw
    (bootloader) partition-size:uefivarstore:0x80000
    (bootloader) partition-type:secdata:raw
    (bootloader) partition-size:secdata:0x7000
    (bootloader) partition-type:ALIGN_TO_128K_2:raw
    (bootloader) partition-size:ALIGN_TO_128K_2:0x1A000
    (bootloader) partition-type:modemst1:raw
    (bootloader) partition-size:modemst1:0x200000
    (bootloader) partition-type:modemst2:raw
    (bootloader) partition-size:modemst2:0x200000
    (bootloader) partition-type:fsg:raw
    (bootloader) partition-size:fsg:0x200000
    (bootloader) partition-type:fsc:raw
    (bootloader) partition-size:fsc:0x20000
    (bootloader) partition-type:system_a:raw
    (bootloader) partition-size:system_a:0x3114D000
    (bootloader) partition-type:vendor_a:raw
    (bootloader) partition-size:vendor_a:0x2DC9E000
    (bootloader) partition-type:product_a:raw
    (bootloader) partition-size:product_a:0x82811000
    (bootloader) partition-type:system_ext_a:raw
    (bootloader) partition-size:system_ext_a:0xEAC2000
    (bootloader) partition-type:system_a-cow:raw
    (bootloader) partition-size:system_a-cow:0x10594000
    (bootloader) partition-type:vendor_a-cow:raw
    (bootloader) partition-size:vendor_a-cow:0x28232000
    (bootloader) partition-type:product_a-cow:raw
    (bootloader) partition-size:product_a-cow:0x2872000
    (bootloader) partition-type:system_ext_a-cow:raw
    (bootloader) partition-size:system_ext_a-cow:0x8496000
    all: 
    Finished. Total time: 0.225
    
    
    root@latitude: fastboot oem dmesg
    (bootloader) UEFI Start     [  830]
    (bootloader)  - 0x09FC01000 [  833] Sec.efi
    (bootloader) ASLR        : ON
    (bootloader) DEP         : ON (RTB)
    (bootloader) Timer Delta : +1 mS
    (bootloader) RAM Entry 0 : Base 0x0000000080000000  Size 0x000000003CC00
    (bootloader) 000
    (bootloader) RAM Entry 1 : Base 0x00000000C0000000  Size 0x0000000140000
    (bootloader) 000
    (bootloader) UART Buffer size set to 0x8000 
    (bootloader) Continue booting UEFI on Core 0
    (bootloader) UEFI Ver    : 5.0.210312.BOOT.XF.3.0-00580-SM8150LZB-1
    (bootloader) Build Info  : 64b Mar 12 2021 10:02:35
    (bootloader) Boot Device : UFS
    (bootloader) PROD Mode   : TRUE
    (bootloader) Retail      : TRUE
    (bootloader) UFS INQUIRY ID: MICRON  64GB-UFS-MT     8QSP
    (bootloader) HW Wdog Setting from PCD : Disabled
    (bootloader) PM0: 30, PM1: 32, PM2: 39, 
    (bootloader) DisplayDxe: Panel found <nt37280_2b8t_dsc_fhd_cmd>
    (bootloader) DisplayDxe: Resolution 1080x2280 (1 intf)
    (bootloader) DisplayDxe: Display 1 not supported!
    (bootloader) DisplayDxe: Display 2 not supported!
    (bootloader) UsbConfigLibOpenProtocols: PMI version (0x20)
    (bootloader) UsbConfigLibOpenProtocols: gPmicNpaClientSS2 cannot be crea
    (bootloader) ted
    (bootloader) UsbConfigPortsQueryConnectionChange: usbport->connectstate:
    (bootloader)  ATT
    (bootloader) ISENSE TOTAL TIME 1ms
    (bootloader) DSI read: address: 0x0A, readback: 0x9C, uRetryCount: 0
    (bootloader) PinCtrl:59 type 3 val 0
    (bootloader) PinCtrl:0 type 0 val 0
    (bootloader) WaitParallelThreads InIt [ 1442] 
    (bootloader) -----------------------------
    (bootloader) Platform Init  [ 1468] BDS
    (bootloader) UEFI Ver   : 5.0.2XX312.BOOT.XF.3.0-00580-SM8150LZB-1
    (bootloader) Platform           : OEM
    (bootloader) Chip Name          : SM8150
    (bootloader) Chip Ver           : 2.2
    (bootloader) Chip Serial Number : 0xD364F38F
    (bootloader) -----------------------------
    (bootloader) PmicDxe:: info (1720Xmaxfg/pmic): SOC(100/94) V(19/4324) I2
    (bootloader) C:0 
    (bootloader) PmicDxe:: info (1720Xmaxfg/pmic): SOC(100/94) V(19/4324) I2
    (bootloader) C:0 
    (bootloader) PmicDxe:: info (1720Xmaxfg/pmic): SOC(100/94) V(19/4324) I2
    (bootloader) C:0 
    (bootloader) PmicDxe:: info (1720Xmaxfg/pmic): SOC(100/94) V(19/4324) I2
    (bootloader) C:0 
    (bootloader) PmicDxe:: info (1720Xmaxfg/pmic): SOC(100/94) V(19/4324) I2
    (bootloader) C:0 
    (bootloader) PmicDxe:: info (1720Xmaxfg/pmic): SOC(100/94) V(19/4324) I2
    (bootloader) C:0 
    (bootloader) UEFI Total : 680 ms
    (bootloader) POST Time      [ 1510] OS Loader
    (bootloader) PinCtrl:59 type 3 val 0
    (bootloader) PinCtrl:0 type 0 val 0
    (bootloader) Error to locate NfcWakeControl protocol Not Found
    (bootloader) ABL version: c2f2-0.4-7203772
    (bootloader) ABL build time: Mar 12 2021 10:01:51
    (bootloader) Reset REASON 10
    (bootloader) PinCtrl:59 type 3 val 0
    (bootloader) PinCtrl:0 type 0 val 0
    (bootloader) Error to locate NfcWakeControl protocol Not Found
    (bootloader) Enter reason of bootloader mode: combo key
    (bootloader) hsusb_phy_init_rcal_fuse: 14
    (bootloader) ssusb_phy_init_success_lane_A: 0
    (bootloader) Dev_Common_Speed: Bus Speed: High
    (bootloader) DwcGetNextEvent:Evt: UEFI AXI reordering
    (bootloader) Dev_Common_Speed: Bus Speed: High
    (bootloader) Fastboot device connected
    (bootloader) AcceptCmd:getvar:is-userspace
    (bootloader) AcceptCmd:oem device-info
    (bootloader) Fastboot: Error executing command oem device-info
    (bootloader) AcceptCmd:oem dmesg
    OKAY [  0.165s]
    Finished. Total time: 0.165s


    root@latitude: # fastboot oem citadel
    (bootloader) citadel <command>
    (bootloader) Commands:
    (bootloader)    rescue       Try to rescue Citadel
    (bootloader)    state        Print current Citadel state
    (bootloader)    reset        Reset Citadel
    (bootloader)    reset-locks  Reset AVB locks
    (bootloader)    version      Print citadel OS version
    (bootloader)    id           Print citadel device id
    (bootloader)    reprovision  Reprovision device after a RMA unlock
    (bootloader)    suzyq on|off Enable or disable SuzyQable
    (bootloader)    board_id     Print citadel board id
    (bootloader)    stats        Print citadel low power stats
    FAILED (remote: '')
    fastboot: error: Command failed
    
    
    
    
    # Flash and Install Android 12 (Beta 2021-05-26) 
    
    wuseman@latitude:~/flame-spb1.210331.013$ bash flash-all.sh h
    Sending 'bootloader_a' (8833 KB)                   
    OKAY [  0.340s]
    Writing 'bootloader_a'                            
    (bootloader) Flashing Pack version c2f2-0.4-7203772
    (bootloader) Flashing partition table for Lun = 0
    (bootloader) Flashing partition table for Lun = 1
    (bootloader) Flashing partition table for Lun = 2
    (bootloader) Flashing partition table for Lun = 4
    (bootloader) Flashing partition table for Lun = 5
    (bootloader) Flashing partition xbl_a
    (bootloader) Flashing partition xbl_config_a
    (bootloader) Flashing partition aop_a
    (bootloader) Flashing partition tz_a
    (bootloader) Flashing partition hyp_a
    (bootloader) Flashing partition abl_a
    (bootloader) Flashing partition keymaster_a
    (bootloader) Flashing partition devcfg_a
    (bootloader) Flashing partition qupfw_a
    (bootloader) Flashing partition uefisecapp_a
    (bootloader) Flashing partition msadp_a
    (bootloader) Flashing partition logfs
    OKAY [  0.322s]
    Finished. Total time: 0.887s
    Rebooting into bootloader                          
    OKAY [  0.017s]
    Finished. Total time: 0.067s
    Sending 'radio_a' (82692 KB)                       
    OKAY [  2.260s]
    Writing 'radio_a'                                  
    (bootloader) Flashing Pack version SSD:g8150-00075-201029-B-6938XXX
    (bootloader) Flashing partition modem_a
    OKAY [  0.499s]
    Finished. Total time: 2.981s
    Rebooting into bootloader                          
    OKAY [  0.020s]
    Finished. Total time: 0.070s
    --------------------------------------------
    Bootloader Version...: c2f2-0.4-7203772
    Baseband Version.....: g8150-XX075-201029-B-6XX8907
    Serial Number........: XX101FXXZ001ZF
    --------------------------------------------
    extracting android-info.txt (0 MB) to RAM...
    Checking 'product'                                 OKAY [  0.069s]
    Checking 'version-bootloader'                      OKAY [  0.069s]
    Checking 'version-baseband'                        OKAY [  0.069s]
    Setting current slot to 'a'                        OKAY [  0.087s]
    extracting boot.img (64 MB) to disk... took 0.318s
    archive does not contain 'boot.sig'
    Sending 'boot_a' (65536 KB)                        OKAY [  1.750s]
    Writing 'boot_a'                                   OKAY [  0.330s]
    extracting dtbo.img (8 MB) to disk... took 0.031s
    archive does not contain 'dtbo.sig'
    Sending 'dtbo_a' (8192 KB)                         OKAY [  0.330s]
    Writing 'dtbo_a'                                   OKAY [  0.119s]
    archive does not contain 'dt.img'
    archive does not contain 'recovery.img'
    extracting vbmeta.img (0 MB) to disk... took 0.000s
    archive does not contain 'vbmeta.sig'
    Sending 'vbmeta_a' (8 KB)                          OKAY [  0.140s]
    Writing 'vbmeta_a'                                 OKAY [  0.077s]
    extracting vbmeta_system.img (0 MB) to disk... took 0.000s
    archive does not contain 'vbmeta_system.sig'
    Sending 'vbmeta_system_a' (4 KB)                   OKAY [  0.140s]
    Writing 'vbmeta_system_a'                          OKAY [  0.077s]
    extracting super_empty.img (0 MB) to disk... took 0.000s
    Rebooting into fastboot                            OKAY [  0.070s]

    < waiting for any device >

    Sending 'super' (4 KB)                             OKAY [  0.001s]
    Updating super partition                           OKAY [  0.019s]
    Resizing 'product_a'                               OKAY [  0.005s]
    Resizing 'system_a'                                OKAY [  0.005s]
    Resizing 'system_b'                                OKAY [  0.005s]
    Resizing 'vendor_a'                                OKAY [  0.006s]
    Resizing 'vendor_b'                                OKAY [  0.006s]
    archive does not contain 'boot_other.img'
    archive does not contain 'odm.img'
    extracting product.img (2246 MB) to disk... took 15.033s
    archive does not contain 'product.sig'
    Resizing 'product_a'                               OKAY [  0.006s]
    Sending sparse 'product_a' 1/9 (262140 KB)         OKAY [  6.690s]
    Writing 'product_a'                                OKAY [  2.386s]
    Sending sparse 'product_a' 2/9 (262140 KB)         OKAY [  6.575s]
    Writing 'product_a'                                OKAY [  1.325s]
    Sending sparse 'product_a' 3/9 (262140 KB)         OKAY [  6.606s]
    Writing 'product_a'                                OKAY [  1.370s]
    Sending sparse 'product_a' 4/9 (262140 KB)         OKAY [  6.738s]
    Writing 'product_a'                                OKAY [  1.376s]
    Sending sparse 'product_a' 5/9 (262140 KB)         OKAY [  6.627s]
    Writing 'product_a'                                OKAY [  1.376s]
    Sending sparse 'product_a' 6/9 (262140 KB)         OKAY [  6.561s]
    Writing 'product_a'                                OKAY [  1.392s]
    Sending sparse 'product_a' 7/9 (262140 KB)         OKAY [  6.585s]
    Writing 'product_a'                                OKAY [  1.371s]
    Sending sparse 'product_a' 8/9 (262140 KB)         OKAY [  6.643s]
    Writing 'product_a'                                OKAY [  1.401s]
    Sending sparse 'product_a' 9/9 (203776 KB)         OKAY [  5.115s]
    Writing 'product_a'                                OKAY [  1.095s]
    archive does not contain 'product_services.img'
    extracting system.img (826 MB) to disk... took 6.341s
    archive does not contain 'system.sig'
    Resizing 'system_a'                                OKAY [  0.007s]
    Sending sparse 'system_a' 1/4 (262140 KB)          OKAY [  6.578s]
    Writing 'system_a'                                 OKAY [  2.394s]
    Sending sparse 'system_a' 2/4 (262140 KB)          OKAY [  6.657s]
    Writing 'system_a'                                 OKAY [  1.356s]
    Sending sparse 'system_a' 3/4 (262140 KB)          OKAY [  6.588s]
    Writing 'system_a'                                 OKAY [  1.379s]
    Sending sparse 'system_a' 4/4 (59504 KB)           OKAY [  1.590s]
    Writing 'system_a'                                 OKAY [  0.366s]
    extracting system_other.img (22 MB) to disk... took 0.218s
    archive does not contain 'system.sig'
    Resizing 'system_b'                                OKAY [  0.005s]
    Sending 'system_b' (22800 KB)                      OKAY [  0.576s]
    Writing 'system_b'                                 OKAY [  0.161s]
    extracting vendor.img (772 MB) to disk... took 6.119s
    archive does not contain 'vendor.sig'
    Resizing 'vendor_a'                                OKAY [  0.010s]
    Sending sparse 'vendor_a' 1/4 (262140 KB)          OKAY [  6.811s]
    Writing 'vendor_a'                                 OKAY [  2.395s]
    Sending sparse 'vendor_a' 2/4 (262140 KB)          OKAY [  6.585s]
    Writing 'vendor_a'                                 OKAY [  1.335s]
    Sending sparse 'vendor_a' 3/4 (260124 KB)          OKAY [  6.533s]
    Writing 'vendor_a'                                 OKAY [  1.380s]
    Sending sparse 'vendor_a' 4/4 (6232 KB)            OKAY [  0.157s]
    Writing 'vendor_a'                                 OKAY [  0.072s]
    archive does not contain 'vendor_other.img'
    Erasing 'userdata'                                 OKAY [  7.969s]
    Erase successful, but not automatically formatting.
    File system type raw not supported.
    Erasing 'metadata'                                 OKAY [  0.009s]
    Erase successful, but not automatically formatting.
    File system type raw not supported.
    Rebooting                                          OKAY [  0.000s]
    Finished. Total time: 175.484s

