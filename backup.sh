#!/sbin/sh
#
# www.osbusters.net
#
# Quasar AtmoX™ SoundMod
#
# This will backup important system files which will be modified by the mod.
# And the backup will be restored when you will use the uninstaller
#
# AUTHOR: nitesh9 (Nitesh Prasad)
#ui_print "##################################################### "
outfile="/tmp/recovery.log"

# Mount /system and /data
echo "#####START mounting system and data" >> ${outfile} 2>&1
mount | grep " /system " || /sbin/mount /system >> ${outfile} 2>&1
mount | grep " /data " || /sbin/mount /data >> ${outfile} 2>&1
mount >> ${outfile} 2>&1
df -h >> ${outfile} 2>&1
echo "#####END mounting system and data" >> ${outfile} 2>&1

# Create separate directories in /data
mkdir -p "/data/quasar-atmox"
chmod 755 "/data/quasar-atmox"
mkdir -p "/data/quasar-atmox/backup"
chmod 755 "/data/quasar-atmox/backup"
mkdir -p "/data/quasar-atmox/backup/app"
chmod 755 "/data/quasar-atmox/backup/app"
mkdir -p "/data/quasar-atmox/backup/bin"
chmod 755 "/data/quasar-atmox/backup/bin"
mkdir -p "/data/quasar-atmox/backup/etc"
chmod 755 "/data/quasar-atmox/backup/etc"
mkdir -p "/data/quasar-atmox/backup/framework"
chmod 755 "/data/quasar-atmox/backup/framework"
mkdir -p "/data/quasar-atmox/backup/lib"
chmod 755 "/data/quasar-atmox/backup/lib"
mkdir -p "/data/quasar-atmox/backup/priv-app"
chmod 755 "/data/quasar-atmox/backup/priv-app"
mkdir -p "/data/quasar-atmox/backup/usr"
chmod 755 "/data/quasar-atmox/backup/usr"
mkdir -p "/data/quasar-atmox/backup/usr/share"
chmod 755 "/data/quasar-atmox/backup/usr/share"
mkdir -p "/data/quasar-atmox/backup/vendor"
chmod 755 "/data/quasar-atmox/backup/vendor"
mkdir -p "/data/quasar-atmox/backup/vendor/lib"
chmod 755 "/data/quasar-atmox/backup/vendor/lib"

# Moving files to data partition
# From system
cp -f "/system/build.prop" "/data/quasar-atmox/backup/"

# From system/app folder
cp -rf "/system/app/GoogleLyricsPlugin" "/data/quasar-atmox/backup/app/GoogleLyricsPlugin"
cp -rf "/system/app/HeadphoneSelection" "/data/quasar-atmox/backup/app/HeadphoneSelection"
cp -rf "/system/app/MaxxAudio" "/data/quasar-atmox/backup/app/MaxxAudio"
cp -rf "/system/app/MaxxService" "/data/quasar-atmox/backup/app/MaxxService"
cp -rf "/system/app/MusicFX" "/data/quasar-atmox/backup/app/MusicFX"
cp -rf "/system/app/SemcMetadataCleanup" "/data/quasar-atmox/backup/app/SemcMetadataCleanup"
cp -rf "/system/app/WikipediaPlugin" "/data/quasar-atmox/backup/app/WikipediaPlugin"
cp -rf "/system/app/YouTubeKaraokePlugin" "/data/quasar-atmox/backup/app/YouTubeKaraokePlugin"
cp -rf "/system/app/YouTubePlugin" "/data/quasar-atmox/backup/app/YouTubePlugin"

# From system/bin folder
cp -f "/system/bin/alsa_amixer" "/data/quasar-atmox/backup/bin/"
cp -f "/system/bin/alsa_aplay" "/data/quasar-atmox/backup/bin/"
cp -f "/system/bin/alsa_ctl" "/data/quasar-atmox/backup/bin/"
cp -f "/system/bin/aplay" "/data/quasar-atmox/backup/bin/"
cp -f "/system/bin/asound" "/data/quasar-atmox/backup/bin/"
cp -f "/system/bin/snd" "/data/quasar-atmox/backup/bin/"
cp -f "/system/bin/snd8k" "/data/quasar-atmox/backup/bin/"
cp -f "/system/bin/sound" "/data/quasar-atmox/backup/bin/"
cp -f "/system/bin/sound8x60" "/data/quasar-atmox/backup/bin/"
cp -f "/system/bin/spkamp" "/data/quasar-atmox/backup/bin/"

# From system/etc folder
cp -rf "/system/etc/dolby" "/data/quasar-atmox/backup/etc/dolby"
cp -rf "/system/etc/permissions" "/data/quasar-atmox/backup/etc/permissions"
cp -rf "/system/etc/sforce" "/data/quasar-atmox/backup/etc/sforce"
cp -rf "/system/etc/sony_effect" "/data/quasar-atmox/backup/etc/sony_effect"
cp -rf "/system/etc/soundimage" "/data/quasar-atmox/backup/etc/soundimage"
cp -rf "/system/etc/surround_sound_3mic" "/data/quasar-atmox/backup/etc/surround_sound_3mic"
cp -rf "/system/etc/tfa" "/data/quasar-atmox/backup/etc/tfa"
cp -f "/system/etc/audio_effects.conf" "/data/quasar-atmox/backup/etc/"
cp -f "/system/etc/dsx_param_file.bin" "/data/quasar-atmox/backup/etc/"
cp -f "/system/etc/image_beatbox_bt.bin" "/data/quasar-atmox/backup/etc/"
cp -f "/system/etc/image_beats*.bin" "/data/quasar-atmox/backup/etc/"
cp -f "/system/etc/image_gec*.bin" "/data/quasar-atmox/backup/etc/"
cp -f "/system/etc/image_htc*.bin" "/data/quasar-atmox/backup/etc/"
cp -f "/system/etc/image_ibeats*.bin" "/data/quasar-atmox/backup/etc/"

# From system/framework folder
cp -f "/system/framework/com.sony.device.jar" "/data/quasar-atmox/backup/framework/"
cp -f "/system/framework/com.sonyericsson.appextensions.jar" "/data/quasar-atmox/backup/framework/"
cp -f "/system/framework/com.sonyericsson.colorextraction_impl.jar" "/data/quasar-atmox/backup/framework/"
cp -f "/system/framework/com.sonyericsson.dlna.dtcpplayer.jar" "/data/quasar-atmox/backup/framework/"
cp -f "/system/framework/com.sonyericsson.dlna_impl.jar" "/data/quasar-atmox/backup/framework/"
cp -f "/system/framework/com.sonyericsson.dtcpctrl_private_impl.jar" "/data/quasar-atmox/backup/framework/"
cp -f "/system/framework/com.sonyericsson.dtcpctrl_protected_impl.jar" "/data/quasar-atmox/backup/framework/"
cp -f "/system/framework/com.sonyericsson.idd_impl.jar" "/data/quasar-atmox/backup/framework/"
cp -f "/system/framework/com.sonyericsson.illumination.jar" "/data/quasar-atmox/backup/framework/"
cp -f "/system/framework/com.sonyericsson.media.infinite.extension_1.jar" "/data/quasar-atmox/backup/framework/"
cp -f "/system/framework/com.sonyericsson.metadatacleanup.jar" "/data/quasar-atmox/backup/framework/"
cp -f "/system/framework/com.sonyericsson.music.jar" "/data/quasar-atmox/backup/framework/"
cp -f "/system/framework/com.sonyericsson.privateapis_impl.jar" "/data/quasar-atmox/backup/framework/"
cp -f "/system/framework/com.sonyericsson.system.jar" "/data/quasar-atmox/backup/framework/"
cp -f "/system/framework/com.sonyericsson.updatecenter.jar" "/data/quasar-atmox/backup/framework/"
cp -f "/system/framework/com.sonyericsson.uxp.jar" "/data/quasar-atmox/backup/framework/"
cp -f "/system/framework/com.sonyericsson.uxpres.jar" "/data/quasar-atmox/backup/framework/"
cp -f "/system/framework/com.sonymobile.drmstream_impl.jar" "/data/quasar-atmox/backup/framework/"
cp -f "/system/framework/com.sonymobile.media.dashboard.extension.jar" "/data/quasar-atmox/backup/framework/"
cp -f "/system/framework/com.sonymobile.mediacontent.jar" "/data/quasar-atmox/backup/framework/"
cp -f "/system/framework/com.sonymobile.musicslideshow.jar" "/data/quasar-atmox/backup/framework/"
cp -f "/system/framework/com.sonymobile.podcast.jar" "/data/quasar-atmox/backup/framework/"
cp -f "/system/framework/com.sonymobile.product_impl.jar" "/data/quasar-atmox/backup/framework/"
cp -f "/system/framework/com.sonymobile.settings.illumination.jar" "/data/quasar-atmox/backup/framework/"
cp -f "/system/framework/com.sonymobile.settings.shakecontrol.jar" "/data/quasar-atmox/backup/framework/"
cp -f "/system/framework/com.sonymobile.softreset.jar" "/data/quasar-atmox/backup/framework/"
cp -f "/system/framework/semc_audioeffectif.jar" "/data/quasar-atmox/backup/framework/"
cp -f "/system/framework/sonyaudioeffect.jar" "/data/quasar-atmox/backup/framework/"

# From system/lib folder
cp -rf "/system/lib/soundfx" "/data/quasar-atmox/backup/lib/soundfx"
cp -f "/system/lib/libacdbmapper.so" "/data/quasar-atmox/backup/lib/"
cp -f "/system/lib/libasound.so" "/data/quasar-atmox/backup/lib/"
cp -f "/system/lib/libaudcal.so" "/data/quasar-atmox/backup/lib/"
cp -f "/system/lib/libaudio_init.so" "/data/quasar-atmox/backup/lib/"
cp -f "/system/lib/libaudioalsa.so" "/data/quasar-atmox/backup/lib/"
cp -f "/system/lib/libaudioeffect_jni.so" "/data/quasar-atmox/backup/lib/"
cp -f "/system/lib/libAudioTrimmer.so" "/data/quasar-atmox/backup/lib/"
cp -f "/system/lib/libbeatscorehtc.so" "/data/quasar-atmox/backup/lib/"
cp -f "/system/lib/libDiracAPI_SHARED.so" "/data/quasar-atmox/backup/lib/"
cp -f "/system/lib/libdlbdapstorage.so" "/data/quasar-atmox/backup/lib/"
cp -f "/system/lib/libDynamicNormalizer.so" "/data/quasar-atmox/backup/lib/"
cp -f "/system/lib/libEffectOmxCore.so" "/data/quasar-atmox/backup/lib/"
cp -f "/system/lib/libldacBT_enc.so" "/data/quasar-atmox/backup/lib/"
cp -f "/system/lib/libsonydseehxwrapper.so" "/data/quasar-atmox/backup/lib/"
cp -f "/system/lib/libsoundhoundaudio.so" "/data/quasar-atmox/backup/lib/"
cp -f "/system/lib/libstagefright_soft_alacdec.so" "/data/quasar-atmox/backup/lib/"
cp -f "/system/lib/libstagefright_soft_dsddec.so" "/data/quasar-atmox/backup/lib/"
cp -f "/system/lib/libV4AJniUtils.so" "/data/quasar-atmox/backup/lib/"
cp -f "/system/lib/libvoAudioFR.so" "/data/quasar-atmox/backup/lib/"

# From system/priv-app folder
cp -rf "/system/priv-app/As" "/data/quasar-atmox/backup/priv-app/As"
cp -rf "/system/priv-app/AsUI" "/data/quasar-atmox/backup/priv-app/AsUI"
cp -rf "/system/priv-app/MusicFX" "/data/quasar-atmox/backup/priv-app/MusicFX"
cp -rf "/system/priv-app/SemcMusic" "/data/quasar-atmox/backup/priv-app/SemcMusic"
cp -rf "/system/priv-app/SomcPodcast" "/data/quasar-atmox/backup/priv-app/SomcPodcast"
cp -rf "/system/priv-app/SoundEnhancement" "/data/quasar-atmox/backup/priv-app/SoundEnhancement"
cp -rf "/system/priv-app/ViPER4AndroidFX-2.5.0.5" "/data/quasar-atmox/backup/priv-app/ViPER4AndroidFX-2.5.0.5"

# From system/usr folder
cp -rf "/system/usr/share/alsa" "/data/quasar-atmox/backup/usr/share/alsa"

# From system/vendor folder
cp -rf "/system/vendor/etc" "/data/quasar-atmox/backup/vendor/etc"
cp -rf "/system/vendor/lib/soundfx" "/data/quasar-atmox/backup/vendor/lib/soundfx"
cp -f "/system/vendor/lib/libaudioalsa.so" "/data/quasar-atmox/backup/vendor/lib/"

# Backup other folders
cp -rf "/system/addon.d" "/data/quasar-atmox/backup/addon.d"
cp -rf "/system/su.d" "/data/quasar-atmox/backup/su.d"
