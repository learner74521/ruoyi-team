package com.ruoyi.wechatapi.wxchat.service;

import java.util.List;
import com.ruoyi.wechatapi.wxchat.domain.WxChatPeople;

/**
 * 聊天室人员信息Service接口
 * 
 * @author ruoyi
 * @date 2020-07-30
 */
public interface IWxChatPeopleService 
{
    /**
     * 查询聊天室人员信息
     * 
     * @param peopleId 聊天室人员信息ID
     * @return 聊天室人员信息
     */
    public WxChatPeople selectWxChatPeopleById(Long peopleId);

    /**
     * 查询聊天室人员信息列表
     * 
     * @param wxChatPeople 聊天室人员信息
     * @return 聊天室人员信息集合
     */
    public List<WxChatPeople> selectWxChatPeopleList(WxChatPeople wxChatPeople);

    /**
     * 新增聊天室人员信息
     * 
     * @param wxChatPeople 聊天室人员信息
     * @return 结果
     */
    public int insertWxChatPeople(WxChatPeople wxChatPeople);

    /**
     * 修改聊天室人员信息
     * 
     * @param wxChatPeople 聊天室人员信息
     * @return 结果
     */
    public int updateWxChatPeople(WxChatPeople wxChatPeople);

    /**
     * 批量删除聊天室人员信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteWxChatPeopleByIds(String ids);

    /**
     * 删除聊天室人员信息信息
     * 
     * @param wxChatPeople 聊天室人员信息ID
     * @return 结果
     */
    public int deleteWxChatPeopleById(WxChatPeople wxChatPeople);
}
