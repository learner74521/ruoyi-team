package com.ruoyi.wechatapi.wxchat.service;

import java.util.List;
import com.ruoyi.wechatapi.wxchat.domain.WxChatRoom;
import com.ruoyi.wechatapi.wxchat.domain.WxchatRoomNews;

/**
 * 聊天室信息Service接口
 *
 * @author ruoyi
 * @date 2020-05-27
 */
public interface IWxChatRoomService
{
    /**
     * 查询聊天室信息
     *
     * @param roomId 聊天室信息ID
     * @return 聊天室信息
     */
    public WxChatRoom selectWxChatRoomById(Long roomId);

    /**
     * 查询聊天室信息列表
     *
     * @param wxChatRoom 聊天室信息
     * @return 聊天室信息集合
     */
    public List<WxChatRoom> selectWxChatRoomList(WxChatRoom wxChatRoom);

    /**
     * 查询聊天室信息列表
     *
     * @param wxChatRoom 聊天室信息
     * @return 聊天室信息集合
     */
    public List<WxchatRoomNews> selectWxChatRoomNewsList(WxChatRoom wxChatRoom);

    /**
     * 新增聊天室信息
     *
     * @param wxChatRoom 聊天室信息
     * @return 结果
     */
    public int insertWxChatRoom(WxChatRoom wxChatRoom);

    /**
     * 修改聊天室信息
     *
     * @param wxChatRoom 聊天室信息
     * @return 结果
     */
    public int updateWxChatRoom(WxChatRoom wxChatRoom);



    /**
     * 删除聊天室信息信息
     *
     * @param roomId 聊天室信息ID
     * @return 结果
     */
    public int deleteWxChatRoomById(Long roomId);
}
