package com.ruoyi.wechatapi.discover.mapper;

import java.util.List;
import com.ruoyi.wechatapi.discover.domain.WxDiscoverStatistics;

/**
 * 动态的点赞，评论，浏览量数量统计Mapper接口
 * 
 * @author ruoyi
 * @date 2020-08-09
 */
public interface WxDiscoverStatisticsMapper 
{
    /**
     * 查询动态的点赞，评论，浏览量数量统计
     * 
     * @param statisticsId 动态的点赞，评论，浏览量数量统计ID
     * @return 动态的点赞，评论，浏览量数量统计
     */
    public WxDiscoverStatistics selectWxDiscoverStatisticsById(Long statisticsId);

    /**
     * 查询动态的点赞，评论，浏览量数量统计列表
     * 
     * @param wxDiscoverStatistics 动态的点赞，评论，浏览量数量统计
     * @return 动态的点赞，评论，浏览量数量统计集合
     */
    public List<WxDiscoverStatistics> selectWxDiscoverStatisticsList(WxDiscoverStatistics wxDiscoverStatistics);

    /**
     * 新增动态的点赞，评论，浏览量数量统计
     * 
     * @param wxDiscoverStatistics 动态的点赞，评论，浏览量数量统计
     * @return 结果
     */
    public int insertWxDiscoverStatistics(WxDiscoverStatistics wxDiscoverStatistics);

    /**
     * 修改动态的点赞，评论，浏览量数量统计
     * 
     * @param wxDiscoverStatistics 动态的点赞，评论，浏览量数量统计
     * @return 结果
     */
    public int updateWxDiscoverStatistics(WxDiscoverStatistics wxDiscoverStatistics);

    /**
     * 删除动态的点赞，评论，浏览量数量统计
     * 
     * @param statisticsId 动态的点赞，评论，浏览量数量统计ID
     * @return 结果
     */
    public int deleteWxDiscoverStatisticsById(Long statisticsId);

    /**
     * 批量删除动态的点赞，评论，浏览量数量统计
     * 
     * @param statisticsIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteWxDiscoverStatisticsByIds(String[] statisticsIds);
}
