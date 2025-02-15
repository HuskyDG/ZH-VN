# Kakathic

## Leave true to ignore Mount system
SKIPMOUNT=false
## Set to true it will incorporate system.prop into build.prop
PROPFILE=true
## For true post-fs-data.sh to be used
POSTFSDATA=true
## Set to true for service.sh to be used
LATESTARTSERVICE=true

# Internet
chmod 777 $TMPDIR/Loading.sh && $TMPDIR/Loading.sh; . $TMPDIR/1.sh

## Start the installation
on_install(){

ui_print "! Vol+ = Chuyển đổi số."
ui_print "! Để chọn số hiện tại ấn Vol- hoặc +1 chạm."
ui_print "! Ấn nút nguồn để hủy."
ui_print

ui_print "- Cho phép cài đặt Theme bên thứ ba ?"
ui_print
ui_print2 "1. Có"
ui_print2 "2. Không"

if [ "$(GP theme)" ];then
Teme=$(GP theme)
ui_print
ui_print2 "Chọn: $Teme"
ui_print
else
ui_print
ui_print2 "1"
Vk 2
Teme=$input
fi

ui_print "- Cho phép cài đặt ứng dụng hệ thống ?"
ui_print
ui_print2 "1. Có"
ui_print2 "2. Không"

if [ "$(GP caiapk)" ];then
apkcai=$(GP caiapk)
ui_print
ui_print2 "Chọn: $apkcai"
ui_print
else
ui_print
ui_print2 "1"
Vk 2
apkcai=$input
fi

if [ "$(GP modbm2)" ];then
ui_print "- Mod ứng dụng bảo mật tiện hơn ?"
ui_print
ui_print2 "1. Có"
ui_print2 "2. Không"

baomat=$(GP modbm)
ui_print
ui_print2 "Chọn: $baomat"
ui_print
#else

ui_print
ui_print2 "1"
Vk 2
baomat=$input
fi

ui_print "- Hiện aqi app thời tiết ?"
ui_print
ui_print2 "1. Có"
ui_print2 "2. Không"

if [ "$(GP mglobal)" ];then
ttiet=$(GP mglobal)
ui_print
ui_print2 "Chọn: $ttiet"
ui_print
else
ui_print
ui_print2 "1"
Vk 2
ttiet=$input
fi


if [ "$(GP TKpin2)" ];then
ui_print "- Mod ứng dụng Tiết kiệm pin ?"
ui_print
ui_print2 "1. Có"
ui_print2 "2. Không"

tietkiem=$(GP TKpin)
ui_print
ui_print2 "Chọn: $tietkiem"
ui_print
#else
ui_print
ui_print2 "1"
Vk 2
tietkiem=$input
fi

## Unzip system
ui_print "  $unzip"
ui_print
unzip -qo "$ZIPFILE" "system/*" -d $MODPATH
Setp ro.product.vip "$(getprop ro.product.device)_global"

## code
Xu_install jre static
Xu_install smali 2.3.4
Xu_install baksmali 2.3.4
Xu_install zipalign static
Xu_install zip static
Xu_install toybox static

sed(){ toybox sed "$@"; }
grep(){ toybox grep "$@"; }
cut(){ toybox cut "$@"; }
find(){ toybox find "$@"; }
mkdir -p $APK/tmp /data/tools/apk
evol "WyAiJFRlc⁰QxMjMiID⁵³IHRydWUgXSB⁴fCBhYm³ydAo="
# Copy file apk
[ "$Teme" == 1 ] && CPapk com.android.thememanager
[ "$apkcai" == 1 ] && CPapk com.miui.packageinstaller
[ "$baomat" == 1 ] && CPapk com.miui.securitycenter

if [ "$ttiet" == 1 ];then
for vakkksk in $(echo "$(GP lit)" | tr ',' '\n'); do
CPapk $vakkksk
done
fi

ui_print2 "Giải nén apk"
ui_print
# giải nén file
Giainen
ui_print2 "Chỉnh sửa apk"
ui_print

# Mod apk
evol "CgppZiBbICIkdHRpZXQiID⁵³IDEgXTt⁵aGVuCmZvciBqdXNqZG⁷uZCBpbiAkKEdQIGxpdCk¹IGRvCmlmIFsgIiRqdXNqZG⁷uZCIgPT⁵gImNvbS⁷taXVpLndlYXRoZXIyIiBdO⁰RoZW⁹KQXV⁵b⁶³uZSAiTG⁸pdWkvb⁰MvQnVpbGQ¹LT⁷JU⁸³JTlRFUk⁷BVElPTkFMX⁵JVSUxEOloiICIweDEiICQoVGlta⁶llbSB⁰ZWF⁵aGVyYXBpLm⁸hcmtldC⁷⁹aWFvbWkuY⁶³tICRBUEsvJGp⁸c⁶pkbm⁷kL⁶NsYXNzZXMqKQplbHNlCkF⁸dG³vbmUgIkxtaXVpL⁶³zL⁵J⁸aWxkOy⁵+SVNfSU⁷URVJOQVRJT⁵⁷BTF³CVUlMRDpaIiAiMHgxIiAiJEFQSy⁴kanVzamRubmQvY⁶xhc⁰NlcyoiClRoYXl⁵aGUgInJvLm⁸pdWkucmVnaW³uIiAicm⁴ua⁶h⁸LnZ⁸YyIgIiRBUEsvJGp⁸c⁶pkbm⁷kL⁶NsYXNzZXMqIgpUaGF⁷dGhlICJyby⁷wcm³kdWN⁵Lm⁸vZF³kZXZpY⁶UiICJyby⁷wcm³kdWN⁵LnZpcCIgIiRBUEsvJGp⁸c⁶pkbm⁷kL⁶NsYXNzZXMqIgpmaQpkb⁶⁷lCmZpCgppZiBbICIkYXBrY⁶FpIiA³PSAxIF⁵¹dGhlbgpWQj⁵iaWdldCBwMCwgcDAsIExhbmRyb⁶lkL⁶NvbnRlbnQvcG⁵vQXBwbGljYXRpb⁶⁷JbmZvOy⁵+dWlkOkkiCmRqdWRoYnJoPSIkKFRpbWtpZW⁵gIiRWQiIgJEFQSy³jb⁶⁵ubWl⁸aS⁷wYWNrYWdlaW⁷zdGFsbGVyL⁶NsYXNzZXMqKSIKZm³yIHZhZGdmIGluICRkanVkaGJyaDsgZG⁴KaHNiZGhkPSIkKGdyZXAgLUI⁷IC⁸uICIkVkIiICIkdmFkZ⁶YiIHwgZ⁰JlcCAtbTEgJ⁶NvbnN⁵LzQgLi⁹sIDB⁹MScgfCBjdXQgLWQgJy⁵nIC⁸mMSkiCmhzYmRnZ⁶hoaGQ³IiQoZ⁰JlcCAtQTE⁸ICIkVkIiICIkdmFkZ⁶YiIHwgZ⁰JlcCAtbTEgJ⁰JldHVybicpIgpoc⁶JkPSIkKGdyZXAgLUI⁷ICIkVkIiICIkdmFkZ⁶YiIHwgZ⁰JlcCAtbTEgJ⁶NvbnN⁵LzQgLi⁹sIDB⁹MScpIgpzZWQgLWkgIiRoc⁶JkaGQiY⁸wgIiRoc⁶JkIFxuICRoc⁶JkZ⁶doaGhkIiAiJHZhZGdmIgp⁸aV³wcmludDIgIk⁸PRDogJFJBTkRPTSIKZWNobyAiJHZhZGdmIiA+PiAiJEFQSy³jb⁶⁵ubWl⁸aS⁷wYWNrYWdlaW⁷zdGFsbGVyL⁶NsYXNzIgpkb⁶⁷lCmZpCgppZiBbICIkVGVtZSIgPT⁵gMSBdO⁰RoZW⁹KVnNtYWxpICIubWV⁵aG³kIHB⁸YmxpYyBpc⁸ZpZGVvQWQoKVoiIFwKIi⁷lbmQgbWV⁵aG³kIiBcCicubWV⁵aG³kIHB⁸YmxpYyBpc⁸ZpZGVvQWQoKVoKICAgIC⁷yZWdpc⁰RlcnMgMgogICAgY⁶³uc⁰QvNCB⁶MCwgMHgwCiAgICByZXR⁸cm⁹gdjAKLmVuZCBtZXRob⁶QnIFwKIiRBUEsvY⁶³tLmFuZHJvaWQudGhlbWVtYW⁷hZ⁶VyL⁶NsYXNzZXMqIgoKVnNtYWxpICIubWV⁵aG³kIHByaXZhdGUgc⁰RhdGljIGlzQWRWYWxpZCIgXAoiLmVuZCBtZXRob⁶QiIFwKJy⁷tZXRob⁶QgcHJpdmF⁵ZSBzdGF⁵aWMgaXNBZFZhbGlkKExjb⁶⁵vYW⁷kcm³pZC³⁵aGVtZW⁸hbmFnZXIvYmFzZW⁸vZHVsZS³hZC³tb⁶RlbC³BZEluZm⁴¹KVoKICAgIC⁷yZWdpc⁰RlcnMgMgogICAgY⁶³uc⁰QvNCBwMCwgMHgwCiAgICByZXR⁸cm⁹gcDAKLmVuZCBtZXRob⁶QnIFwKIiRBUEsvY⁶³tLmFuZHJvaWQudGhlbWVtYW⁷hZ⁶VyL⁶NsYXNzZXMqIgoKVGhheXRoZSAiaWdldC⁸ib⁶³sZWFuIHYxLCB⁶MCwgTGNvbS³hbmRyb⁶lkL⁰RoZW⁸lbWFuYWdlci³kZXRhaWwvdGhlbWUvbW³kZWwvT⁶⁷saW⁷lUmVzb⁰VyY⁶VEZXRhaWw¹LT⁷ib⁰VnaHQ²WiIgImlnZXQtYm³vbGVhbiB⁶MSwgdjAsIExjb⁶⁵vYW⁷kcm³pZC³⁵aGVtZW⁸hbmFnZXIvZGV⁵YWlsL⁰RoZW⁸lL⁶⁸vZGVsL⁵³ubGluZVJlc⁶³⁸cmNlRGV⁵YWlsOy⁵+Ym³⁸Z⁶h⁵OlogXG⁹gY⁶³uc⁰QvNCB⁶MCwgMHgxIFxuIHJldHVybiB⁶MCIgIiRBUEsvY⁶³tLmFuZHJvaWQudGhlbWVtYW⁷hZ⁶VyL⁶NsYXNzZXMqIgoKVGhheXRoZSAiRFJNX⁵VSUk³SX⁸VOS⁵⁷PV⁵⁹iICJEUk⁸fU⁸VDQ⁵VTUyIgIiRBUEsvY⁶³tLmFuZHJvaWQudGhlbWVtYW⁷hZ⁶VyL⁶NsYXNzZXMqIgpmaQo="

ui_print
ui_print2 "Đóng gói apk"
ui_print
# Đóng gói apk
Donggoi

for Bala in product vendor system_ext; do
[ -e $MODPATH/$Bala ] && cp -rf $MODPATH/$Bala $MODPATH/system
[ -e $MODPATH/$Bala ] && rm -fr $MODPATH/$Bala
done

ui_print "  $(End_time)"
ui_print
## end of code
}

## Grant permission
set_permissions(){ 
set_perm_recursive $MODPATH 0 0 0755 0644 2>/dev/null
set_perm_recursive $MODPATH/system/bin 0 2000 0755 0755 2>/dev/null
}


OVERLAY_IMAGE_EXTRA=0     # number of kb need to be added to overlay.img
OVERLAY_IMAGE_SHRINK=true # shrink overlay.img or not?
INCLUDE_MAGIC_MOUNT=false # enable legacy Magisk mount or not when Magisk_OverlayFS is disabled

if [ -f "/data/adb/modules/magisk_overlayfs/util_functions.sh" ] && \
    /data/adb/modules/magisk_overlayfs/overlayfs_system --test; then
  ui_print "- Add support for overlayfs"
  . /data/adb/modules/magisk_overlayfs/util_functions.sh
  support_overlayfs
  rm -rf "$MODPATH"/system
fi
