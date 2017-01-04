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
        QiCodeApi.init(this, "key_****", "secret_***");//test
    }
}
