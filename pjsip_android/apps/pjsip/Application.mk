APP_PROJECT_PATH := $(call my-dir)/../../../CSipSimple
#APP_PROJECT_PATH := $(call my-dir)/project
APP_BUILD_SCRIPT= := $(call my-dir)/project/build/Android.mk
#APP_OPTIM        := debug
APP_OPTIM        := release
APP_ABI := armeabi armeabi-v7a
#APP_ABI := armeabi-v7a
#APP_ABI := armv4t 
APP_STL := stlport_static

MY_USE_G729 := 1
MY_USE_ILBC := 0
MY_USE_G722 := 1
MY_USE_G7221 := 0
MY_USE_SPEEX := 1
MY_USE_GSM := 1
MY_USE_SILK := 1
MY_USE_CODEC2 := 0
MY_USE_TLS := 0
MY_USE_WEBRTC := 1
MY_USE_AMR := 1

MY_ANDROID_DEV := 1

APP_MODULES := libpjsipjni

BASE_PJSIP_FLAGS := -DPJ_ANDROID=1 -DPJMEDIA_HAS_G729_CODEC=$(MY_USE_G729) \
	-DPJMEDIA_HAS_ILBC_CODEC=$(MY_USE_ILBC) -DPJMEDIA_HAS_G722_CODEC=$(MY_USE_G722) \
	-DPJMEDIA_HAS_SPEEX_CODEC=$(MY_USE_SPEEX) -DPJMEDIA_HAS_GSM_CODEC=$(MY_USE_GSM) \
	-DPJMEDIA_HAS_SILK_CODEC=$(MY_USE_SILK) -DPJMEDIA_HAS_CODEC2_CODEC=$(MY_USE_CODEC2) \
	-DPJMEDIA_HAS_G7221_CODEC=$(MY_USE_G7221) -DPJMEDIA_HAS_WEBRTC_CODEC=$(MY_USE_WEBRTC) \
	-DPJMEDIA_HAS_AMR_STAGEFRIGHT_CODEC=$(MY_USE_AMR) \
	-DPJ_HAS_SSL_SOCK=$(MY_USE_TLS) -DPJMEDIA_HAS_ZRTP=$(MY_USE_TLS) \
	-DPJ_ANDROID_DEVICE=$(MY_ANDROID_DEV) -DPJMEDIA_HAS_WEBRTC_AEC=$(MY_USE_WEBRTC)
