package com.ruoyi.wechatapi.wxchat.mapper;

import java.util.List;
import com.ruoyi.wechatapi.wxchat.domain.WxChatPeople;

/**
 * 聊天室人员信息Mapper接口
 * 
 * @author ruoyi
 * @date 2020-07-30
 */
public interface WxChatPeopleMapper 
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
     * 删除聊天室人员信息
     * 
     * @param peopleId 聊天室人员信息ID
     * @return 结果
     */
    public int deleteWxChatPeopleById(Long peopleId);

    /**
     * 批量删除聊天室人员信息
     * 
     * @param peopleIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteWxChatPeopleByIds(String[] peopleIds);
}
