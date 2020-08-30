package com.ruoyi.wechatapi.discover.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.wechatapi.discover.domain.WxDiscoverStatistics;
import com.ruoyi.wechatapi.discover.mapper.WxDiscoverReplyMapper;
import com.ruoyi.wechatapi.discover.mapper.WxDiscoverStatisticsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.wechatapi.discover.mapper.WxDiscoverCommentMapper;
import com.ruoyi.wechatapi.discover.domain.WxDiscoverComment;
import com.ruoyi.wechatapi.discover.service.IWxDiscoverCommentService;
import com.ruoyi.common.core.text.Convert;

/**
 * 动态评论Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-08-09
 */
@Service
public class WxDiscoverCommentServiceImpl implements IWxDiscoverCommentService 
{
    @Autowired
    private WxDiscoverCommentMapper wxDiscoverCommentMapper;

    @Autowired
    private WxDiscoverReplyMapper wxDiscoverReplyMapper;

    @Autowired
    private WxDiscoverStatisticsMapper wxDiscoverStatisticsMapper;

    /**
     * 查询动态评论
     * 
     * @param contentId 动态ID
     * @return 动态评论
     */
    @Override
    public List<WxDiscoverComment> selectWxDiscoverCommentById(Long contentId)
    {
        List<WxDiscoverComment> wxDiscoverCommentList=wxDiscoverCommentMapper.selectWxDiscoverCommentById(contentId);
        for (WxDiscoverComment item:wxDiscoverCommentList) {
           item.setWxDiscoverReplyList(wxDiscoverReplyMapper.selectWxDiscoverReplyById(item.getCommentId()));
        }
        System.out.println(wxDiscoverCommentList);
        return wxDiscoverCommentList;
    }

    /**
     * 查询动态评论列表
     * 
     * @param wxDiscoverComment 动态评论
     * @return 动态评论
     */
    @Override
    public List<WxDiscoverComment> selectWxDiscoverCommentList(WxDiscoverComment wxDiscoverComment)
    {
        return wxDiscoverCommentMapper.selectWxDiscoverCommentList(wxDiscoverComment);
    }

    /**
     * 新增动态评论
     * 
     * @param wxDiscoverComment 动态评论
     * @return 结果
     */
    @Override
    public int insertWxDiscoverComment(WxDiscoverComment wxDiscoverComment)
    {
        wxDiscoverStatisticsMapper.updateAddCommentStatistics(wxDiscoverComment.getContentId());
        wxDiscoverComment.setCreateTime(DateUtils.getNowDate());
        return wxDiscoverCommentMapper.insertWxDiscoverComment(wxDiscoverComment);
    }

    /**
     * 修改动态评论
     * 
     * @param wxDiscoverComment 动态评论
     * @return 结果
     */
    @Override
    public int updateWxDiscoverComment(WxDiscoverComment wxDiscoverComment)
    {
        return wxDiscoverCommentMapper.updateWxDiscoverComment(wxDiscoverComment);
    }

    /**
     * 删除动态评论对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteWxDiscoverCommentByIds(String ids)
    {
        return wxDiscoverCommentMapper.deleteWxDiscoverCommentByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除动态评论信息
     * 
     * @param commentId 动态评论ID
     * @return 结果
     */
    @Override
    public int deleteWxDiscoverCommentById(Long commentId)
    {
        Long contentId=wxDiscoverCommentMapper.selectWxDiscoverCommentByCId(commentId);
        wxDiscoverStatisticsMapper.updateReduceCommentStatistics(contentId);
        return wxDiscoverCommentMapper.deleteWxDiscoverCommentById(commentId);
    }
}
