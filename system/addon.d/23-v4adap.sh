#!/sbin/sh
# 
# /system/addon.d/23-v4adap.sh
#
. /tmp/backuptool.functions

list_files() {
cat <<EOF
addon.d/23-v4adap.sh
priv-app/As/As.apk
priv-app/AsUI/AsUI.apk
priv-app/ViPER4AndroidFX-2.5.0.5/ViPER4AndroidFX-2.5.0.5.apk
priv-app/ViPER4AndroidFX-2.5.0.5/lib/arm/libV4AJniUtils.so
lib/libdlbdapstorage.so
lib/soundfx/libswdap-mod.so
lib/soundfx/libv4a_fx_ics.so
lib/libacdbmapper.so
lib/libasound.so
lib/libaudcal.so
lib/libaudio_init.so
lib/libaudioalsa.so
lib/libAudioTrimmer.so
lib/libbeatscorehtc.so
lib/libsoundhoundaudio.so
lib/libvoAudioFR.so
lib/libUXVisualizerCore.so
lib/libV4AJniUtils.so
etc/dolby/ds-default.xml
etc/audio_policy.conf
etc/audio_effects.conf
etc/audio_effects_vendor.conf
etc/htc_audio_effects.conf
vendor/etc/audio_effects.conf
vendor/lib/soundfx/libqcbassboost.so
vendor/lib/soundfx/libqcreverb.so
vendor/lib/soundfx/libqcvirt
bin/alsa_amixer
bin/alsa_aplay
bin/alsa_ctl
bin/aplay
bin/asound
bin/snd
bin/snd8k
bin/sound
bin/sound8x60
bin/spkamp
etc/sony_effect/clearphase_sp_param.bin
etc/sony_effect/effect_params.data
etc/sony_effect/sforce_param_arm.bin
etc/sony_effect/sforce_param_qdsp.bin
etc/sony_effect/xloud_param_arm.bin
etc/sony_effect/xloud_param_qdsp.bin
etc/soundimage/srs_bypass.cfg
etc/soundimage/srs_geq10.cfg
etc/soundimage/srs_global.cfg
etc/soundimage/srsfx_trumedia_51.cfg
etc/soundimage/srsfx_trumedia_movie.cfg
etc/soundimage/srsfx_trumedia_music.cfg
etc/soundimage/srsfx_trumedia_voice.cfg
etc/tfa/playbackbeats.config
etc/tfa/playbackbeats.eq
etc/tfa/playbackbeats.preset
etc/tfa/playbackbeats_I.config
etc/tfa/playbackbeats_I.eq
etc/tfa/playbackbeats_I.preset
etc/image_beatbox_bt.bin
etc/image_beats_speaker.bin
etc/image_beats_wireless_bt.bin
etc/image_gec.bin
etc/image_gec_2vol.bin
etc/image_gec_bt.bin
etc/image_htc_earbud.bin
etc/image_htc_earbud_2vol.bin
etc/image_htc_midtier.bin
etc/image_htc_midtier_2vol.bin
etc/image_ibeats.bin
etc/image_ibeats_2vol.bin
etc/image_ibeats_solo.bin
etc/image_ibeats_solo_2vol.bin
etc/image_ibeats_solo_v2.bin
etc/image_ibeats_solo_v2_2vol.bin
etc/image_ibeats_v2.bin
etc/image_ibeats_v2_2vol.bin
lib/soundfx/libsonypostprocbundle.so
lib/soundfx/libsonysweffect.so
lib/soundfx/libvpt51wrapper.so
lib/soundfx/libeffectproxy.so
lib/soundfx/libsrsfx.so
lib/soundfx/libbeatsbass.so
lib/soundfx/libbeatscorehtc.so
lib/soundfx/libsrscore.so
lib/soundfx/libsrscorehtc.so
lib/soundfx/libsrsprocessing.so
lib/soundfx/libsrstb.so
lib/soundfx/libvptwrapper.so
lib/soundfx/libaudiopreprocessing.so
lib/soundfx/libbundlewrapper.so
lib/soundfx/libdownmix.so
lib/soundfx/libldnhncr.so
lib/soundfx/libqcompostprocbundle.so
lib/soundfx/libqcomvisualizer.so
lib/soundfx/libqcomvoiceprocessing.so
lib/soundfx/libreverbwrapper.so
lib/soundfx/libvisualizer.so
lib/soundfx/libxloudwrapper.so
user/share/alsa/alsa.conf
user/share/alsa/cards/aliases.conf
user/share/alsa/pcm/center_lfe.conf
user/share/alsa/pcm/default.conf
user/share/alsa/pcm/dmix.conf
user/share/alsa/pcm/dpl.conf
user/share/alsa/pcm/dsnoop.conf
user/share/alsa/pcm/front.conf
user/share/alsa/pcm/iec958.conf
user/share/alsa/pcm/modem.conf
user/share/alsa/pcm/rear.conf
user/share/alsa/pcm/side.conf
user/share/alsa/pcm/surround40.conf
user/share/alsa/pcm/surround41.conf
user/share/alsa/pcm/surround50.conf
user/share/alsa/pcm/surround51.conf
user/share/alsa/pcm/surround71.conf
su.d/50viper.sh
ViPER Version Info.txt
EOF
}

case "$1" in
  backup)
    list_files | while read FILE DUMMY; do
      backup_file $S/$FILE
    done
  ;;
  restore)
    list_files | while read FILE REPLACEMENT; do
      R=""
      [ -n "$REPLACEMENT" ] && R="$S/$REPLACEMENT"
      [ -f "$C/$S/$FILE" ] && restore_file $S/$FILE $R
    done
  ;;
  pre-backup)
    # Stub
  ;;
  post-backup)
    # Stub
  ;;
  pre-restore)
	# Stub
  ;;
  post-restore)

echo " " >> /system/build.prop
echo "## ViPER|Audio™ ##" >> /system/build.prop
echo " " >> /system/build.prop
echo "audio.deep_buffer.media=false" >> /system/build.prop
echo "lpa.decode=false" >> /system/build.prop
echo "tunnel.decode=false" >> /system/build.prop
echo "tunnel.audiovideo.decode=false" >> /system/build.prop
echo "lpa.releaselock=false" >> /system/build.prop
echo "lpa.use-stagefright=false" >> /system/build.prop
echo "af.resampler.quality=255" >> /system/build.prop
echo "persist.af.resampler.quality=255" >> /system/build.prop
echo "af.resample=52000" >> /system/build.prop
echo "persist.af.resample=52000" >> /system/build.prop
echo "ro.audio.samplerate=6144000" >> /system/build.prop
echo "persist.dev.pm.dyn_samplingrate=1" >> /system/build.prop
echo "ro.audio.pcm.samplerate=6144000" >> /system/build.prop
echo "ro.sound.driver=alsa" >> /system/build.prop
echo "ro.sound.alsa=snd_pcm" >> /system/build.prop
echo "AUDIODRIVER=alsa" >> /system/build.prop
echo "ro.sound.driver=alsa" >> /system/build.prop
echo "clock.allow_streaming_errors=false" >> /system/build.prop
echo "default.pcm.rate_converter=samplerate_best" >> /system/build.prop
echo "ro.ril.enable.amr.wideband=1" >> /system/build.prop
echo " " >> /system/build.prop
echo "## SONY effect ##" >> /system/build.prop
echo "#  Allocate bit for each effect." >> /system/build.prop
echo "#  If necessary, define effect list with logical sum." >> /system/build.prop
echo "#  EFFECT_DN        0x0001 (Dynamic Normalizer)" >> /system/build.prop
echo "#  EFFECT_SF        0x0002 (S-Force)" >> /system/build.prop
echo "#  EFFECT_CPHP      0x0004 (ClearPhase Headphone)" >> /system/build.prop
echo "#  EFFECT_CA        0x0008 (ClearAudio)" >> /system/build.prop
echo "#  EFFECT_VPT       0x0010 (VPT)" >> /system/build.prop
echo "#  EFFECT_CPSP      0x0020 (ClearPhase Speaker)" >> /system/build.prop
echo "#  EFFECT_XLOUD     0x0040 (xLOUD)" >> /system/build.prop
echo "#  EFFECT_CAPLUS    0x0080 (ClearAudio+)" >> /system/build.prop
echo "#  EFFECT_SPBUNDLE  0x0100 (Speaker Bundle)" >> /system/build.prop
echo " " >> /system/build.prop
echo "# Effect used by Speaker Bundle." >> /system/build.prop
echo "# EFFECT_SF | EFFECT_CPSP | EFFECT_SPBUNDLE = 0x122" >> /system/build.prop
echo "sony.effect.custom.sp_bundle=0x122" >> /system/build.prop
echo " " >> /system/build.prop
echo "# Effect used by ClearAudio+ headset" >> /system/build.prop
echo "# EFFECT_CA | EFFECT_VPT | EFFECT_CAPLUS = 0x298" >> /system/build.prop
echo "sony.effect.custom.caplus_hs=0x298" >> /system/build.prop
echo " " >> /system/build.prop
echo "# Effect used by ClearAudio+ speaker" >> /system/build.prop
echo "# EFFECT_CA | EFFECT_VPT | EFFECT_CPSP | EFFECT_CAPLUS = 0x2B8" >> /system/build.prop
echo "sony.effect.custom.caplus_sp=0x2B8" >> /system/build.prop
echo " " >> /system/build.prop
echo "# Sound Enhancement Effects #" >> /system/build.prop
echo "sony.support.effect=0x1FF" >> /system/build.prop
echo "ro.semc.xloud.supported=true" >> /system/build.prop 
echo "persist.service.xloud.enable=1" >> /system/build.prop
echo "ro.semc.clearaudio.supported=true" >> /system/build.prop
echo "persist.service.clearaudio.enable=1" >> /system/build.prop
echo "ro.semc.clearphase.supported=true" >> /system/build.prop
echo "persist.service.clearphase.enable=1" >> /system/build.prop
echo "ro.somc.sforce.supported=true" >> /system/build.prop
echo "persist.service.sforce.enable=1" >> /system/build.prop
echo "" >> /system/build.prop
echo "# Sony Audio & Resampling" >> /system/build.prop
echo "audio.offload.buffer.size.kb=32" >> /system/build.prop
echo "audio.offload.pcm.16bit.enable=true" >> /system/build.prop
echo "audio.offload.pcm.24bit.enable=true" >> /system/build.prop
echo "audio.offload.pcm.32bit.enable=true" >> /system/build.prop
echo "audio.offload.multiple.enabled=true" >> /system/build.prop
echo "audio.offload.gapless.enabled=true" >> /system/build.prop
echo "audio.offload.passthrough=false" >> /system/build.prop
echo "ro.somc.ldac.audio.supported=true" >> /system/build.prop
echo "sony.ahc.supported=yes" >> /system/build.prop
echo "mpq.audio.decode=true" >> /system/build.prop
echo "sony.support.effect=0x1FF" >> /system/build.prop
echo "ro.semc.sound_effects_enabled=true" >> /system/build.prop
echo "ro.semc.xloud.supported=true" >> /system/build.prop
echo "persist.service.xloud.enable=1" >> /system/build.prop
echo "ro.semc.enhance.supported=true" >> /system/build.prop
echo "persist.service.enhance.enable=1" >> /system/build.prop
echo "ro.semc.clearaudio.supported=true" >> /system/build.prop
echo "persist.service.clearaudio.enable=1" >> /system/build.prop
echo "ro.sony.walkman.logger=1" >> /system/build.prop
echo "persist.service.walkman.enable=1" >> /system/build.prop
echo "ro.semc.clearphase.supported=true" >> /system/build.prop
echo "persist.service.clearphase.enable=1" >> /system/build.prop
echo "persist.service.enhance.enable=1" >> /system/build.prop
echo "ro.somc.sforce.supported=true" >> /system/build.prop
echo "persist.service.sforce.enable=1" >> /system/build.prop
echo "ro.somc.dseehx.supported=false" >> /system/build.prop
echo "persist.service.dseehx.enable=0" >> /system/build.prop
echo "com.sonymobile.dseehx_enabled=false" >> /system/build.prop
echo "com.sonyericsson.xloud_enabled=true" >> /system/build.prop
echo "ro.semc.xloud.default_setting=true" >> /system/build.prop
echo "com.sonymobile.clearphase_enabled=true" >> /system/build.prop
echo "ro.semc.cp.default_setting=true" >> /system/build.prop
echo "com.sonymobile.sforce_enabled=true" >> /system/build.prop
echo "ro.semc.sfs.default_setting=true" >> /system/build.prop
echo "" >> /system/build.prop

sed -i '/deep_buffer {/,/}/d' /system/etc/audio_policy.conf

# Normal/vendor config locations
CONFIG_FILE=/system/etc/audio_effects.conf
VENDOR_CONFIG=/system/vendor/etc/audio_effects.conf

# Add Qualcomm Sound Effect

# Add libary
sed -i 's/^libraries {/libraries {\n  qcbassboost {\n    path \/system\/vendor\/lib\/soundfx\/libqcbassboost.so\n  }/g' $CONFIG_FILE
sed -i 's/^libraries {/libraries {\n  qcvirt {\n    path \/system\/vendor\/lib\/soundfx\/libqcvirt.so\n  }/g' $CONFIG_FILE
sed -i 's/^libraries {/libraries {\n  qcreverb {\n    path \/system\/vendor\/lib\/soundfx\/libqcreverb.so\n  }/g' $CONFIG_FILE

# Add effect
sed -i 's/^effects {/effects {\n  bassboost {\n    library qcbassboost\n    uuid 23aca180-44bd-11e2-bcfd-0800200c9a66\n  }/g' $CONFIG_FILE
sed -i 's/^effects {/effects {\n  virtualizer {\n    library qcvirt\n    uuid e6c98a16-22a3-11e2-b87b-f23c91aec05e\n  }/g' $CONFIG_FILE
sed -i 's/^effects {/effects {\n  reverb_env_aux {\n    library qcreverb\n    uuid a8c1e5f3-293d-43cd-95ec-d5e26c02e217\n  }/g' $CONFIG_FILE
sed -i 's/^effects {/effects {\n  reverb_env_ins {\n    library qcreverb\n    uuid 791fff8b-8129-4655-83a4-59bc61034c3a\n  }/g' $CONFIG_FILE
sed -i 's/^effects {/effects {\n  reverb_pre_aux {\n    library qcreverb\n    uuid 53ef1db5-c0c0-445b-b060-e34d20ebb70a\n  }/g' $CONFIG_FILE
sed -i 's/^effects {/effects {\n  reverb_pre_ins {\n    library qcreverb\n    uuid b08a0e38-22a5-11e2-b87b-f23c91aec05e\n  }/g' $CONFIG_FILE

# Add libary
sed -i 's/^libraries {/libraries {\n  qcbassboost {\n    path \/system\/vendor\/lib\/soundfx\/libqcbassboost.so\n  }/g' $VENDOR_CONFIG
sed -i 's/^libraries {/libraries {\n  qcvirt {\n    path \/system\/vendor\/lib\/soundfx\/libqcvirt.so\n  }/g' $VENDOR_CONFIG
sed -i 's/^libraries {/libraries {\n  qcreverb {\n    path \/system\/vendor\/lib\/soundfx\/libqcreverb.so\n  }/g' $VENDOR_CONFIG

# Add effect
sed -i 's/^effects {/effects {\n  bassboost {\n    library qcbassboost\n    uuid 23aca180-44bd-11e2-bcfd-0800200c9a66\n  }/g' $VENDOR_CONFIG
sed -i 's/^effects {/effects {\n  virtualizer {\n    library qcvirt\n    uuid e6c98a16-22a3-11e2-b87b-f23c91aec05e\n  }/g' $VENDOR_CONFIG
sed -i 's/^effects {/effects {\n  reverb_env_aux {\n    library qcreverb\n    uuid a8c1e5f3-293d-43cd-95ec-d5e26c02e217\n  }/g' $VENDOR_CONFIG
sed -i 's/^effects {/effects {\n  reverb_env_ins {\n    library qcreverb\n    uuid 791fff8b-8129-4655-83a4-59bc61034c3a\n  }/g' $VENDOR_CONFIG
sed -i 's/^effects {/effects {\n  reverb_pre_aux {\n    library qcreverb\n    uuid 53ef1db5-c0c0-445b-b060-e34d20ebb70a\n  }/g' $VENDOR_CONFIG
sed -i 's/^effects {/effects {\n  reverb_pre_ins {\n    library qcreverb\n    uuid b08a0e38-22a5-11e2-b87b-f23c91aec05e\n  }/g' $VENDOR_CONFIG

# Add SONY Sound Effect

# Add libary
sed -i 's/^libraries {/libraries {\n  sonyeffect_sw {\n    path \/system\/lib\/soundfx\/libsonysweffect.so\n  }/g' $CONFIG_FILE
sed -i 's/^libraries {/libraries {\n  sonyeffect_hw {\n    path \/system\/lib\/soundfx\/libsonypostprocbundle.so\n  }/g' $CONFIG_FILE
sed -i 's/^libraries {/libraries {\n  vpt51 {\n    path \/system\/lib\/soundfx\/libvpt51wrapper.so\n  }/g' $CONFIG_FILE
sed -i 's/^libraries {/libraries {\n  xloud {\n    path \/system\/lib\/soundfx\/libxloudwrapper.so\n  }/g' $CONFIG_FILE
sed -i 's/^libraries {/libraries {\n  znrwrapper {\n    path \/system\/lib\/soundfx\/libznrwrapper.so\n  }/g' $CONFIG_FILE

# Add effect
sed -i 's/^effects {/effects {\n  sonyeffect {\n    libsw {\n        library sonyeffect_sw\n        uuid 50786e95-da76-4557-976b-7981bdf6feb9\n    }\n \n    libhw {\n        library sonyeffect_hw\n        uuid f9ed8ae0-1b9c-11e4-8900-0002a5d5c51b\n    }\n  }/g' $CONFIG_FILE
sed -i 's/^effects {/effects {\n  VPT51 {\n    library vpt51\n    uuid 447bdc20-198c-11e2-892e-0800200c9a66\n  }/g' $CONFIG_FILE
sed -i 's/^effects {/effects {\n  xloud {\n    library xloud\n    uuid 46af9240-dd14-11df-ae36-0002a5D5c51b\n  }/g' $CONFIG_FILE
sed -i 's/^effects {/effects {\n  ZNR {\n    library znrwrapper\n    uuid b8a031e0-6bbf-11e5-b9ef-0002a5d5c51b\n  }/g' $CONFIG_FILE

# Add libary
sed -i 's/^libraries {/libraries {\n  sonyeffect_sw {\n    path \/system\/lib\/soundfx\/libsonysweffect.so\n  }/g' $VENDOR_CONFIG
sed -i 's/^libraries {/libraries {\n  sonyeffect_hw {\n    path \/system\/lib\/soundfx\/libsonypostprocbundle.so\n  }/g' $VENDOR_CONFIG
sed -i 's/^libraries {/libraries {\n  vpt51 {\n    path \/system\/lib\/soundfx\/libvpt51wrapper.so\n  }/g' $VENDOR_CONFIG
sed -i 's/^libraries {/libraries {\n  xloud {\n    path \/system\/lib\/soundfx\/libxloudwrapper.so\n  }/g' $VENDOR_CONFIG
sed -i 's/^libraries {/libraries {\n  znrwrapper {\n    path \/system\/lib\/soundfx\/libznrwrapper.so\n  }/g' $VENDOR_CONFIG

# Add effect
sed -i 's/^effects {/effects {\n  sonyeffect {\n    libsw {\n        library sonyeffect_sw\n        uuid 50786e95-da76-4557-976b-7981bdf6feb9\n    }\n \n    libhw {\n        library sonyeffect_hw\n        uuid f9ed8ae0-1b9c-11e4-8900-0002a5d5c51b\n    }\n  }/g' $VENDOR_CONFIG
sed -i 's/^effects {/effects {\n  VPT51 {\n    library vpt51\n    uuid 447bdc20-198c-11e2-892e-0800200c9a66\n  }/g' $VENDOR_CONFIG
sed -i 's/^effects {/effects {\n  xloud {\n    library xloud\n    uuid 46af9240-dd14-11df-ae36-0002a5D5c51b\n  }/g' $VENDOR_CONFIG
sed -i 's/^effects {/effects {\n  ZNR {\n    library znrwrapper\n    uuid b8a031e0-6bbf-11e5-b9ef-0002a5d5c51b\n  }/g' $VENDOR_CONFIG

# ADD SRS and Beats

# Add libary
sed -i 's/^libraries {/libraries {\n  SRS {\n    path \/system\/lib\/soundfx\/libsrsfx.so\n  }/g' $CONFIG_FILE
sed -i 's/^libraries {/libraries {\n  srscore {\n    path \/system\/lib\/soundfx\/libsrscorehtc.so\n  }/g' $CONFIG_FILE
sed -i 's/^libraries {/libraries {\n  beatscore {\n    path \/system\/lib\/soundfx\/libbeatscorehtc.so\n  }/g' $CONFIG_FILE
sed -i 's/^libraries {/libraries {\n  bass_enhancement {\n    path \/system\/lib\/soundfx\/libbeats.so\n  }/g' $CONFIG_FILE
sed -i 's/^libraries {/libraries {\n  srstb {\n    path \/system\/lib\/soundfx\/libsrstb.so\n  }/g' $CONFIG_FILE

# Add effect
sed -i 's/^effects {/effects {\n  wowhd {\n    library SRS\n    uuid f7a247b0-1a7b-11e0-bb0d-2a30dfd72085\n  }/g' $CONFIG_FILE
sed -i 's/^effects {/effects {\n  srsgeq5 {\n    library SRS\n    uuid f7a247b0-1a7b-11e0-bb0d-2a30dfd72085\n  }/g' $CONFIG_FILE
sed -i 's/^effects {/effects {\n  dynamic_bass_boost {\n    library SRS\n    uuid f7a247b0-1a7b-11e0-bb0d-2a30dfd72085\n  }/g' $CONFIG_FILE
sed -i 's/^effects {/effects {\n  bassenhance {\n    library bass_enhancement\n    uuid b3b43f60-a2f0-11e0-8b5a-0002a5d5c51b\n  }/g' $CONFIG_FILE

# Add libary
sed -i 's/^libraries {/libraries {\n  SRS {\n    path \/system\/lib\/soundfx\/libsrsfx.so\n  }/g' $VENDOR_CONFIG
sed -i 's/^libraries {/libraries {\n  srscore {\n    path \/system\/lib\/soundfx\/libsrscorehtc.so\n  }/g' $VENDOR_CONFIG
sed -i 's/^libraries {/libraries {\n  beatscore {\n    path \/system\/lib\/soundfx\/libbeatscorehtc.so\n  }/g' $VENDOR_CONFIG
sed -i 's/^libraries {/libraries {\n  bass_enhancement {\n    path \/system\/lib\/soundfx\/libbeats.so\n  }/g' $VENDOR_CONFIG
sed -i 's/^libraries {/libraries {\n  srstb {\n    path \/system\/lib\/soundfx\/libsrstb.so\n  }/g' $VENDOR_CONFIG

# Add effect
sed -i 's/^effects {/effects {\n  wowhd {\n    library SRS\n    uuid f7a247b0-1a7b-11e0-bb0d-2a30dfd72085\n  }/g' $VENDOR_CONFIG
sed -i 's/^effects {/effects {\n  srsgeq5 {\n    library SRS\n    uuid f7a247b0-1a7b-11e0-bb0d-2a30dfd72085\n  }/g' $VENDOR_CONFIG
sed -i 's/^effects {/effects {\n  dynamic_bass_boost {\n    library SRS\n    uuid f7a247b0-1a7b-11e0-bb0d-2a30dfd72085\n  }/g' $VENDOR_CONFIG
sed -i 's/^effects {/effects {\n  bassenhance {\n    library bass_enhancement\n    uuid b3b43f60-a2f0-11e0-8b5a-0002a5d5c51b\n  }/g' $VENDOR_CONFIG

# ADD DOLBY

# If vendor exists, patch it
if [ -f $VENDOR_CONFIG ];
then
	# Remove library & effect
	sed -i '/dap/,/}/d' $VENDOR_CONFIG
fi

# Remove library & effect
sed -i '/dap/,/}/d' $CONFIG_FILE

# If vendor exists, patch it
if [ -f $VENDOR_CONFIG ];
then
	# Add libary
	sed -i 's/^libraries {/libraries {\n  dap {\n    path \/system\/lib\/soundfx\/libswdap-mod.so\n  }/g' $VENDOR_CONFIG
	
	# Add effect
	sed -i 's/^effects {/effects {\n  dap {\n    library dap\n    uuid 9d4921da-8225-4f29-aefa-39537a041337\n  }/g' $VENDOR_CONFIG
fi

# Add libary
sed -i 's/^libraries {/libraries {\n  dap {\n    path \/system\/lib\/soundfx\/libswdap-mod.so\n  }/g' $CONFIG_FILE

# Add effect
sed -i 's/^effects {/effects {\n  dap {\n    library dap\n    uuid 9d4921da-8225-4f29-aefa-39537a041337\n  }/g' $CONFIG_FILE

# ADD Viper4Android

# Add libary
sed -i 's/^libraries {/libraries {\n  v4a_fx {\n    path \/system\/lib\/soundfx\/libv4a_fx_ics.so\n  }/g' $CONFIG_FILE

# Add effect
sed -i 's/^effects {/effects {\n  v4a_standard_fx {\n    library v4a_fx\n    uuid 41d3c987-e6cf-11e3-a88a-11aba5d5c51b\n  }/g' $CONFIG_FILE

# Add libary
sed -i 's/^libraries {/libraries {\n  v4a_fx {\n    path \/system\/lib\/soundfx\/libv4a_fx_ics.so\n  }/g' $VENDOR_CONFIG

# Add effect
sed -i 's/^effects {/effects {\n  v4a_standard_fx {\n    library v4a_fx\n    uuid 41d3c987-e6cf-11e3-a88a-11aba5d5c51b\n  }/g' $VENDOR_CONFIG

  ;;
esac
