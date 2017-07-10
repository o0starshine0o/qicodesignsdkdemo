![ArtSignProDemo:The demo for ArtSignProSdk](https://github.com/o0starshine0o/iOS-ArtSignProDemo/raw/master/doc/icon.png)

此文档说明如何将艺术签名的专家付费签名功能接入您的app.

----------


##demo效果

![ArtSignProDemo:The demo for ArtSignProSdk](https://raw.githubusercontent.com/o0starshine0o/qicodesignsdkdemo/master/device-2016-12-07-120313.png)
## 接入准备
1.和开发者(tohys@qq.com)联系,拿到测试版和发布版的商户key和secret,并将app包名注册到商务后台。
2.开发环境:Android Studio + Gradle

### 接入流程
1.build.gradle配置
```gradle
dependencies {
    ...
    compile 'com.qicode.sdk:qicode-sign:1.0.2'
    ...
}
```
2.集成代码
  
1>Application中调用初始化代码:
```android
//测试版、发布版的商户key和秘钥不同，注意打正式包的时候换成发布版的商户key和秘钥
QiCodeApi.init(this, "key_xxxxxxxxxxx", "secret_xxxxxxxxxxxxxx");
```
***注意:app的debug版本自动开启sdk的测试模式，测试模式中的支付功能也会调用支付的测试组件,不会真正产生交易;app的签名包自动开启sdk的正式模式,会调起正式的支付功能组件;商户的key和秘钥有两套:测试版和正式版,前者用于debug包,后者用于正式的签名包,产品上线时，请务必换成正式的商户key和secret.测试环境和正式环境采用的后台数据库不一样，所以由测试切到正式环境,需要卸载app，重新登录！***

2>调起签名页面API:

1.调起Activity
```Android
 findViewById(R.id.tv).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                QiCodeApi.invokeSignPage(MainActivity.this);
            }
        });
```
2.嵌入Fragement:
```Android
 FragmentTransaction fragmentTransaction = getSupportFragmentManager().beginTransaction();
        fragmentTransaction.replace(R.id.ll_content, new ExpertSignListFragment());
        fragmentTransaction.commit();
```
----------
3.混淆配置:
```
 
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
```
###联系我们
[官方网站:http://www.artsignpro.com/](http://www.artsignpro.com/)

[艺术签名专业版:http://zhushou.360.cn/detail/index/soft_id/2650346?recrefer=SE_D_艺术签名专业版](http://zhushou.360.cn/detail/index/soft_id/2650346?recrefer=SE_D_艺术签名专业版)

