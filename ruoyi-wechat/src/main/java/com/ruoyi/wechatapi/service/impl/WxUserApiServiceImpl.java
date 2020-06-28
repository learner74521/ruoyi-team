package com.ruoyi.wechatapi.service.impl;

import java.io.UnsupportedEncodingException;
import java.util.Base64;
import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.wechatapi.utils.Base64Coder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.wechatapi.mapper.WxUserApiMapper;
import com.ruoyi.wechatapi.domain.WxUserApi;
import com.ruoyi.wechatapi.service.IWxUserApiService;
import com.ruoyi.common.core.text.Convert;

/**
 * 微信用户Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-05-07
 */
@Service
public class WxUserApiServiceImpl implements IWxUserApiService 
{
    @Autowired
    private WxUserApiMapper wxUserApiMapper;

    /**
     * 查询微信用户
     * 
     * @param wxOpenid 微信用户ID
     * @return 微信用户
     */
    @Override
    public WxUserApi selectWxUserApiById(String wxOpenid)
    {
        WxUserApi wxUserApi=wxUserApiMapper.selectWxUserApiById(wxOpenid);
        if (wxUserApi.getWxName()!=""&&wxUserApi.getWxName()!=null){
            Base64Coder base64Coder=new Base64Coder();
            String decoderText= base64Coder.Base64Decoder(wxUserApi.getWxName());
            wxUserApi.setWxName(decoderText);
        }
        return wxUserApi;
    }

    /**
     * 查询微信用户列表
     * 
     * @param wxUserApi 微信用户
     * @return 微信用户
     */
    @Override
    public List<WxUserApi> selectWxUserApiList(WxUserApi wxUserApi)
    {
        List<WxUserApi> wxUserApiList=wxUserApiMapper.selectWxUserApiList(wxUserApi);
        for (WxUserApi item:wxUserApiList) {
            if (item.getWxName()!=""&&item.getWxName()!=null){
                Base64Coder base64Coder=new Base64Coder();
                String decoderText= base64Coder.Base64Decoder(item.getWxName());
                item.setWxName(decoderText);
            }
        }
        return wxUserApiList;
    }

    /**
     * 新增微信用户
     * 
     * @param wxUserApi 微信用户
     * @return 结果
     */
    @Override
    public int insertWxUserApi(WxUserApi wxUserApi)
    {
        if (wxUserApi.getWxName()!=""&&wxUserApi.getWxName()!=null){
            Base64Coder base64Coder=new Base64Coder();
            String encodedText= base64Coder.Base64Encoder(wxUserApi.getWxName());
            wxUserApi.setWxName(encodedText);
        }
        wxUserApi.setCreateTime(DateUtils.getNowDate());
        return wxUserApiMapper.insertWxUserApi(wxUserApi);
    }

    /**
     * 修改微信用户
     * 
     * @param wxUserApi 微信用户
     * @return 结果
     */
    @Override
    public int updateWxUserApi(WxUserApi wxUserApi)
    {
        if (wxUserApi.getWxName()!=""&&wxUserApi.getWxName()!=null){
            Base64Coder base64Coder=new Base64Coder();
            String encodedText= base64Coder.Base64Encoder(wxUserApi.getWxName());
            wxUserApi.setWxName(encodedText);
        }
        wxUserApi.setUpdateTime(DateUtils.getNowDate());
        return wxUserApiMapper.updateWxUserApi(wxUserApi);
    }

    /**
     * 删除微信用户对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteWxUserApiByIds(String ids)
    {
        return wxUserApiMapper.deleteWxUserApiByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除微信用户信息
     * 
     * @param wxOpenid 微信用户ID
     * @return 结果
     */
    @Override
    public int deleteWxUserApiById(String wxOpenid)
    {
        return wxUserApiMapper.deleteWxUserApiById(wxOpenid);
    }
}
