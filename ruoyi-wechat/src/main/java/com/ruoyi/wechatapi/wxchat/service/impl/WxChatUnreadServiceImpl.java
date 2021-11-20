package com.ruoyi.wechatapi.wxchat.service.impl;

import java.util.List;

import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.wechatapi.wxchat.domain.WxChatPeople;
import com.ruoyi.wechatapi.wxchat.mapper.WxChatPeopleMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.wechatapi.wxchat.mapper.WxChatUnreadMapper;
import com.ruoyi.wechatapi.wxchat.domain.WxChatUnread;
import com.ruoyi.wechatapi.wxchat.service.IWxChatUnreadService;
import com.ruoyi.common.core.text.Convert;

/**
 * 聊天室未读信息Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-09-08
 */
@Service
public class WxChatUnreadServiceImpl implements IWxChatUnreadService 
{
    @Autowired
    private WxChatUnreadMapper wxChatUnreadMapper;

    @Autowired
    private WxChatPeopleMapper wxChatPeopleMapper;

    /**
     * 查询聊天室未读信息
     * 
     * @param roomId 聊天室未读信息ID
     * @return 聊天室未读信息
     */
    @Override
    public WxChatUnread selectWxChatUnreadById(Long roomId)
    {
        return wxChatUnreadMapper.selectWxChatUnreadById(roomId);
    }

    /**
     * 查询聊天室未读信息列表
     * 
     * @param wxChatUnread 聊天室未读信息
     * @return 聊天室未读信息
     */
    @Override
    public Integer selectWxChatUnreadList(WxChatUnread wxChatUnread)
    {
        return wxChatUnreadMapper.selectWxChatUnreadList(wxChatUnread);
    }

    /**
     * 新增聊天室未读信息
     * 
     * @param wxChatUnread 聊天室未读信息
     * @return 结果
     */
    @Override
    public int insertWxChatUnread(WxChatUnread wxChatUnread)
    {
        wxChatUnread.setUpdateTime(DateUtils.getNowDate());
        return wxChatUnreadMapper.insertWxChatUnread(wxChatUnread);
    }

    /**
     * 修改聊天室未读信息
     * 
     * @param wxChatUnread 聊天室未读信息
     * @return 结果
     */
    @Override
    public int updateWxChatUnread(WxChatUnread wxChatUnread)
    {
        wxChatUnread.setUpdateTime(DateUtils.getNowDate());
        return wxChatUnreadMapper.updateWxChatUnreadNum(wxChatUnread);
    }

    /**
     * 删除聊天室未读信息
     *
     * @param wxChatUnread 聊天室未读信息
     * @return 结果
     */
    public int  reduceWxChatUnread(WxChatUnread wxChatUnread){
        return wxChatUnreadMapper.reduceWxChatUnread(wxChatUnread);
    }

    /**
     * 删除聊天室未读信息对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteWxChatUnreadByIds(String ids)
    {
        return wxChatUnreadMapper.deleteWxChatUnreadByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除聊天室未读信息信息
     * 
     * @param roomId 聊天室未读信息ID
     * @return 结果
     */
    @Override
    public int deleteWxChatUnreadById(Long roomId)
    {
        return wxChatUnreadMapper.deleteWxChatUnreadById(roomId);
    }
}
