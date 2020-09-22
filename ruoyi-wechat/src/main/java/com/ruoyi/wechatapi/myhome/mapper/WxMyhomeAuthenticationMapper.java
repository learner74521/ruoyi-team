package com.ruoyi.wechatapi.myhome.mapper;

import java.util.List;
import com.ruoyi.wechatapi.myhome.domain.WxMyhomeAuthentication;

/**
 * 用户身份认证Mapper接口
 * 
 * @author ruoyi
 * @date 2020-09-07
 */
public interface WxMyhomeAuthenticationMapper 
{
    /**
     * 查询用户身份认证
     * 
     * @param authenticationId 用户身份认证ID
     * @return 用户身份认证
     */
    public WxMyhomeAuthentication selectWxMyhomeAuthenticationById(Long authenticationId);

    /**
     * 查询用户身份认证列表
     * 
     * @param wxMyhomeAuthentication 用户身份认证
     * @return 用户身份认证集合
     */
    public List<WxMyhomeAuthentication> selectWxMyhomeAuthenticationList(WxMyhomeAuthentication wxMyhomeAuthentication);

    /**
     * 新增用户身份认证
     * 
     * @param wxMyhomeAuthentication 用户身份认证
     * @return 结果
     */
    public int insertWxMyhomeAuthentication(WxMyhomeAuthentication wxMyhomeAuthentication);

    /**
     * 修改用户身份认证
     * 
     * @param wxMyhomeAuthentication 用户身份认证
     * @return 结果
     */
    public int updateWxMyhomeAuthentication(WxMyhomeAuthentication wxMyhomeAuthentication);

    /**
     * 删除用户身份认证
     * 
     * @param authenticationId 用户身份认证ID
     * @return 结果
     */
    public int deleteWxMyhomeAuthenticationById(Long authenticationId);

    /**
     * 批量删除用户身份认证
     * 
     * @param authenticationIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteWxMyhomeAuthenticationByIds(String[] authenticationIds);
}
