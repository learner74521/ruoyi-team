package com.ruoyi.wechatapi.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 聊天室信息对象 wx_chat_room
 *
 * @author ruoyi
 * @date 2020-05-27
 */
public class WxChatRoom extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 聊天室id */
    private Long roomId;

    /** 聊天室类型 */
    @Excel(name = "聊天室类型")
    private String roomType;

    /** 聊天室房间名 */
    @Excel(name = "聊天室房间名")
    private String roomName;

    /** 聊天室房间号 */
    @Excel(name = "聊天室房间号")
    private String roomNum;

    /** 创建人唯一标识 */
    @Excel(name = "创建人唯一标识")
    private String creatorOpenid;

    /** 创建人唯一标识 */
    @Excel(name = "创建人唯一标识")
    private WxChatUserInfo wxChatUserInfo;



    public void setRoomId(Long roomId)
    {
        this.roomId = roomId;
    }

    public Long getRoomId()
    {
        return roomId;
    }
    public void setRoomType(String roomType)
    {
        this.roomType = roomType;
    }

    public String getRoomType()
    {
        return roomType;
    }
    public void setRoomName(String roomName)
    {
        this.roomName = roomName;
    }

    public String getRoomName()
    {
        return roomName;
    }
    public void setRoomNum(String roomNum)
    {
        this.roomNum = roomNum;
    }

    public String getRoomNum()
    {
        return roomNum;
    }
    public void setWxChatUserInfo(WxChatUserInfo wxChatUserInfo)
    {
        this.wxChatUserInfo = wxChatUserInfo;
    }

    public WxChatUserInfo getWxChatUserInfo()
    {
        return wxChatUserInfo;
    }
    public String getCreatorOpenid() {
        return creatorOpenid;
    }

    public void setCreatorOpenid(String creatorOpenid) {
        this.creatorOpenid = creatorOpenid;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
                .append("roomId", getRoomId())
                .append("roomType", getRoomType())
                .append("roomName", getRoomName())
                .append("roomNum", getRoomNum())
                .append("createTime", getCreateTime())
                .append("WxChatUserInfo", getWxChatUserInfo())
                .append("updateTime", getUpdateTime())
                .toString();
    }


}