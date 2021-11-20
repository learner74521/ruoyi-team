package com.ruoyi.wechatapi.discover.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.wechatapi.discover.mapper.WxDiscoverStatisticsMapper;
import com.ruoyi.wechatapi.discover.domain.WxDiscoverStatistics;
import com.ruoyi.wechatapi.discover.service.IWxDiscoverStatisticsService;
import com.ruoyi.common.core.text.Convert;

/**
 * 动态的点赞，评论，浏览量数量统计Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-08-09
 */
@Service
public class WxDiscoverStatisticsServiceImpl implements IWxDiscoverStatisticsService 
{
    @Autowired
    private WxDiscoverStatisticsMapper wxDiscoverStatisticsMapper;

    /**
     * 查询动态的点赞，评论，浏览量数量统计
     * 
     * @param statisticsId 动态的点赞，评论，浏览量数量统计ID
     * @return 动态的点赞，评论，浏览量数量统计
     */
    @Override
    public WxDiscoverStatistics selectWxDiscoverStatisticsById(Long statisticsId)
    {
        return wxDiscoverStatisticsMapper.selectWxDiscoverStatisticsById(statisticsId);
    }

    /**
     * 查询动态的点赞，评论，浏览量数量统计列表
     * 
     * @param wxDiscoverStatistics 动态的点赞，评论，浏览量数量统计
     * @return 动态的点赞，评论，浏览量数量统计
     */
    @Override
    public List<WxDiscoverStatistics> selectWxDiscoverStatisticsList(WxDiscoverStatistics wxDiscoverStatistics)
    {
        return wxDiscoverStatisticsMapper.selectWxDiscoverStatisticsList(wxDiscoverStatistics);
    }

    /**
     * 新增动态的点赞，评论，浏览量数量统计
     * 
     * @param wxDiscoverStatistics 动态的点赞，评论，浏览量数量统计
     * @return 结果
     */
    @Override
    public int insertWxDiscoverStatistics(WxDiscoverStatistics wxDiscoverStatistics)
    {
        return wxDiscoverStatisticsMapper.insertWxDiscoverStatistics(wxDiscoverStatistics);
    }

    /**
     * 增加动态的评论数量
     *
     * @param contentId 增加动态的评论数量
     * @return 结果
     */
    public int updateAddCommentStatistics(Long contentId){
        return wxDiscoverStatisticsMapper.updateAddCommentStatistics(contentId);
    }

    /**
     * 增加动态的浏览量数量
     *
     * @param contentId 增加动态的浏览量数量
     * @return 结果
     */
    public int updateAddLookStatistics(Long contentId){
        return wxDiscoverStatisticsMapper.updateAddLookStatistics(contentId);
    }

    /**
     * 减少动态的评论数量
     *
     * @param contentId 减少动态的评论数量
     * @return 结果
     */
    public int updateReduceCommentStatistics(Long contentId){
        return wxDiscoverStatisticsMapper.updateReduceCommentStatistics(contentId);
    }
    /**
     * 修改动态的点赞，评论，浏览量数量统计
     * 
     * @param wxDiscoverStatistics 动态的点赞，评论，浏览量数量统计
     * @return 结果
     */
    @Override
    public int updateWxDiscoverStatistics(WxDiscoverStatistics wxDiscoverStatistics)
    {
        return wxDiscoverStatisticsMapper.updateWxDiscoverStatistics(wxDiscoverStatistics);
    }

    /**
     * 删除动态的点赞，评论，浏览量数量统计对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteWxDiscoverStatisticsByIds(String ids)
    {
        return wxDiscoverStatisticsMapper.deleteWxDiscoverStatisticsByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除动态的点赞，评论，浏览量数量统计信息
     * 
     * @param statisticsId 动态的点赞，评论，浏览量数量统计ID
     * @return 结果
     */
    @Override
    public int deleteWxDiscoverStatisticsById(Long statisticsId)
    {
        return wxDiscoverStatisticsMapper.deleteWxDiscoverStatisticsById(statisticsId);
    }
}
