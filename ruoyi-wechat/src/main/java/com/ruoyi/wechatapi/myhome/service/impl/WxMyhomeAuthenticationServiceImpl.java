package com.ruoyi.wechatapi.myhome.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.wechatapi.myhome.mapper.WxMyhomeAuthenticationMapper;
import com.ruoyi.wechatapi.myhome.domain.WxMyhomeAuthentication;
import com.ruoyi.wechatapi.myhome.service.IWxMyhomeAuthenticationService;
import com.ruoyi.common.core.text.Convert;

/**
 * 用户身份认证Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-09-07
 */
@Service
public class WxMyhomeAuthenticationServiceImpl implements IWxMyhomeAuthenticationService 
{
    @Autowired
    private WxMyhomeAuthenticationMapper wxMyhomeAuthenticationMapper;

    /**
     * 查询用户身份认证
     * 
     * @param authenticationId 用户身份认证ID
     * @return 用户身份认证
     */
    @Override
    public WxMyhomeAuthentication selectWxMyhomeAuthenticationById(Long authenticationId)
    {
        return wxMyhomeAuthenticationMapper.selectWxMyhomeAuthenticationById(authenticationId);
    }

    /**
     * 查询用户身份认证列表
     * 
     * @param wxMyhomeAuthentication 用户身份认证
     * @return 用户身份认证
     */
    @Override
    public List<WxMyhomeAuthentication> selectWxMyhomeAuthenticationList(WxMyhomeAuthentication wxMyhomeAuthentication)
    {
        return wxMyhomeAuthenticationMapper.selectWxMyhomeAuthenticationList(wxMyhomeAuthentication);
    }

    /**
     * 新增用户身份认证
     * 
     * @param wxMyhomeAuthentication 用户身份认证
     * @return 结果
     */
    @Override
    public int insertWxMyhomeAuthentication(WxMyhomeAuthentication wxMyhomeAuthentication)
    {
        return wxMyhomeAuthenticationMapper.insertWxMyhomeAuthentication(wxMyhomeAuthentication);
    }

    /**
     * 修改用户身份认证
     * 
     * @param wxMyhomeAuthentication 用户身份认证
     * @return 结果
     */
    @Override
    public int updateWxMyhomeAuthentication(WxMyhomeAuthentication wxMyhomeAuthentication)
    {
        return wxMyhomeAuthenticationMapper.updateWxMyhomeAuthentication(wxMyhomeAuthentication);
    }

    /**
     * 删除用户身份认证对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteWxMyhomeAuthenticationByIds(String ids)
    {
        return wxMyhomeAuthenticationMapper.deleteWxMyhomeAuthenticationByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除用户身份认证信息
     * 
     * @param authenticationId 用户身份认证ID
     * @return 结果
     */
    @Override
    public int deleteWxMyhomeAuthenticationById(Long authenticationId)
    {
        return wxMyhomeAuthenticationMapper.deleteWxMyhomeAuthenticationById(authenticationId);
    }
}
