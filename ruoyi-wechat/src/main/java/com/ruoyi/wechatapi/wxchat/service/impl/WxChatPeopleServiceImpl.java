package com.ruoyi.wechatapi.wxchat.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.wechatapi.wxchat.domain.WxChatUnread;
import com.ruoyi.wechatapi.wxchat.mapper.WxChatUnreadMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.wechatapi.wxchat.mapper.WxChatPeopleMapper;
import com.ruoyi.wechatapi.wxchat.domain.WxChatPeople;
import com.ruoyi.wechatapi.wxchat.service.IWxChatPeopleService;
import com.ruoyi.common.core.text.Convert;

/**
 * 聊天室人员信息Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-07-30
 */
@Service
public class WxChatPeopleServiceImpl implements IWxChatPeopleService 
{
    @Autowired
    private WxChatPeopleMapper wxChatPeopleMapper;

    @Autowired
    private WxChatUnreadMapper wxChatUnreadMapper;
    /**
     * 查询聊天室人员信息
     * 
     * @param peopleId 聊天室人员信息ID
     * @return 聊天室人员信息
     */
    @Override
    public WxChatPeople selectWxChatPeopleById(Long peopleId)
    {
        return wxChatPeopleMapper.selectWxChatPeopleById(peopleId);
    }

    /**
     * 查询聊天室人员信息列表
     * 
     * @param wxChatPeople 聊天室人员信息
     * @return 聊天室人员信息
     */
    @Override
    public List<WxChatPeople> selectWxChatPeopleList(WxChatPeople wxChatPeople)
    {
        return wxChatPeopleMapper.selectWxChatPeopleList(wxChatPeople);
    }

    /**
     * 新增聊天室人员信息
     * 
     * @param wxChatPeople 聊天室人员信息
     * @return 结果
     */
    @Override
    public int insertWxChatPeople(WxChatPeople wxChatPeople)
    {
        WxChatUnread wxChatUnread=new WxChatUnread();
        wxChatUnread.setUserOpenid(wxChatPeople.getPeopleOpenid());
        wxChatUnread.setRoomId(wxChatPeople.getPeopleRoomId());
        wxChatUnread.setUpdateTime(DateUtils.getNowDate());
        wxChatUnreadMapper.insertWxChatUnread(wxChatUnread);
        wxChatPeople.setCreateTime(DateUtils.getNowDate());
        return wxChatPeopleMapper.insertWxChatPeople(wxChatPeople);
    }

    /**
     * 修改聊天室人员信息
     * 
     * @param wxChatPeople 聊天室人员信息
     * @return 结果
     */
    @Override
    public int updateWxChatPeople(WxChatPeople wxChatPeople)
    {
        return wxChatPeopleMapper.updateWxChatPeople(wxChatPeople);
    }

    /**
     * 删除聊天室人员信息对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteWxChatPeopleByIds(String ids)
    {
        return wxChatPeopleMapper.deleteWxChatPeopleByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除聊天室人员信息信息
     * 
     * @param peopleId 聊天室人员信息ID
     * @return 结果
     */
    @Override
    public int deleteWxChatPeopleById(Long peopleId)
    {
        return wxChatPeopleMapper.deleteWxChatPeopleById(peopleId);
    }
}
