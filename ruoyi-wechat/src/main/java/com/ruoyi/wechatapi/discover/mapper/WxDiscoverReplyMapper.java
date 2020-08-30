package com.ruoyi.wechatapi.discover.mapper;

import java.util.List;
import com.ruoyi.wechatapi.discover.domain.WxDiscoverReply;

/**
 * 评论回复Mapper接口
 * 
 * @author ruoyi
 * @date 2020-08-09
 */
public interface WxDiscoverReplyMapper 
{
    /**
     * 查询评论回复
     * 
     * @param commentId 评论ID
     * @return 评论回复
     */
    public List<WxDiscoverReply> selectWxDiscoverReplyById(Long commentId);

    /**
     * 查询评论回复
     *
     * @param commentId 评论ID
     * @return 评论回复
     */
    public Long selectWxDiscoverReplyByCId(Long commentId);

    /**
     * 查询评论回复列表
     * 
     * @param wxDiscoverReply 评论回复
     * @return 评论回复集合
     */
    public List<WxDiscoverReply> selectWxDiscoverReplyList(WxDiscoverReply wxDiscoverReply);

    /**
     * 新增评论回复
     * 
     * @param wxDiscoverReply 评论回复
     * @return 结果
     */
    public int insertWxDiscoverReply(WxDiscoverReply wxDiscoverReply);

    /**
     * 修改评论回复
     * 
     * @param wxDiscoverReply 评论回复
     * @return 结果
     */
    public int updateWxDiscoverReply(WxDiscoverReply wxDiscoverReply);

    /**
     * 删除评论回复
     * 
     * @param replyId 评论回复ID
     * @return 结果
     */
    public int deleteWxDiscoverReplyById(Long replyId);

    /**
     * 批量删除评论回复
     * 
     * @param replyIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteWxDiscoverReplyByIds(String[] replyIds);
}
