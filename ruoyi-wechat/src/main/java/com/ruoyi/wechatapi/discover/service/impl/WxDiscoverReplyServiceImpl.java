package com.ruoyi.wechatapi.discover.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.wechatapi.discover.mapper.WxDiscoverStatisticsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.wechatapi.discover.mapper.WxDiscoverReplyMapper;
import com.ruoyi.wechatapi.discover.domain.WxDiscoverReply;
import com.ruoyi.wechatapi.discover.service.IWxDiscoverReplyService;
import com.ruoyi.common.core.text.Convert;

/**
 * 评论回复Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-08-09
 */
@Service
public class WxDiscoverReplyServiceImpl implements IWxDiscoverReplyService 
{
    @Autowired
    private WxDiscoverReplyMapper wxDiscoverReplyMapper;

    @Autowired
    private WxDiscoverStatisticsMapper wxDiscoverStatisticsMapper;

    /**
     * 查询评论回复
     * 
     * @param replyId 评论回复ID
     * @return 评论回复
     */
    @Override
    public List<WxDiscoverReply> selectWxDiscoverReplyById(Long replyId)
    {
        return wxDiscoverReplyMapper.selectWxDiscoverReplyById(replyId);
    }

    /**
     * 查询评论回复列表
     * 
     * @param wxDiscoverReply 评论回复
     * @return 评论回复
     */
    @Override
    public List<WxDiscoverReply> selectWxDiscoverReplyList(WxDiscoverReply wxDiscoverReply)
    {
        return wxDiscoverReplyMapper.selectWxDiscoverReplyList(wxDiscoverReply);
    }

    /**
     * 新增评论回复
     * 
     * @param wxDiscoverReply 评论回复
     * @return 结果
     */
    @Override
    public int insertWxDiscoverReply(WxDiscoverReply wxDiscoverReply)
    {
        wxDiscoverStatisticsMapper.updateAddCommentStatistics(wxDiscoverReply.getContentId());
        wxDiscoverReply.setCreateTime(DateUtils.getNowDate());
        return wxDiscoverReplyMapper.insertWxDiscoverReply(wxDiscoverReply);
    }

    /**
     * 修改评论回复
     * 
     * @param wxDiscoverReply 评论回复
     * @return 结果
     */
    @Override
    public int updateWxDiscoverReply(WxDiscoverReply wxDiscoverReply)
    {
        return wxDiscoverReplyMapper.updateWxDiscoverReply(wxDiscoverReply);
    }

    /**
     * 删除评论回复对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteWxDiscoverReplyByIds(String ids)
    {
        return wxDiscoverReplyMapper.deleteWxDiscoverReplyByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除评论回复信息
     * 
     * @param replyId 评论回复ID
     * @return 结果
     */
    @Override
    public int deleteWxDiscoverReplyById(Long replyId)
    {
        Long contentId=wxDiscoverReplyMapper.selectWxDiscoverReplyByCId(replyId);
        wxDiscoverStatisticsMapper.updateReduceCommentStatistics(contentId);
        return wxDiscoverReplyMapper.deleteWxDiscoverReplyById(replyId);
    }
}
