package com.ruoyi.wechatapi.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.wechatapi.mapper.WxChatRoomMapper;
import com.ruoyi.wechatapi.domain.WxChatRoom;
import com.ruoyi.wechatapi.service.IWxChatRoomService;
import com.ruoyi.common.core.text.Convert;

/**
 * 聊天室信息Service业务层处理
 *
 * @author ruoyi
 * @date 2020-05-27
 */
@Service
public class WxChatRoomServiceImpl implements IWxChatRoomService
{
    @Autowired
    private WxChatRoomMapper wxChatRoomMapper;

    /**
     * 查询聊天室信息
     *
     * @param roomId 聊天室信息
     * @return 聊天室信息
     */
    @Override
    public WxChatRoom selectWxChatRoomById(Long roomId)
    {
        return wxChatRoomMapper.selectWxChatRoomById(roomId);
    }


    /**
     * 查询聊天室信息列表
     *
     * @param wxChatRoom 聊天室信息
     * @return 聊天室信息
     */
    @Override
    public List<WxChatRoom> selectWxChatRoomList(WxChatRoom wxChatRoom)
    {
        return wxChatRoomMapper.selectWxChatRoomList(wxChatRoom);
    }

    /**
     * 新增聊天室信息
     *
     * @param wxChatRoom 聊天室信息
     * @return 结果
     */
    @Override
    public int insertWxChatRoom(WxChatRoom wxChatRoom)
    {
        wxChatRoom.setCreateTime(DateUtils.getNowDate());
        return wxChatRoomMapper.insertWxChatRoom(wxChatRoom);
    }

    /**
     * 修改聊天室信息
     *
     * @param wxChatRoom 聊天室信息
     * @return 结果
     */
    @Override
    public int updateWxChatRoom(WxChatRoom wxChatRoom)
    {
        wxChatRoom.setUpdateTime(DateUtils.getNowDate());
        return wxChatRoomMapper.updateWxChatRoom(wxChatRoom);
    }


    /**
     * 删除聊天室信息信息
     *
     * @param roomId 聊天室信息ID
     * @return 结果
     */
    @Override
    public int deleteWxChatRoomById(Long roomId)
    {
        return wxChatRoomMapper.deleteWxChatRoomById(roomId);
    }
}
