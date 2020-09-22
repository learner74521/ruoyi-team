package com.ruoyi.wechatapi.wxchat.service;

import java.util.List;
import com.ruoyi.wechatapi.wxchat.domain.WxChatUnread;

/**
 * 聊天室未读信息Service接口
 * 
 * @author ruoyi
 * @date 2020-09-08
 */
public interface IWxChatUnreadService 
{
    /**
     * 查询聊天室未读信息
     * 
     * @param roomId 聊天室未读信息ID
     * @return 聊天室未读信息
     */
    public WxChatUnread selectWxChatUnreadById(Long roomId);

    /**
     * 查询聊天室未读信息列表
     * 
     * @param wxChatUnread 聊天室未读信息
     * @return 聊天室未读信息集合
     */
    public List<WxChatUnread> selectWxChatUnreadList(WxChatUnread wxChatUnread);

    /**
     * 新增聊天室未读信息
     * 
     * @param wxChatUnread 聊天室未读信息
     * @return 结果
     */
    public int insertWxChatUnread(WxChatUnread wxChatUnread);

    /**
     * 修改聊天室未读信息
     * 
     * @param wxChatUnread 聊天室未读信息
     * @return 结果
     */
    public int updateWxChatUnread(WxChatUnread wxChatUnread);

    /**
     * 删除聊天室未读信息
     *
     * @param wxChatUnread 聊天室未读信息
     * @return 结果
     */
    public int  reduceWxChatUnread(WxChatUnread wxChatUnread);


    /**
     * 批量删除聊天室未读信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteWxChatUnreadByIds(String ids);

    /**
     * 删除聊天室未读信息信息
     * 
     * @param roomId 聊天室未读信息ID
     * @return 结果
     */
    public int deleteWxChatUnreadById(Long roomId);
}
