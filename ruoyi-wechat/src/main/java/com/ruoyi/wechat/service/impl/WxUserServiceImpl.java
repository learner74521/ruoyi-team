package com.ruoyi.wechat.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.utils.Base64Coder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.wechat.mapper.WxUserMapper;
import com.ruoyi.wechat.domain.WxUser;
import com.ruoyi.wechat.service.IWxUserService;
import com.ruoyi.common.core.text.Convert;

/**
 * 微信用户Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-04-28
 */
@Service
public class WxUserServiceImpl implements IWxUserService 
{
    @Autowired
    private WxUserMapper wxUserMapper;

    /**
     * 查询微信用户
     * 
     * @param wxOpenid 微信用户ID
     * @return 微信用户
     */
    @Override
    public WxUser selectWxUserById(String wxOpenid)
    {
        WxUser wxUser=wxUserMapper.selectWxUserById(wxOpenid);
        if (wxUser.getWxName()!=""&&wxUser.getWxName()!=null){
            Base64Coder base64Coder=new Base64Coder();
            String decoderText= base64Coder.Base64Decoder(wxUser.getWxName());
            wxUser.setWxName(decoderText);
        }
        return wxUser;
    }

    /**
     * 查询微信用户列表
     * 
     * @param wxUser 微信用户
     * @return 微信用户
     */
    @Override
    public List<WxUser> selectWxUserList(WxUser wxUser)
    {
        List<WxUser> WxUserList=wxUserMapper.selectWxUserList(wxUser);
        for (WxUser item : WxUserList) {
            if (item.getWxName()!=""&&item.getWxName()!=null){
                Base64Coder base64Coder=new Base64Coder();
                String decoderText= base64Coder.Base64Decoder(item.getWxName());
                item.setWxName(decoderText);
            }
        }
        return WxUserList;
    }

    /**
     * 新增微信用户
     * 
     * @param wxUser 微信用户
     * @return 结果
     */
    @Override
    public int insertWxUser(WxUser wxUser)
    {
        if (wxUser.getWxName()!=""&&wxUser.getWxName()!=null){
            Base64Coder base64Coder=new Base64Coder();
            String encodedText= base64Coder.Base64Encoder(wxUser.getWxName());
            wxUser.setWxName(encodedText);
        }
        wxUser.setCreateTime(DateUtils.getNowDate());
        return wxUserMapper.insertWxUser(wxUser);
    }

    /**
     * 修改微信用户
     * 
     * @param wxUser 微信用户
     * @return 结果
     */
    @Override
    public int updateWxUser(WxUser wxUser)
    {
        if (wxUser.getWxName()!=""&&wxUser.getWxName()!=null){
            Base64Coder base64Coder=new Base64Coder();
            String encodedText= base64Coder.Base64Encoder(wxUser.getWxName());
            wxUser.setWxName(encodedText);
        }
        wxUser.setUpdateTime(DateUtils.getNowDate());
        return wxUserMapper.updateWxUser(wxUser);
    }

    /**
     * 删除微信用户对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteWxUserByIds(String ids)
    {
        return wxUserMapper.deleteWxUserByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除微信用户信息
     * 
     * @param wxOpenid 微信用户ID
     * @return 结果
     */
    @Override
    public int deleteWxUserById(String wxOpenid)
    {
        return wxUserMapper.deleteWxUserById(wxOpenid);
    }
}
