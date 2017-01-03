
# 保持哪些类不被混淆
-keep public class * extends android.app.Fragment
-keep public class * extends android.app.Activity
-keep public class * extends android.app.Application

-keep public class * extends android.content.BroadcastReceiver
# 如果有引用v4包可以添加下面这行
-keep public class * extends android.support.v4.app.Fragment
-dontwarn com.facebook.**
-keep class com.facebook.**  {* ;}
-keep enum com.facebook.**
-keep public interface com.facebook.**
-keep class javax.**  {* ;}

# apache
-keep class org.apache.** {*; }
# xutils
-keep class com.lidroid.xutils.**

#########TODO revert#######################################
#########TODO revert#######################################
-keep class android.webkit.**  {* ;}
# 和服务器对接的数据
-keep class com.chenming.domain.**  {* ; }
-keep class com.chenming.model.**  {* ; }
# 如果引用了v4或者v7包
-dontwarn android.support.**
############混淆保护自己项目的部分代码以及引用的第三方jar包library-end##################

-keep public class * extends android.view.View {
    public <init>(android.content.Context);
    public <init>(android.content.Context, android.util.AttributeSet);
    public <init>(android.content.Context, android.util.AttributeSet, int);
    public void set*(...);
}
# 保持 native 方法不被混淆
-keepclasseswithmembernames class * {
    native <methods>;
}
# 保持自定义控件类不被混淆
-keepclasseswithmembers class * {
    public <init>(android.content.Context, android.util.AttributeSet);
}
# 保持自定义控件类不被混淆
-keepclasseswithmembers class * {
    public <init>(android.content.Context, android.util.AttributeSet, int);
}
# 保持自定义控件类不被混淆
-keepclassmembers class * extends android.app.Activity {
   public void *(android.view.View);
}

# 保持 Parcelable 不被混淆
-keep class * implements android.os.Parcelable {
  public static final android.os.Parcelable$Creator *;
}
# 保持 Serializable 不被混淆
-keepnames class * implements java.io.Serializable
# 保持 Serializable 不被混淆并且enum 类也不被混淆
-keepclassmembers class * implements java.io.Serializable {
    static final long serialVersionUID;
    private static final java.io.ObjectStreamField[] serialPersistentFields;
    !static !transient <fields>;
    !private <fields>;
    !private <methods>;
    private void writeObject(java.io.ObjectOutputStream);
    private void readObject(java.io.ObjectInputStream);
    java.lang.Object writeReplace();
    java.lang.Object readResolve();
}
# 保持枚举 enum 类不被混淆 如果混淆报错，建议直接使用上面的 -keepclassmembers class * implements java.io.Serializable即可
-keepclassmembers enum * {
  public static **[] values();
  public static ** valueOf(java.lang.String);
}
-keepclassmembers class * {
    public void *ButtonClicked(android.view.View);
}
# 不混淆资源类
-keepclassmembers class **.R$* {
    public static <fields>;
}
# 避免混淆泛型 如果混淆报错建议关掉
-keep class com.newrelic.** { *; }
-dontwarn com.newrelic.**
-keepattributes Exceptions, Signature, InnerClasses
#移除log 测试了下没有用还是建议自己定义一个开关控制是否输出日志
#-assumenosideeffects class android.util.Log {
#    public static boolean isLoggable(java.lang.String, int);
#    public static int v(...);
#    public static int i(...);
#    public static int w(...);
#    public static int d(...);
#    public static int e(...);
#}
# do not warning
-dontwarn com.alipay.**
-dontwarn com.taobao.**
-dontwarn com.pingplusplus.**
-dontwarn com.baidu.**
-dontwarn com.unionpay.**
-dontwarn com.rey.**
-dontwarn com.squareup.**
-dontwarn com.tencent.**
-dontwarn android.support.**
-dontwarn android.webkit.**
-dontwarn com.google.**
-dontwarn com.lidroid.xutils.**
-dontwarn com.umeng.**
-dontwarn org.apache.**

#保留跟 javascript相关的属性
-keepattributes JavascriptInterface

#保留JavascriptInterface中的方法
-keepclassmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}
#-keep class com.chenming.model.JavaScriptInterceptor{* ;}

# 和服务器对接的数据
-keep class com.qicode.mylibrary.model.** {* ;}

-keep public class * extends Android.os.IInterface

-keep class com.qicode.mylibrary.activity.wxapi.WXEntryActivity{* ;}

-dontwarn  com.ta.utdid2.**
-keep class com.ta.utdid2.** {*;}

-dontwarn  com.ut.device.**
-keep class com.ut.device.** {*;}

-dontwarn  com.tencent.**
-keep class com.tencent.** {*;}

-dontwarn  com.unionpay.**
-keep class com.unionpay.** {*;}

-dontwarn com.pingplusplus.**
-keep class com.pingplusplus.** {*;}

-dontwarn com.baidu.**
-keep class com.baidu.** {*;}