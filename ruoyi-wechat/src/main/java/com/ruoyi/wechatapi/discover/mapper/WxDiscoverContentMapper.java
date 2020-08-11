package com.ruoyi.wechatapi.discover.mapper;

import java.util.List;

import com.ruoyi.wechatapi.discover.domain.WxDiscoverArrayContent;
import com.ruoyi.wechatapi.discover.domain.WxDiscoverContent;

/**
 * 发现区域的动态内容Mapper接口
 * 
 * @author ruoyi
 * @date 2020-08-09
 */
public interface WxDiscoverContentMapper 
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
    public List<WxDiscoverContent> selectWxDiscoverContentList(WxDiscoverContent wxDiscoverContent);

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
     * 删除发现区域的动态内容
     * 
     * @param contentId 发现区域的动态内容ID
     * @return 结果
     */
    public int deleteWxDiscoverContentById(Long contentId);

    /**
     * 批量删除发现区域的动态内容
     * 
     * @param contentIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteWxDiscoverContentByIds(String[] contentIds);
}
