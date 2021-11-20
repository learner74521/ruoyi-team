package com.ruoyi.wechatapi.wxchat.service;

import java.util.List;
import com.ruoyi.wechatapi.wxchat.domain.WxUserApi;

/**
 * 微信用户Service接口
 * 
 * @author ruoyi
 * @date 2020-05-07
 */
public interface IWxUserApiService 
{
    /**
     * 查询微信用户
     * 
     * @param wxOpenid 微信用户ID
     * @return 微信用户
     */
    public Integer selectWxUserApiById(String wxOpenid);

    /**
     * 查询微信用户列表
     * 
     * @param wxUserApi 微信用户
     * @return 微信用户集合
     */
    public List<WxUserApi> selectWxUserApiList(WxUserApi wxUserApi);

    /**
     * 新增微信用户
     * 
     * @param wxUserApi 微信用户
     * @return 结果
     */
    public int insertWxUserApi(WxUserApi wxUserApi);

    /**
     * 修改微信用户
     * 
     * @param wxUserApi 微信用户
     * @return 结果
     */
    public int updateWxUserApi(WxUserApi wxUserApi);

    /**
     * 修改微信用户上下线
     *
     * @param wxUserApi 微信用户
     * @return 结果
     */
    public int updateWxUserOnlineApi(WxUserApi wxUserApi);

    /**
     * 批量删除微信用户
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteWxUserApiByIds(String ids);

    /**
     * 删除微信用户信息
     * 
     * @param wxOpenid 微信用户ID
     * @return 结果
     */
    public int deleteWxUserApiById(String wxOpenid);
}
