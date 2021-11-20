package com.ruoyi.wechatapi.wxchat.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 聊天室未读信息对象 wx_chat_unread
 * 
 * @author ruoyi
 * @date 2020-09-08
 */
public class WxChatUnread extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 聊天室房间id */
    private Long roomId;

    /** 用户唯一标识 */
    private String userOpenid;

    /** 未读消息个数 */
    @Excel(name = "未读消息个数")
    private int unreadNumber;

    /** 所有未读消息个数 */
    private int allUnreadNumber;

    public void setRoomId(Long roomId) 
    {
        this.roomId = roomId;
    }

    public Long getRoomId() 
    {
        return roomId;
    }
    public void setUserOpenid(String userOpenid) 
    {
        this.userOpenid = userOpenid;
    }

    public String getUserOpenid() 
    {
        return userOpenid;
    }
    public void setUnreadNumber(int unreadNumber)
    {
        this.unreadNumber = unreadNumber;
    }

    public int getUnreadNumber()
    {
        return unreadNumber;
    }
    public int getAllUnreadNumber() {
        return allUnreadNumber;
    }

    public void setAllUnreadNumber(int allUnreadNumber) {
        this.allUnreadNumber = allUnreadNumber;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("roomId", getRoomId())
            .append("userOpenid", getUserOpenid())
            .append("unreadNumber", getUnreadNumber())
            .append("allUnreadNumber", getAllUnreadNumber())
            .toString();
    }


}
