
#注册android类
-keep public class * extends android.app.Fragment
-keep public class * extends android.app.Activity
-keep public class * extends android.app.Application
-keep public class * extends android.content.BroadcastReceiver
# 如果有引用v4包可以添加下面这行
-keep public class * extends android.support.v4.app.Fragment
#fresco
-dontwarn com.facebook.**
-keep class com.facebook.**  {* ;}
-keep enum com.facebook.**
-keep public interface com.facebook.**
-keep class javax.**  {* ;}

# apache
-keep class org.apache.** {*; }
-dontwarn org.apache.**
# xutils
-keep class com.lidroid.xutils.**

-dontwarn com.alipay.**
-dontwarn com.rey.**

# 和服务器对接的数据
-keep class com.chenming.domain.**  {* ; }
-keep class com.chenming.model.**  {* ; }
-dontwarn android.support.**
############混淆保护自己项目的部分代码##################
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

# 不混淆资源类
-keepclassmembers class **.R$* {
    public static <fields>;
}

# 和服务器对接的数据
-keep class com.qicode.mylibrary.model.** {* ;}
#ping++ start
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

#ping++ end