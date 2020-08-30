package com.ruoyi.wechatapi.discover.mapper;

import java.util.List;
import com.ruoyi.wechatapi.discover.domain.WxDiscoverComment;

/**
 * 动态评论Mapper接口
 * 
 * @author ruoyi
 * @date 2020-08-09
 */
public interface WxDiscoverCommentMapper 
{
    /**
     * 查询动态评论
     * 
     * @param contentId 动态ID
     * @return 动态评论
     */
    public List<WxDiscoverComment> selectWxDiscoverCommentById(Long contentId);

    /**
     * 查询动态评论
     *
     * @param commentId 动态ID
     * @return 动态评论
     */
    public Long selectWxDiscoverCommentByCId(Long commentId);

    /**
     * 查询动态评论列表
     * 
     * @param wxDiscoverComment 动态评论
     * @return 动态评论集合
     */
    public List<WxDiscoverComment> selectWxDiscoverCommentList(WxDiscoverComment wxDiscoverComment);

    /**
     * 新增动态评论
     * 
     * @param wxDiscoverComment 动态评论
     * @return 结果
     */
    public int insertWxDiscoverComment(WxDiscoverComment wxDiscoverComment);

    /**
     * 修改动态评论
     * 
     * @param wxDiscoverComment 动态评论
     * @return 结果
     */
    public int updateWxDiscoverComment(WxDiscoverComment wxDiscoverComment);

    /**
     * 删除动态评论
     * 
     * @param commentId 动态评论ID
     * @return 结果
     */
    public int deleteWxDiscoverCommentById(Long commentId);

    /**
     * 批量删除动态评论
     * 
     * @param commentIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteWxDiscoverCommentByIds(String[] commentIds);
}
