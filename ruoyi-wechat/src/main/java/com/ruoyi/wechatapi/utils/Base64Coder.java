package com.ruoyi.wechatapi.utils;

import java.io.UnsupportedEncodingException;
import java.util.Base64;

public class Base64Coder {

    /**
     *
     * @param object 传入需要解码的值
     * @return 解码后的值
     */
    public String Base64Decoder(Object object){
        String decoderText = null;
        if (object!=""&& object!=null) {
            try {
                final Base64.Decoder decoder = Base64.getDecoder();
                String text = (String) object;
                //解码
                 decoderText=new String(decoder.decode(text), "UTF-8");
            }catch (UnsupportedEncodingException e){
                e.printStackTrace();
            }finally {
                return decoderText;
            }
        }
        return decoderText;
    }

    /**
     *
     * @param object 传入需要编码的值
     * @return 编码后的值
     */
    public String Base64Encoder(Object object){
        String encodedText=null;
        if(object!=""&& object!=null){
            try {
                final Base64.Encoder encoder = Base64.getEncoder();
                String text = (String)object;
                byte[] textByte = text.getBytes("UTF-8");
                //编码
                encodedText = encoder.encodeToString(textByte);
            }catch (UnsupportedEncodingException e){
                e.printStackTrace();
            }finally {
                return encodedText;
            }
        }
        return encodedText;
    }
}
