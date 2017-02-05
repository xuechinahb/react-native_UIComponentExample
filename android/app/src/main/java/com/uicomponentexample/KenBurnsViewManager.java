package com.uicomponentexample;

import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.View;

import com.facebook.react.uimanager.SimpleViewManager;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.annotations.ReactProp;
import com.flaviofaria.kenburnsview.KenBurnsView;

import java.io.IOException;
import java.io.InputStream;

/**
 * Created by evan on 05/02/2017.
 */

public class KenBurnsViewManager extends SimpleViewManager<KenBurnsView> {

    private ThemedReactContext context;
    @Override
    public String getName() {
        return "KenBurnsView";
    }

    @Override
    protected KenBurnsView createViewInstance(ThemedReactContext reactContext) {
        context = reactContext;
        KenBurnsView kenBurnsView = new KenBurnsView(context);
//        InputStream inputStream = null;
//        try {
//            inputStream = context.getAssets().open("img_source_a.jpeg");
//            Drawable drawable = Drawable.createFromStream(inputStream, null);
//            kenBurnsView.setImageDrawable(drawable);
//        }catch (IOException e){
//            e.printStackTrace();
//        }finally {
//            if (null != inputStream){
//                try {
//                    inputStream.close();
//                } catch (IOException e) {
//                    e.printStackTrace();
//                }
//            }
//        }
        return kenBurnsView;
    }

    @ReactProp(name = "source")
    public void setSource(KenBurnsView view, String source){
        Log.d("KenBurnsViewManager", "setSource: " + source);
        InputStream inputStream = null;
        try {
            inputStream = context.getAssets().open(source);
            Drawable drawable = Drawable.createFromStream(inputStream, null);
            view.setImageDrawable(drawable);
        } catch (IOException e) {
            e.printStackTrace();
        }finally {
            if (null != inputStream){
                try {
                    inputStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
