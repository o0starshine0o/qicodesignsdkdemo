package com.qicode.signsdkdemo;

import android.app.Application;

import com.qicode.mylibrary.QiCodeApi;

/**
 * Created by chenming on 16/11/28.
 */

public class MyApplication extends Application {
    @Override
    public void onCreate() {
        super.onCreate();
        //测试版、发布版的商户key和秘钥不同，注意打正式包的时候换成发布版的商户key和秘钥
        QiCodeApi.init(this, "key_c219bbde461c49c52f847e19149d784d", "secret_a6a05183fc1e92f0a5fdb13f0a14cef5");//test
    }
}
