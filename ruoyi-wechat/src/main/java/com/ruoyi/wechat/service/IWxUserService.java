package com.ruoyi.wechat.service;

import java.util.List;
import com.ruoyi.wechat.domain.WxUser;

/**
 * 微信用户Service接口
 * 
 * @author ruoyi
 * @date 2020-04-28
 */
public interface IWxUserService 
{
    /**
     * 查询微信用户
     * 
     * @param wxOpenid 微信用户ID
     * @return 微信用户
     */
    public WxUser selectWxUserById(String wxOpenid);

    /**
     * 查询微信用户列表
     * 
     * @param wxUser 微信用户
     * @return 微信用户集合
     */
    public List<WxUser> selectWxUserList(WxUser wxUser);

    /**
     * 新增微信用户
     * 
     * @param wxUser 微信用户
     * @return 结果
     */
    public int insertWxUser(WxUser wxUser);

    /**
     * 修改微信用户
     * 
     * @param wxUser 微信用户
     * @return 结果
     */
    public int updateWxUser(WxUser wxUser);

    /**
     * 批量删除微信用户
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteWxUserByIds(String ids);

    /**
     * 删除微信用户信息
     * 
     * @param wxOpenid 微信用户ID
     * @return 结果
     */
    public int deleteWxUserById(String wxOpenid);
}
