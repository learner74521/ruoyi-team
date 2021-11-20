package com.ruoyi.wechatapi.discover.service;

import java.util.List;

import com.ruoyi.wechatapi.discover.domain.WxDiscoverArrayContent;
import com.ruoyi.wechatapi.discover.domain.WxDiscoverContent;

/**
 * 发现区域的动态内容Service接口
 * 
 * @author ruoyi
 * @date 2020-08-09
 */
public interface IWxDiscoverContentService 
{
    /**
     * 查询发现区域的动态内容
     * 
     * @param contentId 发现区域的动态内容ID
     * @return 发现区域的动态内容
     */
    public WxDiscoverContent selectWxDiscoverContentById(Long contentId);

    /**
     * 查询发现区域的动态内容列表
     * 
     * @param wxDiscoverContent 发现区域的动态内容
     * @return 发现区域的动态内容集合
     */
    public List<WxDiscoverArrayContent> selectWxDiscoverContentList(WxDiscoverContent wxDiscoverContent);

    /**
     * 查询发现区域的动态内容列表
     *
     * @param  wxDiscoverContent 发现区域的动态内容
     * @return 发现区域的动态内容集合
     */
    public List<WxDiscoverArrayContent> selectWxDiscoverContentListByOpenid(WxDiscoverContent wxDiscoverContent);

    /**
     * 新增发现区域的动态内容
     * 
     * @param wxDiscoverContent 发现区域的动态内容
     * @return 结果
     */
    public int insertWxDiscoverContent(WxDiscoverContent wxDiscoverContent);

    /**
     * 修改发现区域的动态内容
     * 
     * @param wxDiscoverContent 发现区域的动态内容
     * @return 结果
     */
    public int updateWxDiscoverContent(WxDiscoverContent wxDiscoverContent);

    /**
     * 批量删除发现区域的动态内容
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteWxDiscoverContentByIds(String ids);

    /**
     * 删除发现区域的动态内容信息
     * 
     * @param contentId 发现区域的动态内容ID
     * @return 结果
     */
    public int deleteWxDiscoverContentById(Long contentId);
}
