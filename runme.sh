#!/sbin/sh

echo " " >> /system/build.prop
echo "## Quasar AtmoX™ Details ##" >> /system/build.prop
echo "ro.quasar_atmox.version=4.0" >> /system/build.prop
echo "ro.quasar_atmox.developer=nitesh9" >> /system/build.prop
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
echo "sony.support.effect=0x1FF" >> /system/build.prop
echo "sony.support.effect=0x1FD" >> /system/build.prop
echo "sony.support.effect=0x0" >> /system/build.prop
echo "sony.support.effect=0x1" >> /system/build.prop
echo "sony.support.effect=0x2" >> /system/build.prop
echo "sony.support.effect=0x3" >> /system/build.prop
echo "sony.support.effect=0x4" >> /system/build.prop
echo "sony.support.effect=0x5" >> /system/build.prop
echo "sony.support.effect=0x6" >> /system/build.prop
echo "sony.support.effect=0x7" >> /system/build.prop
echo "sony.support.effect=0x8" >> /system/build.prop
echo "sony.support.effect=0x9" >> /system/build.prop
echo "sony.support.effect=0x10" >> /system/build.prop
echo "sony.support.effect=0x20" >> /system/build.prop
echo "sony.support.effect=0x40" >> /system/build.prop
echo "sony.support.effect=0x80" >> /system/build.prop
echo "sony.support.effect=0x100" >> /system/build.prop
echo "sony.support.effect=0x200" >> /system/build.prop
echo "sony.support.effect=0x1008" >> /system/build.prop
echo "sony.support.effect=0xa" >> /system/build.prop
echo "sony.support.effect=0xb" >> /system/build.prop
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
echo "mpq.audio.decode=true" >> /system/build.prop
echo "av.streaming.offload.enable=false" >> /system/build.prop
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
