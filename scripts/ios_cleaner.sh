#!/bin/sh


#IGNORE_PATH=`find /private/var/mobile/Containers/Data/Application -name supplies.wall.Home-Depot | egrep -o -m 1 "[0-9A-F]{8}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{12}"`
#find /private/var/mobile/Containers/Data/Application/* -not -path "/private/var/mobile/Containers/Data/Application/$IGNORE_PATH/*" -exec rm -rf {} \;
# directories affect (for backup):
# /var/Keychains
# /var/mobile/Library 
# omit /var/mobile/Library/Caches/GeoServices
# omit /var/mobile/Library/Caches/com.apple.keyboards
# omit /var/mobile/Library/LASD
# omit /var/mobile/Library/Caches/com.saurik.Cydia/lists
# omit /var/mobile/Library/Caches/com.apple.springboard.sharedimagecache
# /var/preferences
# /var/root/Library/Preferences
launchctl unload -w /System/Library/LaunchDaemons/com.apple.apsd.plist
#launchctl unload -w /System/Library/LaunchDaemons/com.apple.cloudd.plist
#launchctl unload -w /System/Library/LaunchDaemons/com.apple.security.CircleJoinRequested.plist
#launchctl unload -w /System/Library/LaunchDaemons/com.apple.cmfsyncagent.plist
#launchctl unload -w /System/Library/LaunchDaemons/com.apple.familycircled.plist
#launchctl unload -w /System/Library/LaunchDaemons/com.apple.idamd.plist
#launchctl unload -w /System/Library/LaunchDaemons/com.apple.lskdd.plist
#launchctl unload -w /System/Library/LaunchDaemons/com.apple.nanobackupd.plist
#launchctl unload -w /System/Library/LaunchDaemons/com.apple.syncdefaultsd.plist
# kill all non-restarting services first:
killall -9 absd adid akd accountsd activationd aosnotifyd askpermissiond assistantd backupd syncdefaultsd AppleIDAuthAgent aosnotifyd AssetCacheLocatorService assetsd assistantd bird calaccessd CallHistorySyncHelper cfprefsd cdpd com.apple.lakitu com.apple.MobileInstallationHelperService cloudd CloudKeychainProxy cmfsyncagent CommCenter coreauthd dataaccessd EscrowSecurityAlert familynotificationd findmydeviced fmfd fmflocatord geod iaptransportd identityservices ind IDSKeychainSyncingProxy IDSRemoteURLConnectionAgent IMDMessageServicesAgent itunescloudd keybagd lakitu lskdd lockbot lockdownd mapspushd mobileactivationd MobileActivationDaemon MobileGestaltHelper MobileMail misagent misd mmaintenanced mstreamd networkd notifyd nsurlsessiond nsurlstoraged online-auth-agent OTAPKIAssetTool passd pfd pkd ptpd sbd securityd Setup storebookkeeperd syncdefaultsd seld tccd touchsetupd useractivityd Preferences

# now kill restarting services:
killall -9 aggregated apsd atc assetsd configd dataaccessd fairplayd.H2 identityservicesd imagent itunesstored locationd nanoregistryd profiled routined sharingd
rm -f `find /private/var/mobile/Containers/Data/Application -name com.apple.mobileme.fmip1 | grep Caches/com.apple.mobileme.fmip1`/Cache.db*
rm -f `find /private/var/mobile/Containers/Data/Application -name com.apple.mobileme.fmf1 | grep Caches/com.apple.mobileme.fmf1`/Cache.db*
rm -f `find /private/var/mobile/Containers/Data/Application -name com.apple.mobileme.fmf1.plist`
rm -f `find /private/var/mobile/Containers/Data/Application -name com.apple.mobileme.fmip1.plist`
rm -f `find /private/var/mobile/Containers/Data/Application -name com.apple.MailAccount-ExtProperties.plist`
rm -f `find /private/var/containers/Data/System -name activation_record.plist`

rm -f `find /private/var/containers/Shared/SystemGroup -name com.apple.icloud.ifccd.notbackedup.plist`
rm -rf `find /private/var/mobile/Containers/Data/Application -name com.apple.notificationcenter`
rm -rf `find /private/var/mobile/Containers/Data/Application -name CloudKit`
rm -rf `find /private/var/mobile/Containers/Data/Application -name WebKit`
rm -f `find /private/var/containers/Data/System -name data_ark.plist`
rm -f `find /private/var/containers/Data/System -name lskd.rl`
rm -f /private/var/containers/Shared/SystemGroup/systemgroup.com.apple.configurationprofiles/Library/ConfigurationProfiles/profile-2ccdb2ebb375ce31cfde3b30b2e7c6e17dc09e63231ba70394567dbe0bf8c20b.stub
rm -f /private/var/containers/Shared/SystemGroup/systemgroup.com.apple.configurationprofiles/Library/ConfigurationProfiles/CloudConfigurationDetails.plist
find /private/var -name "Cache.db*" -exec rm {} \;

find /private/var/containers/Data/System -name "adi.pb" -exec rm {} \;

rm -f /private/var/Keychains/keychain-2.db*
rm -f /private/var/root/Library/Preferences/com.apple.coreservices.appleidauthenticationinfo.plist
rm -f /private/var/mobile/Library/AccountNotifications/*.sqlite*
killall -9 accountsd
rm -f /private/var/mobile/Library/Accounts/*.sqlite*
rm -f /private/var/mobile/Library/AddressBook/*.sqlite*
rm -rf /private/var/mobile/Library/Application\ Support/CloudDocs/*
rm -rf /private/var/mobile/Library/Application\ Support/com.apple.ProtectedCloudStorage
rm -rf /private/var/mobile/Library/Caches/CloudKit/*
rm -rf /private/var/mobile/Library/Caches/FamilyCircle
rm -rf /private/var/mobile/Library/Caches/com.apple.AssetCacheLocatorService
rm -rf /private/var/mobile/Library/Caches/com.apple.accountsd
killall -9 akd
rm -rf /private/var/mobile/Library/Caches/com.apple.akd/*
killall -9 dataaccessd
rm -rf /private/var/mobile/Library/Caches/com.apple.dataaccess.dataaccessd/*
rm -rf /private/var/mobile/Library/Caches/com.apple.imfoundation.IMRemoteURLConnectionAgent/*
rm -rf /private/var/mobile/Library/Caches/com.apple.passd/fsCachedData/*
rm -rf /private/var/mobile/Library/Caches/com.apple.Preferences/*
rm -rf /private/var/mobile/Library/Caches/com.apple.purplebuddy/*
rm -f /private/var/mobile/Library/Caches/FamilyCircle/CircleCache.plist

rm -f /private/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/Accounts/cdp*
#rm -rf /private/var/mobile/Library/Caches/PassKit/*
rm -f /private/var/mobile/Library/Application\ Support/com.apple.ProtectedCloudStorage/*
rm -f /private/var/mobile/Library/Health/*.sqlite*
killall -9 identityservices identityservicesd
rm -f /private/var/mobile/Library/IdentityServices/ids*
rm -f /private/var/mobile/Library/Preferences/com.apple.identityservices*
rm -f /private/var/mobile/Library/Preferences/com.apple.ids.*
rm -f /private/var/mobile/Library/Preferences/com.apple.icloud.*
rm -f /private/var/mobile/Library/Preferences/com.apple.cloud.quota.plist*
rm -f /private/var/mobile/Library/Preferences/com.apple.carrier.plist
killall -9 apsd
rm -f /private/var/mobile/Library/Preferences/com.apple.apsd.plist*
rm -f /private/var/mobile/Library/ApplePushService/aps.*
rm -rf /private/var/mobile/Library/Calendar/*
killall -9 itunesstored
rm -f /private/var/mobile/Library/Preferences/com.apple.itunesstored.plist*
rm -f /private/var/mobile/Library/Preferences/com.apple.imdsmsrecordstore.plist*
rm -rf /private/var/mobile/Library/Caches/com.apple.itunesstored/*
rm -rf /private/var/mobile/Library/com.apple.itunesstored/*
rm -rf /private/var/mobile/Library/Cookies/com.apple.itunesstore*
rm -rf /private/var/mobile/Library/com.apple.companionappd/*
killall -9 nsurlsessiond nsurlstoraged
rm -rf /private/var/mobile/Library/com.apple.nsurlsessiond/*
killall -9 dataaccessd
rm -rf /private/var/mobile/Library/DataAccess/*
rm -f /private/var/mobile/Library/Preferences/com.apple.dataaccess*.plist
killall -9 healthd
rm -rf /private/var/mobile/Library/Health/*
killall -9 homed
rm -rf /private/var/mobile/Library/homed
rm -rf /private/var/mobile/Library/Keyboard/*
rm -f /private/var/mobile/Library/LASD/*
killall -9 atc
rm -f private/var/mobile/Library/Preferences/com.apple.atc.plist*
killall -9 aggregated
rm -f private/var/mobile/Library/Preferences/com.apple.aggregated.plist*
killall -9 locationd
rm -f /private/var/mobile/Library/locationd/*
rm -f /private/var/mobile/Library/Logs/CrashReporter/*.ips*
rm -f /private/var/mobile/Library/Logs/FMFD/FMFD.asl
rm -f /private/var/mobile/Library/MediaStream/albumshare/personID.plist
rm -rf /private/var/mobile/Library/Mail/*
rm -rf /private/var/mobile/Library/Mobile\ Documents/*
rm -rf /private/var/mobile/Library/MusicLibrary/*
rm -f /private/var/mobile/Library/News/*
rm -rf /private/var/mobile/Library/Notes/notes.sqlite*
rm -f /private/var/mobile/Library/OnDemandResources/Database/odr.sqlite*
rm -rf /private/var/mobile/Library/Safari/*
rm -rf /private/var/mobile/Library/Suggestions/*
rm -f /private/var/mobile/Library/Preferences/com.apple.AOS*.plist
rm -f /private/var/mobile/Library/Preferences/com.apple.accountsd.plist
rm -f /private/var/mobile/Library/Preferences/com.apple.assistant*
rm -f /private/var/mobile/Library/Preferences/com.apple.bird.plist
rm -f /private/var/mobile/Library/Preferences/com.apple.calaccessd.plist
rm -f /private/var/mobile/Library/Preferences/com.apple.security.CircleJoinRequested.plist
rm -f /private/var/mobile/Library/Preferences/com.apple.cmfsyncagent.plist
rm -f /private/var/mobile/Library/Preferences/com.apple.coreduet*
rm -f /private/var/mobile/Library/Preferences/com.apple.corerecents.recentsd.plist
rm -f /private/var/mobile/Library/Preferences/com.apple.gamed*.plist
rm -f /private/var/mobile/Library/Preferences/com.apple.imessage.bag.plist
rm -f /private/var/mobile/Library/Preferences/com.apple.imservice*
rm -f /private/var/mobile/Library/Preferences/com.apple.lasd.plist
rm -f /private/var/mobile/Library/Preferences/com.apple.mobile.*
rm -f /private/var/mobile/Library/Preferences/com.apple.mobile.ld*.plist
rm -f /private/var/mobile/Library/Preferences/com.apple.routined.plist
rm -f /private/var/mobile/Library/Preferences/com.apple.passd.plist
rm -f /private/var/mobile/Library/Preferences/com.apple.Preferences.plist

rm -f /private/var/mobile/Library/Preferences/com.apple.seld.*
killall -9 storebookkeeperd
rm -f /private/var/mobile/Library/Preferences/com.apple.storebookkeeper.plist
rm -f /private/var/mobile/Library/Preferences/com.apple.storebookkeeperd.plist
rm -f /private/var/mobile/Library/Preferences/ProtectedCloudKeySyncing.plist
rm -f /private/var/mobile/Library/Preferences/kbd.plist

rm -f /private/var/mobile/Library/Preferences/com.apple.Accessibility.plist*
rm -f /private/var/mobile/Library/Preferences/com.apple.SpringBoard.plist.*
rm -f /private/var/mobile/Library/Preferences/com.apple.purplebuddy.plist.*
rm -f /private/var/mobile/Library/Preferences/com.apple.keyboard.plist*
rm -f /private/var/mobile/Library/Preferences/com.apple.WebUI.plist*
rm -f /private/var/mobile/Library/SyncedPreferences/com.apple.cloudrecents.*
rm -f /private/var/mobile/Library/SyncedPreferences/com.apple.cmfsyncagent.plist
rm -f /private/var/mobile/Library/SyncedPreferences/com.apple.sbd*
rm -f /private/var/mobile/Library/SyncedPreferences/com.apple.security.cloudkeychainproxy3.plist
rm -f /private/var/mobile/Library/SyncedPreferences/com.apple.syncedpreferences.plist

rm -f /private/var/wireless/Library/Preferences/com.apple.commcenter.plist*
rm -f /private/var/wireless/Library/Preferences/com.apple.awdd.persistent.plist*
rm -f /private/var/wireless/Library/Preferences/com.apple.commcenter.device_specific_nobackup.plist*
rm -f /private/var/wireless/Library/Preferences/com.apple.AppleBasebandManager.Statistics.plist*

rm -rf /private/var/mobile/Media/PhotoData/*
rm -f /private/var/mobile/Media/Recordings/*
rm -f /private/var/mobile/Media/iTunes_Control/iTunes/*.sqlitedb*

rm -f /private/var/preferences/SystemConfiguration/com.apple.accounts.exists.plist
rm -f /private/var/preferences/com.apple.security.cloudkeychainproxy3.keysToRegister.plist
rm -rf /private/var/root/Library/Lockdown
rm -rf /User/Library/Logs/CrashReporter/DiagnosticLogs/*
sync
launchctl load -w /System/Library/LaunchDaemons/com.apple.identityservicesd.plist
launchctl load -w /System/Library/LaunchDaemons/com.apple.apsd.plist
killall -9 backboardd SpringBoard
#killall -9 absd akd accountsd activationd aggregated askpermissiond assetsd atc backupd syncdefaultsd AppleIDAuthAgent aosnotifyd apsd AssetCacheLocatorService assetsd assistantd bird calaccessd CallHistorySyncHelper cfprefsd cdpd configd cloudd CloudKeychainProxy cmfsyncagent coreauthd dataaccessd familynotificationd fairplayd.H2 findmydeviced fmfd fmflocatord geod identityservices identityservicesd imagent ind IDSKeychainSyncingProxy IDSRemoteURLConnectionAgent IMDMessageServicesAgent itunescloudd itunesstored keybagd lskdd lockdown locationd mapspushd mobileactivationd MobileMail nanoregistryd networkd notifyd nsurlsessiond nsurlstoraged online-auth-agent OTAPKIAssetTool passd pfd pkd profiled routined sbd securityd syncdefaultsd seld tccd Preferences backboardd SpringBoard
