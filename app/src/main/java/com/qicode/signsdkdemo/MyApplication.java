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
        QiCodeApi.init(this, "key_xxxxxxxxxxx", "secret_xxxxxxxxxxxxxx");//test
//        QiCodeApi.init(this, "key_xxxxxxxxxxxxxxx", "secret_xxxxxxxxxxxxxx");
    }
}
