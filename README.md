# Android Debug Bridge (adb)


Time flies, it's about time to get up new commands for our Android devices since there is really much stuff that is being added,updated and removed for our devices, I havent seen all those new commands anywere so hopefully this will be useful for you guys aswell.

Feel free to contribute to this repo if there is something that i forgot and is worth to know, however, let me show you what's new.

I decided to not add 'adb shell <coommands>' wich means all commands is executed when we are connected to device but of course if you want to, just add 'adb shell' infront of all commands and it will work aswell without being connected to the device shell

All commands that require root will have (Root_Required) in descriptionn. Now we are ready to start, hey ho, let's go :)

* [Gentoo Wiki - ADB](https://wiki.gentoo.org/wiki/Android/adb)
* [Stackoverflow - Bluetooth](https://stackoverflow.com/a/55064471)    

# Android CODE

     https://cs.android.com/android/platform/superproject/

# Android Downloads

     https://source.android.com/compatibility/cts/downloads

# Android Issue Tracker

      https://code.google.com/p/android/issues/entry

# Getting Started

  
![#2487AF](https://via.placeholder.com/15/2487AF/000000?text=+) How to setup ADB on Windows 10

    1: Download: https://dl.google.com/android/repository/platform-tools-latest-windows.zip
    2: Extract the contents of this ZIP file into an easily accessible folder (such as C:\platform-tools)
    3: Open Windows explorer and browse to where you extracted the contents of this ZIP file
    4: Then open up a Command Prompt from the same directory as this ADB binary. This can be done by holding 
       Shift and Right-clicking within the folder then click the “Open command window here” option. 
    5: Connect your smartphone or tablet to your computer with a USB cable. 
       Change the USB mode to “file transfer (MTP)” mode. Some OEMs may or may not require this, 
       but it’s best to just leave it in this mode for general compatibility.
    6: In the Command Prompt window, enter the following command to launch the ADB daemon: adb devices
    7: On your phone’s screen, you should see a prompt to allow or deny USB Debugging access. Naturally, 
       you will want to grant USB Debugging access when prompted (and tap the always allow check box if you never want to see that prompt again).
    8: Finally, re-enter the command from step #6. If everything was successful,
       you should now see your device’s serial number in the command prompt (or the PowerShell window).

![#000000](https://via.placeholder.com/15/000000/000000?text=+) How to setup ADB on macOSX

    1. Download the Android SDK Platform Tools ZIP file for macOS.
    2. Extract the ZIP to an easily-accessible location (like the Desktop for example).
    3. Open Terminal.
    4. To browse to the folder you extracted ADB into, enter the following command: cd /path/to/extracted/folder/
    5. For example, on my Mac it was this: cd /Users/Doug/Desktop/platform-tools/
    6. Connect your device to your Mac with a compatible USB cable. 
        Change the USB connection mode to “file transfer (MTP)” mode. 
        This is not always required for every device, but it’s best to just leave it in this mode so you don’t run into any issues.
    7. Once the Terminal is in the same folder your ADB tools are in, you can execute the following command to launch the ADB daemon: ./adb devices
    8. On your device, you’ll see an “Allow USB debugging” prompt. Allow the connection.
    9. Finally, re-enter the command from step #7. If everything was successful, 
       you should now see your device’s serial number in macOS’s Terminal window.

![#FEEFC3](https://via.placeholder.com/15/FEEFC3/000000?text=+) How to setup ADB on GNU/Linux

    1. Download the Android SDK Platform Tools ZIP file for Linux.
    2. Extract the ZIP to an easily-accessible location (like the Desktop for example).
    3. Open a Terminal window.
    4. Enter the following command: cd /path/to/extracted/folder/
    5. This will change the directory to where you extracted the ADB files.
    6. So for example: cd /Users/Doug/Desktop/platform-tools/
    7.Connect your device to your Linux machine with your USB cable. 
      Change the connection mode to “file transfer (MTP)” mode. 
      This is not always necessary for every device, but it’s recommended so you don’t run into any issues.
    8. Once the Terminal is in the same folder your ADB tools are in, you can execute the following command to launch the ADB daemon: ./adb devices
    9. Back on your smartphone or tablet device, you’ll see a prompt asking you to allow USB debugging. Go ahead and grant it.



![#9B59B6](https://via.placeholder.com/15/9B59B6/000000?text=+) How to setup ADB on GNU/Linux Gentoo  

    emerge --ask dev-util/android-sdk-update-manager

![#D64613](https://via.placeholder.com/15/D64613/000000?text=+) How to setup ADB on Debian/Ubuntu

    apt install adb fastboot -yuu


# CLI Commands
    
##### Start ADB server:

    adb start-server 

##### Stop ADB server:

    adb stop-server

##### Kill ADB server: 

    adb kill-server

##### Setup ADB server via Wi-Fi

    adb tcpip <port>
    
##### Connect to ADB server: 

    adb connect <device_ip>

##### Restarts the adbd daemon listening on USB

    adb usb
    
##### Reboot - Default, system reboot

    adb reboot

##### Reboot - Recovery Mode

    reboot recovery

##### Reboot - Bootloader Mode

    reboot bootloader

##### List Connected Devices: 

    adb devices

##### Get Status:

    adb get-state  
  
##### Print Serial Number:

    adb get-serialno 
    
##### Backup Device:

    adb backup -all
    
##### Restore Device:

    adb restore /path/to/backupflile.adb

##### Enter ADB shell:

    adb shell

##### Enter ADB shell if there is multiple devices connected:

    adb -s <id_from_adb_devices> shell 

##### To print device serial no: 

    adb get-serialno

##### Create a bugreport: 

    adb bugreport

##### Install an app:

    adb install <apk_file>

##### Install an app and keep all it's data from a previous setup: 

    adb install -r <apk_file>

##### Uninstall an app: 

    adb uninstall <apk_file>
   
##### Set date: 

    date MMDDYYYY.XX;am broadcast -a android.intent.action.TIME_SET

##### Push a file (Transfer a file FROM pc > device)

    push mypicture.png /storage/on/device

##### Push a folder (Transfer a folder FROM pc > device)

    push myfolder /storage/on/device

##### Pull a file (Transfer a file FROM device > pc)

    adb pull /storage/on/device/mypicture.png /path/on/pc

##### Pull a folder (Transfer a folder FROM device > pc)

    adb pull /storage/on/device /path/on/pc

##### Pull all files inside a folder to a path (Transfer all files in a folder FROM device > pc)

    adb pull /storage/on/device/ /path/on/pc # Notice the trial slash
    
# ADB package manager 

I see many people using pm still in 2021 for this, use cmd since it's __alot__ faster then pm for handle what it is supposed to

##### CMD

##### Equivalent to receiving the TelephonyManager.ACTION_EMERGENCY_CALL_STATE_CHANGED broadcast.

    Sets whether we are in the middle of an emergency call.
    
    cmd -w wifi set-emergency-call-state enabled|disabled

##### Equivalent to receiving the TelephonyManager.ACTION_EMERGENCY_CALLBACK_MODE_CHANGED broadcast.
                Sets whether Emergency Callback Mode (ECBM) is enabled.
    cmd -w wifi set-emergency-callback-mode enabled|disabled

#####  Lists the suggested networks from the app

    cmd -w wifi list-suggestions-from-app <package name>

##### Lists all suggested networks on this device
    cmd -w wifi list-all-suggestions

##### Note: This only returns whether the app was set via the 'network-requests-set-user-approved' shell command

     Queries whether network requests from the app is approved or not.
    cmd -w wifi network-requests-has-user-approved <package name>

##### Note: Only 1 such app can be approved from the shell at a time
                Sets whether network requests from the app is approved or not.
    cmd -w wifi network-requests-set-user-approved <package name> yes|no

#####  Lists the requested networks added via shell
    cmd -w wifi list-requests

##### Removes all active requests added via shell
    cmd -w wifi remove-all-requests

##### Remove a network request with provided SSID of the network
    cmd -w wifi remove-request <ssid>
                -b <bssid> - Set specific BSSID.
                - 'wpa3' - WPA-3 PSK networks
                                         - 'wpa2' - WPA-2 PSK networks (Most prevalent)
                                - Use 'wpa2' or 'wpa3' for networks with passphrase
                                         - 'owe' - Enhanced open networks
                                         - 'open' - Open networks (Most prevalent)
                                - Use 'open' or 'owe' for networks with no passphrase
                open|owe|wpa2|wpa3 - Security type of the network.
                <ssid> - SSID of the network
                Use 'network-requests-set-user-approved android yes' to pre-approve requests added via rooted shell (Not persisted)

##### Add a network request with provided params

    cmd -w wifi add-request <ssid> open|owe|wpa2|wpa3 [<passphrase>] [-b <bssid>]

##### Initiates wifi settings reset
    
    cmd -w wifi settings-reset

##### Gets softap supported features. Will print 'wifi_softap_acs_supported'
    
    cmd -w wifi get-softap-supported-features

##### Gets setting of wifi watchdog trigger recovery.
    
    cmd -w wifi get-wifi-watchdog

##### Sets whether wifi watchdog should trigger recovery

    cmd -w wifi set-wifi-watchdog enabled|disabled

##### Sets country code to <two-letter code> or left for normal value
    
    cmd -w wifi force-country-code enabled <two-letter code> | disabled 


##### Manually triggers a link probe.
    
    cmd -w wifi send-link-probe

##### Clears the user disabled networks list.
    
    cmd -w wifi clear-user-disabled-networks

##### Removes all user approved network requests for the app.

    cmd -w wifi network-requests-remove-user-approved-access-points <package name>

##### Clear the user choice on Imsi protection exemption for carrier

    cmd -w wifi imsi-protection-exemption-clear-user-approved-for-carrier <carrier id>

##### Queries whether Imsi protection exemption for carrier is approved or not

    cmd -w wifi imsi-protection-exemption-has-user-approved-for-carrier <carrier id>

##### Sets whether Imsi protection exemption for carrier is approved or not

    cmd -w wifi imsi-protection-exemption-set-user-approved-for-carrier <carrier id> yes|no

##### Queries whether network suggestions from the app is approved or not.

    cmd -w wifi network-suggestions-has-user-approved <package name>

##### Sets whether network suggestions from the app is approved or not.

    cmd -w wifi network-suggestions-set-user-approved <package name> yes|no

##### Sets whether low latency mode is forced or left for normal operation.

    cmd -w wifi force-low-latency-mode enabled|disabled

##### Sets whether hi-perf mode is forced or left for normal operation.

    cmd -w wifi force-hi-perf-mode enabled|disabled

##### Gets current interval between RSSI polls, in milliseconds.

    cmd -w wifi get-poll-rssi-interval-msecs

##### Sets the interval between RSSI polls to <int> milliseconds.

    cmd -w wifi set-poll-rssi-interval-msecs <int>

##### Gets setting of CMD_IP_REACHABILITY_LOST events triggering disconnects.

Equivalent to receiving the TelephonyManager.ACTION_EMERGENCY_CALL_STATE_CHANGED broadcast.
Sets whether we are in the middle of an emergency call.

    cmd -w wifi set-emergency-call-state enabled|disabled

##### Equivalent to receiving the TelephonyManager.ACTION_EMERGENCY_CALLBACK_MODE_CHANGED broadcast.

    cmd -w wifi set-emergency-callback-mode enabled|disabled

##### Lists the suggested networks from the app

    cmd -w wifi list-suggestions-from-app <package name>

##### Lists all suggested networks on this device
    cmd -w wifi list-all-suggestions

##### Note: This only returns whether the app was set via the 'network-requests-set-user-approved' shell command
##### Queries whether network requests from the app is approved or not.

    cmd -w wifi network-requests-has-user-approved <package name>

##### Note: Only 1 such app can be approved from the shell at a time
##### Sets whether network requests from the app is approved or not.

    cmd -w wifi network-requests-set-user-approved <package name> yes|no

##### Lists the requested networks added via shell

    cmd -w wifi list-requests

##### Removes all active requests added via shell

    cmd -w wifi remove-all-requests

##### Remove a network request with provided SSID of the network

    cmd -w wifi remove-request <ssid>

##### Add a network request with provided params

    cmd -w wifi add-request <ssid> open|owe|wpa2|wpa3 [<passphrase>] [-b <bssid>]

##### Initiates wifi settings reset

    cmd -w wifi settings-reset


##### and/or 'wifi_softap_wpa3_sae_supported', each on a separate line.

    cmd -w wifi get-softap-supported-features

##### Gets setting of wifi watchdog trigger recovery.

    cmd -w wifi get-wifi-watchdog

##### Sets whether wifi watchdog should trigger recovery

    cmd -w wifi set-wifi-watchdog enabled|disabled

##### Sets country code to <two-letter code> or left for normal value
    cmd -w wifi force-country-code enabled <two-letter code> | disabled 


##### Sets whether soft AP channel is forced to <int> MHz

    cmd -w wifi force-softap-channel enabled <int> | disabled

##### Manually triggers a link probe.
 
    cmd -w wifi send-link-probe

##### Clears the user disabled networks list.
 
    cmd -w wifi clear-user-disabled-networks

##### Removes all user approved network requests for the app.
 
    cmd -w wifi network-requests-remove-user-approved-access-points <package name>

##### Clear the user choice on Imsi protection exemption for carrier
 
    cmd -w wifi imsi-protection-exemption-clear-user-approved-for-carrier <carrier id>

##### Queries whether Imsi protection exemption for carrier is approved or not
 
    cmd -w wifi imsi-protection-exemption-has-user-approved-for-carrier <carrier id>

##### Sets whether Imsi protection exemption for carrier is approved or not
 
    cmd -w wifi imsi-protection-exemption-set-user-approved-for-carrier <carrier id> yes|no

##### List uid owner of a app

    cmd package list packages -U#####                            

##### List packages a.k.a: pm list packages

    cmd package list packages -l                                          

##### List disabled packages
    cmd package list packages -d
    
##### Filter to only show enabled packages     
    cmd package list packages -e                                       

##### Filter to only show third party packages    

    cmd package list packages -3                                                 

##### Set the default home activity (aka launcher)

    cmd package set-home-activity [--user USER_ID] TARGET-COMPONENT        
    
##### Prints all features of the system

    cmd package list features 
    
#####  Print briefs

    cmd package resolve-activity --brief  com.facebook.katana        
    priority=0 preferredOrder=0 match=0x108000 specificIndex=-1 isDefault=false
    com.facebook.katana/.LoginActivity

##### PM 

##### List all packages installed on device 

    pm list packages

##### List enabled packages

    pm list packages -e
    
##### List disabled packages

    pm list packages -d

##### List third party packages installed by user

    pm list packages -3

##### List users

    pm list users

##### List permission groups

    pm list permission-groups

##### List features
 
    pm list features

##### Uninstall any installed package:

    pm uninstall --user 0 com.package.name

##### Uninstall multiple apps:

    for packages in com.package1 com.package2; do 
        adb shell pm uninstall --user 0 "${packages}"
    done 

##### Clear application data:

    pm clear PACKAGE_NAME

##### List permission groups: 

    pm list permission-groups 

##### List instrumentation:

    pm list instrumentation

##### Grant permission to an app (Example Only For Grant): 

    pm grant com.application android.permission.READ_LOGS
    
##### Revoke permission to an app (Example Only For Revoke): 

    pm revoke com.application android.permission.READ_LOGS

##### Reset all permissions for an app:

    pm reset-permissions -p your.app.package
    
# LOGCAT

##### Default options: 

* V — Verbose (lowest priority)
* D — Debug
* I — Info (default priority)
* W — Warning
* E — Error
* F — Fatal
* S — Silent (highest priority, on which nothing is ever printed)

##### Use -v time for print timestamps, and threadtime for dates:

    adb logcat -v time ...
    adb logcat -v threadtime ....

##### For get output colorized with logcat:

    adb logcat ... -v color

##### Displays current log buffer sizes:

    adb logcat -g   

##### Sets the buffer size (K or M):

    adb logcat -G 16M   

##### Clear the log buffer:

    adb logcat -c

##### Enables ALL log messages (verbose mode)

    adb logcat *:V  

##### Dump everything to a file:

    adb logcat -f <filename>    Dumps to specified file

##### Display PID with the log info 

    adb logcat -v process

##### Display the raw log message, with no other metadata fields

    adb logcat -v raw

##### Display the date, invocation time, priority/tag, and PID of the process issuing the message

    adb logcat -v time

###### Display the priority, tag, and the PID and TID of the thread issuing the message

    adb logcat -v thread

##### Display the date, invocation time, priority, tag, and the PID and TID of the thread issuing the message

    adb logcat -v threadtime

##### Display all metadata fields and separate messages with blank lines

    adb logcat -v long
    
##### Log multiple options (-b ... -b ....): 

    adb logcat -b main -b radio -b events

## Run all at once, no reason for use it like this really

adb logcat -v brief -v long -v process -v raw -v tag -v thread -v threadtime -v time -v color       

adb logcat -v brief                                                                                                            message.
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

# DUMPSYS

##### List all active services:

    dumpsys -l 
    
    oln older devices
    
    dumpsys -l |sed 's/^  /      /g'
    Currently running services:
      AAS
      AODManagerService
      CCM
      CocktailBarService
      CodecSolution
      CustomFrequencyManagerService
      DeviceRootKeyService
      DirEncryptService
      DisplaySolution
      DockObserver
      EngineeringModeService
      HqmManagerService
      ImsBase
      OcfKeyService
      ReactiveService
      SEAMService
      SamsungKeyProvisioningManagerService
      SatsService
      SecExternalDisplayService
      ...................

##### Examples:

###### Tips:

If you want all services sorted by filename use below shell code:

    for i in $(cat 1);do
      adb shell dumpsys "$i" > "$i.txt";
    done

###### Dumpsys lock_settings 

    dumpsys lock_settings
    Current lock settings service state:

    User State:
     User 0
     SP Handle: 5f0ef3437a85f55
    Last changed: 2021-07-28 20:22:36 (b8212446331f2358)
      SID: 3fffcda35ee6c180
      Quality: 0
     CredentialType: Pin
     SeparateChallenge: true
     Metrics: known
  
    Storage:
    User 0 [/data/system_de/0/spblob]:
        5 2021-07-28 20:22:36 05f0ef3437a85f55.weaver
       31 2021-07-28 20:22:36 05f0ef3437a85f55.pwd
       72 2021-07-28 20:22:36 05f0ef3437a85f55.metrics
      186 2021-07-28 20:22:36 05f0ef3437a85f55.spblob
       58 2021-07-28 20:22:36 0000000000000000.handle
  
    StrongAuth:
    PrimaryAuthFlags state:
     userId=0, primaryAuthFlags=0
    
     NonStrongBiometricAllowed state:
    
  
    RebootEscrow:
    mRebootEscrowWanted=false
    mRebootEscrowReady=false
    mRebootEscrowListener=com.android.server.recoverysystem.RecoverySystemService@bc1c4d8
    mPendingRebootEscrowKey is not set
  
     Event log:


##### Print codecs for bluetooth headphones:

    dumpsys media.audio_flinger | grep -A3 Input 

##### Show bluetooth macaddr, bluetooth name and such things:

    dumpsys bluetooth_manager

##### Dump phone registry:; 

    dumpsys telephony.registry

##### Dumpsys gps data:

    dumpsys location

##### List all settngs and if they are true or false:

Settings are sorted for root and user:

     GLOBAL SETTINGS (user 0)
     SECURE SETTINGS (user 0)
     SYSTEM SETTINGS (user 0)
     SECURE SETTINGS (user 95)
     SYSTEM SETTINGS (user 95)


    dumpsys settings
    _id:225 name:lock_screen_show_notifications pkg:com.android.settings value:1 default:1 defaultSystemSet:true
    _id:6 name:volume_bluetooth_sco pkg:android value:7 default:7 defaultSystemSet:true
    _id:192 name:ringtone_set pkg:com.google.android.gsf value:1
    _id:159 name:lock_screen_allow_rotation pkg:android value:0 default:0 defaultSystemSet:true
    _id:2997 name:Flashlight_brightness_level pkg:com.android.systemui value:1001 default:1001 defaultSystemSet:true
    _id:67 name:SEM_VIBRATION_NOTIFICATION_INTENSITY pkg:android value:5 default:5 defaultSystemSet:true
    _id:175 name:call_popup pkg:android value:0 default:0 defaultSystemSet:true
    _id:59 name:install_non_market_apps pkg:android value:1 default:1 defaultSystemSet:true
    .....

##### Display Contacts On Sim Card:

    dumpsys simphonebook

##### Show hardware info as thermal stuff for cpu, gpu and battery

     dumpsys hardware_properties
    ****** Dump of HardwarePropertiesManagerService ******
    CPU temperatures: [38.0, 38.0]
    CPU throttling temperatures: [55.0, 76.0]
    CPU shutdown temperatures: [115.0, 115.0]
   
##### Show all application you have an account on: 

    dumpsys account|grep -i com.*$ -o|cut -d' ' -f1|cut -d} -f1|grep -v com$
    com.microsoft.workaccount
    com.skype.raider
    com.samsung.android.mobileservice
    com.facebook.messenger
    com.google.android.gm.exchange
    .......
    
##### Show all notifications listener and so on:

    dumpsys notification
    
##### List email addresses registerd on different stuff on device:

    dumpsys | grep -E -o "\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b"
    
##### Print version of a specifik package

    dumpsys package com.lge.signboard | grep versionName
    versionName=6.00.170603-0
    
##### Check state for screen and figoure how device was unlcked last time:

    dumpsys  user
    ...
    State: RUNNING_UNLOCKED
    ...
    Last logged in fingerprint
    .....
    agree Knox Privacy Policy: false
    
##### And for example, you can dump data for all of the running services: 
##### Dump all data for battery: 

    adb shell dumpsys battery

##### Dump stats for your battery:

    adb shell dumpsys batterystats 

##### Erase old stats for battery:
 
    dumpsys batterystats --reset 

##### Sort Applications By Ram Usage:

     dumpsys meminfo

    Applications Memory Usage (in Kilobytes):
    Uptime: 29602806 Realtime: 57806941

    Total PSS by process:
    265,435K: com.android.systemui (pid 4190)
    264,671K: system (pid 3838)
    171,192K: surfaceflinger (pid 3360)
    152,523K: android.hardware.graphics.composer@2.1-service (pid 3338)
    128,781K: com.sec.android.app.launcher (pid 5597 / activities)
     92,656K: se.kronansapotek.kronan (pid 26729 / activities)
     84,563K: logd (pid 3203)
     80,944K: com.google.android.talk (pid 32314 / activities)
     79,754K: com.google.android.googlequicksearchbox:search 
     
# DUMPSTATE

##### Dump info about your sim provider and kernel bootloader ID etc.

    dumpstate -v

    ========================================================
    == dumpstate: 2019-08-30 19:31:05
    ========================================================

    Build: PPR1.180610.011.G950FXXS5DSF1
    Build fingerprint: 'samsung/dreamltexx/dreamlte:9/PPR1.180610.011/G950FXXS5DSF1:user/release-keys'
    Bootloader: G950FXXS5DSF1
    Radio: G950FXXS5DSF1
    Network: Comviq
    Linux version 4.4.111-16019454 (dpi@21DHA724) (gcc version 4.9.x 20150123 (prerelease) (GCC) ) #1 SMP PREEMPT Mon Jun 3     20:16:50 KST 2019
    Kernel: Command line: (unknown)
    up 0 weeks, 0 days, 16 hours, 21 minutes
    Uptime: Bugreport format version: 2.0
    Dumpstate info: id=0 pid=26940 dry_run=0 args=dumpstate -v extra_options=

     
# AM
###### https://github.com/jfsso/PreferencesEditor


# Add a value to default shared preferences.

    adb shell 'am broadcast -a org.example.app.sp.PUT --es key key_name --es value "hello world!"'

# Remove a value to default shared preferences.

    adb shell 'am broadcast -a org.example.app.sp.REMOVE --es key key_name'

# Clear all default shared preferences.

    adb shell 'am broadcast -a org.example.app.sp.CLEAR --es key key_name'

# It's also possible to specify shared preferences file.

    adb shell 'am broadcast -a org.example.app.sp.PUT --es name Game --es key level --ei value 10'

# Data types

    adb shell 'am broadcast -a org.example.app.sp.PUT --es key string --es value "hello world!"'
    adb shell 'am broadcast -a org.example.app.sp.PUT --es key boolean --ez value true'
    adb shell 'am broadcast -a org.example.app.sp.PUT --es key float --ef value 3.14159'
    adb shell 'am broadcast -a org.example.app.sp.PUT --es key int --ei value 2015'
    adb shell 'am broadcast -a org.example.app.sp.PUT --es key long --el value 9223372036854775807'

# Restart application process after making changes

    adb shell 'am broadcast -a org.example.app.sp.CLEAR --ez restart true'

##### Open Google Camera (Pixel 4)

    am start com.google.android.GoogleCamera 

##### Set default preferences for an app:

    am broadcast -a org.example.app.sp.CLEAR --es key key_name

##### Factory Reset:

    am broadcast -a android.intent.action.MASTER_CLEAR

##### Open Special Menu

    am start -a android.intent.action.VIEW \

##### Open settings:

     am start -n com.android.settings/com.android.settings.Settings

##### Open activity to new APN

     am start -a android.intent.action.INSERT  content://telephony/carriers  --ei simId 

##### Open hiden menu (require root)

    su -c "am broadcast -a android.provider.Telephony.SECRET_CODE -d android_secret_code://IOTHIDDENMENU"

##### Start prefered webbrowser:

    am start -a android.intent.action.VIEW -d <url> (com.android.browser | com.android.chrome | com.sec.android.sbrowser) 

##### Print Activities:
    
    am start -a com.android.settings/.wifi.CaptivePortalWebViewActivity

##### Open Camera ( take photo with key event 66)

    am start -a android.media.action.IMAGE_CAPTURE

## Open Video Camera

    am start -a android.media.action.VIDEO_CAMERA

###### Open a picture and then set wallpaper by:

    am start -a android.intent.action.SET_WALLPAPER

##### Open a url with your default browser

    am start -a android.intent.action.VIEW -d https://github.com/wuseman

##### Open google maps with coordinates

    am start -a android.intent.action.VIEW -d "geo:46.457398,-119.407305"

##### Simulate waking your app using the following commands:

    am set-inactive <packageName> 
    am set-inactive <packageName> false
    
##### Enabling Night Mode (If Supported)
    
    am start --ez show_night_mode true com.android.systemui/.tuner.TunerActivity

##### Start facebook application inbox by using URI

    am start -a android.intent.action.VIEW -d facebook://facebook.com/inbox

##### Open a vcard file from sdcard (will open contacts app :) )

    am start -a android.intent.action.VIEW -d file:///sdcard/me.vcard -t text/x-vcard

####### Open an application to get content (in this case to get a jpeg picture)

    am start -a android.intent.action.GET_CONTENT -t image/jpeg

####### There is several ways to send a SMS via AM, here is just one of several ways:

    aam broadcast -a com.whereismywifeserver.intent.TEST --es sms_body "test from adb"
   
####### Demo Call   

Establishes a fake Bluetooth connection to Dialer and must be called first to enable access to all call-related commands.

    adb shell am broadcast -a com.android.car.dialer.intent.action.adb --es "action" "connect"                               ## To connect a device
    adb shell am broadcast -a com.android.car.dialer.intent.action.adb --es "action" "addCall" --es "id" "4085524874"        ## Place an outgoing call
    adb shell am broadcast -a com.android.car.dialer.intent.action.adb --es "action" "rcvCall" --es "id" "4085524874"        ## Receive an incoming call
    adb shell am broadcast -a com.android.car.dialer.intent.action.adb --es "action" "endCall" --es "id" "4085524874"        ## End a call
    adb shell am broadcast -a com.android.car.dialer.intent.action.adb --es "action" "holdCall"                              ## Hold the current call
    adb shell am broadcast -a com.android.car.dialer.intent.action.adb --es "action" "unholdCall"                            ## Unhold the current call
    adb shell am broadcast -a com.android.car.dialer.intent.action.adb --es "action" "unholdCall"                            ## Merge calls
    adb shell am broadcast -a com.android.car.dialer.intent.action.adb --es "action" "clearAll"                              ## Clear all calls, To remove all calls in the call list:

    

# IMEI:

##### Print IMEI (Method 1)

    service call iphonesubinfo 1| cut -d "'" -f2| grep -Eo '[0-9]'| xargs| sed 's/\ //g'  
    
## Print IMEI 1 & 2 (Method 2)

###### Imei 1:
    
    service call iphonesubinfo 3 i32 1 | grep -oE '[0-9a-f]{8} ' | while read hex; do echo -ne "\u${hex:4:4}\u${hex:0:4}"; done; echo          

###### Imei 2: 
       
    service call iphonesubinfo 3 i32 2 | grep -oE '[0-9a-f]{8} ' | while read hex; do echo -ne "\u${hex:4:4}\u${hex:0:4}"; done; echo       
    
##### List how many times we booted device:

    settings list global|grep "boot_count="|cut -d= -f2|head -n 1|xargs echo "Booted:"|sed 's/$/ times/g'
    
##### Send SMS:

    am broadcast -a com.whereismywifeserver.intent.TEST --es sms_body "test from adb"

##### Simulate waking your app using the following commands:

    am set-inactive <packageName> 
    am set-inactive <packageName> false
    
##### Start facebook application inbox by using URI

    am start -a android.intent.action.VIEW -d facebook://facebook.com/inbox
  
##### Open a vcard file from sdcard (will open contacts app :) )

    am start -a android.intent.action.VIEW -d file:///sdcard/me.vcard -t text/x-vcard  

##### Open an application to get content (in this case to get a jpeg picture)

    am start -a android.intent.action.GET_CONTENT -t image/jpeg

##### There is several ways to send a SMS via AM, here is one example:

    aam broadcast -a com.whereismywifeserver.intent.TEST --es sms_body "test from adb"


# Content

###### Main stuff: 

    content query --uri content://settings/global
    content query --uri content://settings/settings
    content query --uri content://settings/seure


###### Trick device that setup already has been done:

     content insert --uri content://settings/secure --bind name:s:user_setup_complete --bind value:s:1
     am start -n com.google.android.gsf.login/
     am start -n com.google.android.gsf.login.LoginActivity

###### Print files for all applications

    content query --uri content://media/external/file --projection _data

###### Select "name" and "value" columns from secure settings where "name" is equal to "new_setting" and sort the result by name in ascending order

    content query --uri content://settings/secure --projection name:value

######  Remove "new_setting" secure setting.

    content delete --uri content://settings/secure --where "name='new_setting'"

###### Download current ringtone and play on PC via ffplay: 

     adb shell 'content read --uri content://settings/system/ringtone_cache' > a.ogg|xargs ffplay a.ogg
 
###### Various ways to print contacts

     adb shell content query --uri content://contacts/phones/  --projection display_name:number:notes 
     adb shell content query --uri content://com.android.contacts/data --projection display_name:data1:data4:contact_id
     adb shell content query --uri content://contacts/people/

###### Print Phone numbers

     adb shell content query --uri content://contacts/phones/

####### Print contacts GROUPS:

     adb shell content query --uri content://contacts/groups/

####### Print group membership:

     adb shell content query --uri content://contacts/groupmembership/

####### Print organiztations: 

    adb shell content query --uri content://contacts/organizations/

####### Print call log

    adb shell content query --uri content://call_log/calls


####### Print various SMS stuff: 

    adb shell content query --uri content://sms/conversations
    adb shell content query --uri content://sms/conversations
    adb shell content query --uri content://sms/draft
    adb shell content query --uri content://sms/inbox
    adb shell content query --uri content://sms/outbox
    adb shell content query --uri content://sms/sent

####### Print various MMS stuff: 

    adb shell content query --uri content://mms
    adb shell content query --uri content://mms/inbox
    adb shell content query --uri content://mms/outbox
    adb shell content query --uri content://mms/part
    adb shell content query --uri content://mms/sent
    adb shell content query --uri content://mms-sms/conversations
    adb shell content query --uri content://mms-sms/draft
    adb shell content query --uri content://mms-sms/locked
    adb shell content query --uri content://mms-sms/search


# GETPROP

There is to much to describe here, get info by type getprop, but you can for example grep various stuff by:

    getprop | grep "model\|version.sdk\|manufacturer\|hardware\|platform\|revision\|serialno\|product.name\|brand"

# MiSC

##### Try vibrator
 
    echo 200 > /sys/class/timed_output/vibrator/enable

##### Open settings for a specifik app

    am start -a android.settings.APPLICATION_DETAILS_SETTINGS package:<com.package.example>

##### Adopting USB-Drive
 
    sm set-force-adoptable true

##### Auto rotation on

    content insert –uri content://settings/system –bind name:s:accelerometer_rotation –bind value:i:1

##### Auto rotation off:
    
    content insert –uri content://settings/system –bind name:s:accelerometer_rotation –bind value:i:0

##### Rotate to landscape

     content insert —uri content://settings/system –bind name:s:user_rotation –bind value:i:1

##### Rotate portrait

     content insert –uri content://settings/system –bind name:s:user_rotation –bind value:i:0

##### Genereate hash from keystore  -Typically used in Facebook

    keytool -exportcert -alias your_alias -keystore debug.keystore | openssl sha1 -binary | openssl base64 

# Typically used in Google Maps

    keytool -list -v -keystore ~/.android/debug.keystore -alias your_alia           

##### Print Screen Size

    wm size

##### Set Screen Size

    wm size WxH 
    
##### Set Overscan:

    wm overscan 0,0,0,200

##### Tips & Tricks

##### See current used app:

    dumpsys window windows | grep -E 'mCurrentFocus|mFocusedApp'|grep '/'|awk -F'u0' '{print $2}'|awk '{print $1}'

##### Print how many notifications you have: 

    dumpsys notification | grep NotificationRecord | wc -l 

##### Simulate a swipe down for notifications:

    input swipe 0 0 0 300 
    
##### Swipe and unlock screen:

    input swipe 300 1000 300 500 
    
##### Test any app by pressing 10000 times at once, this will start your application and perform 10000 random events.# 

    monkey -p com.example.myapp -v 10000 

##### Print all application in use in a for loop 

    pm list packages | sed -e "s/package://" | while read x; do cmd package resolve-activity --brief $x | tail -n 1 | grep -v "No activity found";done 
    com.google.android.youtube/.app.honeycomb.Shell$HomeActivity
    com.google.android.googlequicksearchbox/.SearchActivity
    com.google.android.apps.docs.editors.docs/com.google.android.apps.docs.app.NewMainProxyActivity
    com.android.documentsui/.LauncherActivity
    com.google.android.apps.docs.editors.sheets/com.google.android.apps.docs.app.NewMainProxyActivity
    com.google.android.apps.docs.editors.slides/com.google.android.apps.docs.app.NewMainProxyActivity
    com.android.vending/.AssetBrowserActivity
    .....
    
##### Open Projectmenu (Huawei only)

    am start com.huawei.android.projectmenu/com.huawei.android.projectmenu.ProjectMenuActivity

##### Auto answer any call after 2 seconds:

    setprop persist.sys.tel.autoanswer.ms 2000

##### Turn off auto answer:
 
    setprop persist.sys.tel.autoanswer.ms 0

##### Unplug AC:

    dumpsys battery unplug

##### Print uptime for your device by days + time

    TZ=UTC date -d@$(cut -d\  -f1 /proc/uptime) +'%j %T' | awk '{print $1-1"d",$2}'

##### Add a contact

## Example 1:

    am start -a android.intent.action.INSERT -t vnd.android.cursor.dir/contact -e name "$(dialog --stdout --inputbox 'wuseman' 0 0)" -e postal "$(dialog --stdout --inputbox 'Postal Address' 0 0)" -e phone "$(dialog --stdout --inputbox 'Phone Number' 0 0)" -e email "$(dialog --stdout --inputbox 'Email' 0 0)"
    
## Example 2: 

    am start -a android.intent.action.INSERT -t vnd.android.cursor.dir/contact -e name 'wuseman' -e phone <phone_number>

# GETPROP

##### Is OEM unlocking enable or not

      getprop sys.oem_unlock_allowed 
      
 ##### Is sys boot completed:
 
      getprop sys.boot_completed

# Streaming

##### Play a mp3 track on device

    am start -a android.intent.action.VIEW -d file:////storage/9A8A-1069/wuseman/ringtones/<mp3_track>.mp3 -t audio/mp3

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

##### Print USB Mode (Charging only, MTP ... )

    cat /sys/devices/soc0/hw_platform'
    
# Important Files / Folders

###### SMS Is stored in:
  
    /data/user_de/0/com.android.providers.telephony/databases/mmssms.db
    /data/user_de/0/com.android.providers.telephony/databases/telephony.db

# Sounds

    /system/media/audio/ui/                       
    /system/media/audio/ringtones
    /system/media/audio/notifications

# Paths

    /data/ssh
    /data/adb/magisk
    /data/data/<package>/databases (app databases)
    /data/data/<package>/shared_prefs/ (shared preferences)
    /data/app (apk installed by user)
    /system/app (pre-installed APK files)
    /mmt/asec (encrypted apps) (App2SD)
    /mmt/emmc (internal SD Card)
    /mmt/adcard (external/Internal SD Card)
    /mmt/adcard/external_sd (external SD Card)
     rm /data/misc/bootstat/boot_complete?

# Rooted Devices:

####### Is device rooted:

    which su &> /dev/null;[[ $? = "0" ]] && echo "Rooted" || echo "Not rooted"

###### Read SIM card data

    flame:/ # sqlite3 -line /data/user_de/0/com.android.providers.telephony/databases/telephony.db 'select icc_id,card_id,carrier_name,display_name,mcc,mnc from siminfo'

      icc_id = 8946209802SSSSSSSSS
     card_id = 8946209802SSSSSSSSS
    carrier_name = 
    display_name = CARD
         mcc = 0
         mnc = 0

      icc_id = 8946209802SSSSSSSSS
     card_id = 8946209802SSSSSSSSS
    carrier_name = Telia
    display_name = Telia
         mcc = 240
         mnc = 7

####### Read ICCID

    sqlite3 /data/vendor/radio/qcril.db 'select ICCID from qcril_manual_prov_table'

####### Read .db files, clean:

    grep -vx -f <(sqlite3 Main.db .dump) <(sqlite3 ${DB} .schema) 

####### Sniff traffic via wireshark:

    adb exec-out "tcpdump -i any -U -w - 2>/dev/null" | wireshark -k -S -i -

####### Grab all file extensions of a kind and download to PC

    for i in `adb shell "su -c find /data /system -name '*.key'"`; do 
       mkdir -p ".`dirname $i`";adb shell "su -c cat $i" > ".$i";
    done



# Magisk 

####### Enable magiskhide

     /sbin/magisk magiskhide enable
     
####### List hided apps by magisk

    /sbin/magisk magiskhide list

####### Add package to magiskhide

     /sbin/magisk magiskhide add com.package
    
    
# Samsung Stuff:

###### Bypass Samsung Health block on rooted devices: 

     mount -o rw,remount /system/etc/mkshrc
     sed -i 's/ro.config.tima=1/ro.config.tima=0/g' build.prop

# References

    http://tjtech.me/analyze-oem-unlocking-under-android.html
    https://mazhuang.org/awesome-adb/README.en.html
    https://github.com/nahamsec/Resources-for-Beginner-Bug-Bounty-Hunters/blob/master/assets/mobile.md
    https://github.com/randorisec/MobileHackingCheatSheet
    https://noobsec.org/project/2019-12-22-bypass-fingerprint-lock-in-just-1-second/
    https://noobsec.org/project/2018-11-04-cara-reverse-engineering-apk/
    https://docs.oracle.com/javase/specs/jvms/se9/html/jvms-4.html
    https://www.raywenderlich.com/3419415-hack-an-android-app-finding-forensic-artifacts#toc-anchor-002
    https://www.xda-developers.com/android-q-navigation-gesture-controls/#fitvid892986
    https://developer.android.com/studio/run/emulator-console
    https://developer.android.com/studio/write
    https://android.googlesource.com/platform/frameworks/native/+/master/cmds/cmd/ # CMD
    https://android.googlesource.com/
    https://android.googlesource.com/platform/prebuilts/cmdline-tools/+/34a182b3646de1051ea2c9b23132d073bcaa5087/tools/bin/
    https://android-generic.github.io/#documentation
    https://source.android.com/devices/tech/debug/gdb
    https://source.android.com/devices/tech/debug/understanding-logging
    https://source.android.com/devices/tech/connect/connect_tests
    https://adbshell.com/commands/adb-install

###### REQUIREMENTS

    Access to a shell via PC, all commands wont work via adb on your android device.

###### CONTACT 

    If you have problems, questions, ideas or suggestions please contact me by posting to wuseman@nr1.nu

###### WEB SITE

    Visit my websites and profiles for the latest info and updated tools

    https://github.com/wuseman/ && https://nr1.nu && https://stackoverflow.com/users/9887151/wuseman

###### END!
