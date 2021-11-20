package com.ruoyi.wechatapi.wxchat.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.ruoyi.common.core.domain.PageEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

import java.util.Date;

/**
 * 聊天室信息对象 wx_chat_room
 *
 * @author ruoyi
 * @date 2020-05-27
 */
public class WxChatRoom extends PageEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 聊天室id
     */
    private Long roomId;

    /**
     * 聊天室类型 id
     */
    @Excel(name = "聊天室类型")
    private Long roomTypeId;

    /**
     * 聊天室房间名
     */
    @Excel(name = "聊天室房间名")
    private String roomName;

    /**
     * 聊天室房间号
     */
    @Excel(name = "聊天室房间号")
    private String roomNum;

    /**
     * 聊天室房间人数
     */
    private Integer memberNum;

    /**
     * 更新时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date endTime;

    /**
     * 创建人唯一标识
     */
    @Excel(name = "创建人唯一标识")
    private String creatorOpenid;

    /**
     * 目的地点
     */
    @Excel(name = "目的地点")
    private String roomSite;

    /**
     * 地理坐标
     */
    @Excel(name = "地理坐标")
    private String roomPosition;

    /**
     * 聊天室房间号
     */
    @Excel(name = "聊天室房间号")
    private String roomIntroduce;

    /**
     * 创建人信息
     */
    @Excel(name = "创建人信息")
    private WxChatUserInfo wxChatUserInfo;

    public void setRoomId(Long roomId) {
        this.roomId = roomId;
    }

    public Long getRoomId() {
        return roomId;
    }

    public Long getRoomTypeId() {
        return roomTypeId;
    }

    public void setRoomTypeId(Long roomTypeId) {
        this.roomTypeId = roomTypeId;
    }

    public void setRoomName(String roomName) {
        this.roomName = roomName;
    }

    public String getRoomName() {
        return roomName;
    }

    public String getRoomIntroduce() {
        return roomIntroduce;
    }

    public void setRoomIntroduce(String roomIntroduce) {
        this.roomIntroduce = roomIntroduce;
    }

    public void setRoomNum(String roomNum) {
        this.roomNum = roomNum;
    }

    public String getRoomNum() {
        return roomNum;
    }

    public Integer getMemberNum() {
        return memberNum;
    }

    public void setMemberNum(Integer memberNum) {
        this.memberNum = memberNum;
    }

    public void setWxChatUserInfo(WxChatUserInfo wxChatUserInfo) {
        this.wxChatUserInfo = wxChatUserInfo;
    }

    public WxChatUserInfo getWxChatUserInfo() {
        return wxChatUserInfo;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public String getRoomSite() {
        return roomSite;
    }

    public void setRoomSite(String roomSite) {
        this.roomSite = roomSite;
    }

    public String getRoomPosition() {
        return roomPosition;
    }

    public void setRoomPosition(String roomPosition) {
        this.roomPosition = roomPosition;
    }

    public String getCreatorOpenid() {
        return creatorOpenid;
    }

    public void setCreatorOpenid(String creatorOpenid) {
        this.creatorOpenid = creatorOpenid;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("roomId", getRoomId())
                .append("roomType", getRoomTypeId())
                .append("roomName", getRoomName())
                .append("roomNum", getRoomNum())
                .append("createTime", getCreateTime())
                .append("WxChatUserInfo", getWxChatUserInfo())
                .append("roomIntroduce", getRoomIntroduce())
                .append("roomSite", getRoomSite())
                .append("roomPosition", getRoomPosition())
                .append("memberNum", getMemberNum())
                .append("updateTime", getUpdateTime())
                .append("endTime", getEndTime())
                .toString();
    }

}
