package com.ruoyi.wechatapi.discover.service;

import java.util.List;
import com.ruoyi.wechatapi.discover.domain.WxDiscoverComment;

/**
 * 动态评论Service接口
 * 
 * @author ruoyi
 * @date 2020-08-09
 */
public interface IWxDiscoverCommentService 
{
    /**
     * 查询动态评论
     * 
     * @param commentId 动态评论ID
     * @return 动态评论
     */
    public WxDiscoverComment selectWxDiscoverCommentById(Long commentId);

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
     * 批量删除动态评论
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteWxDiscoverCommentByIds(String ids);

    /**
     * 删除动态评论信息
     * 
     * @param commentId 动态评论ID
     * @return 结果
     */
    public int deleteWxDiscoverCommentById(Long commentId);
}
