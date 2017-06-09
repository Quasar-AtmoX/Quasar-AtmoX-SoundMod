#!/sbin/sh

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
echo "# Dirac Audio" >> /system/build.prop
echo "persist.audio.dirac.speaker=true" >> /system/build.prop
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

# Add Dirac Sound Effect

# Add libary
sed -i 's/^libraries {/libraries {\n  dirac {\n    path \/system\/lib\/soundfx\/libdirac.so\n  }/g' $CONFIG_FILE

# Add effect
sed -i 's/^effects {/effects {\n  dirac {\n    library dirac\n    uuid e069d9e0-8329-11df-9168-0002a5d5c51b\n  }/g' $CONFIG_FILE

# Add libary
sed -i 's/^libraries {/libraries {\n  dirac {\n    path \/system\/lib\/soundfx\/libdirac.so\n  }/g' $VENDOR_CONFIG

# Add effect
sed -i 's/^effects {/effects {\n  dirac {\n    library dirac\n    uuid e069d9e0-8329-11df-9168-0002a5d5c51b\n  }/g' $VENDOR_CONFIG

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
