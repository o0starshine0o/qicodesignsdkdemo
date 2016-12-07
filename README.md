![ArtSignProDemo:The demo for ArtSignProSdk](https://github.com/o0starshine0o/iOS-ArtSignProDemo/raw/master/doc/icon.png)

此文档说明如何将艺术签名的专家付费签名功能接入您的app.

----------

## 接入准备
1.和开发者(tohys@qq.com)联系,拿到测试版和发布版的商户key和secret,并将app包名注册到商务后台。
2.开发环境:Android Studio + Gradle
3.组件包qicode-sign.aar,位置demo工程的libs目录下

### 接入流程
1.buid.gradle配置
aar依赖:
```gradle
android {
    ...
    repositories {
        flatDir {
            dirs 'libs'
        }
    }
    ...
}
```
aar包及第三方依赖库配置:
```gradle
android {
    ...
    compile(name:'qicode-sign', ext:'aar')
    // 进度条
    compile 'com.lsjwzh:materialloadingprogressbar:0.5.6-RELEASE'
    // Gson
    compile 'com.google.code.gson:gson:2.4'
    // xUtils 用于网络请求
    compile 'com.jiechic.library:xUtils:2.6.14'
    // 侧滑返回
    compile 'com.loopeer.android.thirdparty:swipe-back-layout:1.0'
    // material设计
    compile 'com.github.rey5137:material:1.1.1'
    // facebook的图片加载
    compile 'com.facebook.fresco:fresco:0.5.1'
    // ping++
    compile 'com.pingxx:pingpp-core:2.1.6'
    compile 'com.pingxx:pingpp-alipay:2.1.6'
    compile 'com.pingxx:pingpp-wxpay:2.1.5'
    // RecyclerView
    compile 'com.android.support:recyclerview-v7:25.0.0'
    // 签字板
    compile 'com.github.gcacace:signature-pad:1.0.1'
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
1>调起Activity
```Android
 findViewById(R.id.tv).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                QiCodeApi.invokeSignPage(MainActivity.this);
            }
        });
```
2>嵌入Fragement:
```Android
 findViewById(R.id.tv).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                QiCodeApi.invokeSignPage(MainActivity.this);
            }
        });
```
----------
###联系我们
[官方网站:http://www.artsignpro.com/](http://www.artsignpro.com/)

[艺术签名专业版:http://zhushou.360.cn/detail/index/soft_id/2650346?recrefer=SE_D_艺术签名专业版](http://zhushou.360.cn/detail/index/soft_id/2650346?recrefer=SE_D_艺术签名专业版)

