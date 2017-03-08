#-------------------------------------------定制化区域----------------------------------------------
#---------------------------------1.实体类---------------------------------
-keep class com.jhd.app.module.basic.location.bean**{*;}
-keep class com.jhd.app.module.basic.bean.**{*;}
-keep class com.jhd.app.module.message.bean.**{*;}
-keep class com.jhd.app.module.fund.bean.**{*;}
-keep class com.jhd.app.module.home.bean.**{*;}
-keep class com.jhd.app.module.login.bean.**{*;}
-keep class com.jhd.app.module.person.bean.**{*;}
-keep class com.jhd.app.module.setting.bean.**{*;}
-keep class com.jhd.app.core.http.**{*;}
-keep class com.martin.httputil.pojo.**{*;}
-keep class com.jhd.app.core.db.**{*;}
#-------------------------------------------------------------------------

#---------------------------------2.第三方包-------------------------------
#支付宝
-dontwarn com.alipay.**
-keep class com.alipay.android.app.IAlixPay{*;}
-keep class com.alipay.android.app.IAlixPay$Stub{*;}
-keep class com.alipay.android.app.IRemoteServiceCallback{*;}
-keep class com.alipay.android.app.IRemoteServiceCallback$Stub{*;}
-keep class com.alipay.sdk.app.PayTask{ public *;}
-keep class com.alipay.sdk.app.AuthTask{ public *;}
#OSS
-dontwarn com.alibaba.sdk.android.**
#EMChat
-dontwarn  com.hyphenate.**
#如果使用EaseUI库，需要这么写
-keep class com.jhd.app.module.message.utils.EaseSmileUtils {*;}
-keep class com.hyphenate.** {*;}
#okhttp
-dontwarn okhttp3.**
-keep class okhttp3.**{*;}
-dontwarn okio.**
-keep class okio.**{*;}
#umeng-social
-dontwarn android.webkit.WebView
-dontwarn com.umeng.**
-keep public class javax.**
-keep public class android.webkit.**
-keep public interface com.tencent.**
-keep public interface com.umeng.socialize.**
-keep public interface com.umeng.socialize.sensor.**
-keep public interface com.umeng.scrshot.**
-keep public class com.umeng.** {*;}

-keep class com.umeng.scrshot.**
-keep public class com.tencent.** {*;}
-keep class com.umeng.socialize.sensor.**
-keep class com.umeng.socialize.handler.**
-keep class com.umeng.socialize.handler.*
-keep class     UMMoreHandler{*;}
-keep class com.tencent.mm.sdk.modelmsg.WXMediaMessage {*;}
-keep class com.tencent.mm.sdk.modelmsg.** implements com.tencent.mm.sdk.modelmsg.WXMediaMessage$IMediaObject {*;}
-keep class com.tencent.** {*;}
-dontwarn com.tencent.**
-keep class com.tencent.open.TDialog$*
-keep class com.tencent.open.TDialog$* {*;}
-keep class com.tencent.open.PKDialog
-keep class com.tencent.open.PKDialog {*;}
-keep class com.tencent.open.PKDialog$*
-keep class com.tencent.open.PKDialog$* {*;}
-keep class com.sina.** {*;}
-dontwarn com.sina.**

#jpush
-dontwarn cn.jpush.**
-keep class cn.jpush.** { *; }

#miPush
-dontwarn com.xiaomi.**
-keep class com.jhd.app.core.push.PushAgentReceiver {*;}
-keep class com.xiaomi.push.service.XMPushService {*;}
-keep class org.apache.thrift.**{*;}
-keep class com.google.protobuf.micro.**{*;}
-keep class com.xiaomi.**{*;}
#huaweiPush
-dontwarn com.huawei.**
-dontwarn com.baidu.mapapi.**
-dontwarn com.hianalytics.android.**
-keep class com.huawei.**{*;}
-keep class com.baidu.mapapi.**{*;}
-keep class com.hianalytics.android.**{*;}


#meizuPush

#EventBus
-keepclassmembers class ** {
@org.greenrobot.eventbus.Subscribe <methods>;
}
-keep enum org.greenrobot.eventbus.ThreadMode { *; }

#Glide
-keep public class * implements com.bumptech.glide.module.GlideModule
-keep class com.bumptech.glide.integration.okhttp3.OkHttpGlideModule
-keep class com.jhd.app.core.http.glide.OSSGlideModule
-keep public enum com.bumptech.glide.load.resource.bitmap.ImageHeaderParser$** {
**[] $VALUES;
public *;
}
#ButterKinife
-keep class butterknife.** { *; }
-dontwarn butterknife.internal.**
-keep class **$$ViewBinder { *; }

-keepclasseswithmembernames class * {
@butterknife.* <fields>;
}

-keepclasseswithmembernames class * {
@butterknife.* <methods>;
}

#roundImageView
-dontwarn com.makeramen.roundedimageview.**

#高德地图
-dontwarn com.amap.api.**
-dontwarn com.autonaiv.aps.amapapi.model.**
-keep class com.amap.api.**{*;}
-keep class com.autonaiv.aps.amapapi.model.**{*;}
#GSON
-dontwarn com.google.**
-keep class com.google.gson.** {*;}
-dontwarn com.google.**
-keep class com.google.protobuf.** {*;}
#Permission
-keep class  com.jhd.app.core.manager.permission.EasyPermissions {*;}

### greenDAO 3
-keepclassmembers class * extends org.greenrobot.greendao.AbstractDao {
public static java.lang.String TABLENAME;
}
-keep class **$Properties

# If you do not use SQLCipher:
-dontwarn org.greenrobot.greendao.database.**
# If you do not use RxJava:
-dontwarn rx.**
-dontwarn net.sqlcipher.database.**

#-------------------------------------------------------------------------

#---------------------------------3.与js互相调用的类------------------------



#-------------------------------------------------------------------------

#---------------------------------4.反射相关的类和方法-----------------------

-keep class com.jhd.mq.tools.status.**{*;}

-keepnames class * implements android.os.Parcelable {
public static final ** CREATOR;
}

-keepclassmembers class * {
public <init> (org.json.JSONObject);
}
-keepclassmembers enum * {
public static **[] values();
public static ** valueOf(java.lang.String);
}

#----------------------------------------------------------------------------
#---------------------------------------------------------------------------------------------------

#-------------------------------------------基本不用动区域--------------------------------------------
#---------------------------------基本指令区----------------------------------
-optimizationpasses 5
-dontskipnonpubliclibraryclassmembers
-printmapping proguardMapping.txt
-optimizations !code/simplification/cast,!field/*,!class/merging/*
-keepattributes *Annotation*,InnerClasses
-keepattributes Signature
-keepattributes SourceFile,LineNumberTable
#----------------------------------------------------------------------------

#---------------------------------默认保留区---------------------------------
-keep public class * extends android.app.Activity
-keep public class * extends android.app.Application
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider
-keep public class * extends android.app.backup.BackupAgentHelper
-keep public class * extends android.preference.Preference
-keep public class * extends android.view.View
-keep public class com.android.vending.licensing.ILicensingService
-keep class android.support.** {*;}

-keep public class * extends android.view.View{
*** get*();
void set*(***);
public <init>(android.content.Context);
public <init>(android.content.Context, android.util.AttributeSet);
public <init>(android.content.Context, android.util.AttributeSet, int);
}
-keepclasseswithmembers class * {
public <init>(android.content.Context, android.util.AttributeSet);
public <init>(android.content.Context, android.util.AttributeSet, int);
}
-keep public class * implements java.io.Serializable {
public *;
}
-keepclassmembers class * implements java.io.Serializable {
static final long serialVersionUID;
private static final java.io.ObjectStreamField[] serialPersistentFields;
private void writeObject(java.io.ObjectOutputStream);
private void readObject(java.io.ObjectInputStream);
java.lang.Object writeReplace();
java.lang.Object readResolve();
}
-keep class **.R$* {
*;
}
-keepclassmembers class * {
void *(**On*Event);
}
#----------------------------------------------------------------------------

#---------------------------------webview------------------------------------
-keepclassmembers class fqcn.of.javascript.interface.for.Webview {
public *;
}
-keepclassmembers class * extends android.webkit.WebViewClient {
public void *(android.webkit.WebView, java.lang.String, android.graphics.Bitmap);
public boolean *(android.webkit.WebView, java.lang.String);
}
-keepclassmembers class * extends android.webkit.WebViewClient {
public void *(android.webkit.WebView, jav.lang.String);
}
#----------------------------------------------------------------------------
#---------------------------------------------------------------------------------------------------

