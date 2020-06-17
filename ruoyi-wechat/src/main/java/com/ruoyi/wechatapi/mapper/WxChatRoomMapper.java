package com.ruoyi.wechatapi.mapper;

import java.util.List;
import com.ruoyi.wechatapi.domain.WxChatRoom;

/**
 * 聊天室信息Mapper接口
 *
 * @author ruoyi
 * @date 2020-05-27
 */
public interface WxChatRoomMapper
{
    /**
     * 查询聊天室信息
     *
     * @param roomId 聊天室信息
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
     * 删除聊天室信息
     *
     * @param roomId 聊天室信息ID
     * @return 结果
     */
    public int deleteWxChatRoomById(Long roomId);

}