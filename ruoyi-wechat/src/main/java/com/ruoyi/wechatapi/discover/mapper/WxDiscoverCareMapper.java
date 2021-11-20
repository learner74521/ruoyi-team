package com.ruoyi.wechatapi.discover.mapper;

import java.util.List;
import com.ruoyi.wechatapi.discover.domain.WxDiscoverCare;

/**
 * 用户关注Mapper接口
 * 
 * @author ruoyi
 * @date 2020-09-09
 */
public interface WxDiscoverCareMapper 
{
    /**
     * 查询用户关注
     * 
     * @param careId 用户关注ID
     * @return 用户关注
     */
    public WxDiscoverCare selectWxDiscoverCareById(Long careId);

    /**
     * 查询用户关注列表
     * 
     * @param createOpenid 用户关注
     * @return 用户关注集合
     */
    public String[] selectWxDiscoverCareList(String createOpenid);

    /**
     * 新增用户关注
     * 
     * @param wxDiscoverCare 用户关注
     * @return 结果
     */
    public int insertWxDiscoverCare(WxDiscoverCare wxDiscoverCare);

    /**
     * 修改用户关注
     * 
     * @param wxDiscoverCare 用户关注
     * @return 结果
     */
    public int updateWxDiscoverCare(WxDiscoverCare wxDiscoverCare);

    /**
     * 删除用户关注
     * 
     * @param careId 用户关注ID
     * @return 结果
     */
    public int deleteWxDiscoverCareById(Long careId);

    /**
     * 批量删除用户关注
     * 
     * @param careIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteWxDiscoverCareByIds(String[] careIds);

    /**
     * 批量删除用户关注
     *
     * @param wxDiscoverCare 需要删除的数据ID
     * @return 结果
     */
    public int deleteWxDiscoverCareByInfo(WxDiscoverCare wxDiscoverCare);
}
