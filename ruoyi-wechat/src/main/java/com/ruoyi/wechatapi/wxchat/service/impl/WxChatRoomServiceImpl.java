package com.ruoyi.wechatapi.wxchat.service.impl;

import java.util.List;
import java.util.UUID;

import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.utils.Uuid;
import com.ruoyi.wechatapi.wxchat.domain.WxChatUnread;
import com.ruoyi.wechatapi.wxchat.domain.WxchatRoomNews;
import com.ruoyi.wechatapi.wxchat.mapper.WxChatPeopleMapper;
import com.ruoyi.wechatapi.wxchat.mapper.WxChatUnreadMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.wechatapi.wxchat.mapper.WxChatRoomMapper;
import com.ruoyi.wechatapi.wxchat.domain.WxChatRoom;
import com.ruoyi.wechatapi.wxchat.service.IWxChatRoomService;

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

    @Autowired
    private WxChatPeopleMapper wxChatPeopleMapper;

    @Autowired
    private WxChatUnreadMapper wxChatUnreadMapper;
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
        List<WxChatRoom> wxChatRoomList = wxChatRoomMapper.selectWxChatRoomList(wxChatRoom);
        for (WxChatRoom item:wxChatRoomList) {
            item.setMemberNum(wxChatPeopleMapper.selectWxChatPeopleByRoomId(item.getRoomId()));
        }
        return wxChatRoomList;
    }

    /**
     * 查询聊天室信息列表
     *
     * @param wxChatRoom 聊天室信息
     * @return 聊天室信息
     */
    @Override
    public List<WxchatRoomNews> selectWxChatRoomNewsList(WxChatRoom wxChatRoom)
    {
        return wxChatRoomMapper.selectWxChatRoomNewsList(wxChatRoom);
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
        //生成房间号
        Uuid uuid=new Uuid();
        String roomNum=uuid.generateShortUuid();
        wxChatRoom.setRoomNum(roomNum);
        wxChatRoom.setCreateTime(DateUtils.getNowDate());
        wxChatRoomMapper.insertWxChatRoom(wxChatRoom);
        WxChatUnread wxChatUnread=new WxChatUnread();
        wxChatUnread.setUserOpenid(wxChatRoom.getCreatorOpenid());
        System.out.println(wxChatRoom.getRoomId());
        wxChatUnread.setRoomId(wxChatRoom.getRoomId());
        wxChatUnread.setUpdateTime(DateUtils.getNowDate());
        return wxChatUnreadMapper.insertWxChatUnread(wxChatUnread);
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
