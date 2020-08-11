package com.ruoyi.wechatapi.wxchat.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 聊天室人员信息对象 wx_chat_people
 * 
 * @author ruoyi
 * @date 2020-07-30
 */
public class WxChatPeople extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 聊天室人员id */
    private Long peopleId;

    /** 聊天室人员唯一标识 */
    @Excel(name = "聊天室人员唯一标识")
    private String peopleOpenid;

    /** 所属聊天室id */
    @Excel(name = "所属聊天室id")
    private Long peopleRoomId;

    public void setPeopleId(Long peopleId) 
    {
        this.peopleId = peopleId;
    }

    public Long getPeopleId() 
    {
        return peopleId;
    }
    public void setPeopleOpenid(String peopleOpenid) 
    {
        this.peopleOpenid = peopleOpenid;
    }

    public String getPeopleOpenid() 
    {
        return peopleOpenid;
    }
    public void setPeopleRoomId(Long peopleRoomId) 
    {
        this.peopleRoomId = peopleRoomId;
    }

    public Long getPeopleRoomId() 
    {
        return peopleRoomId;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("peopleId", getPeopleId())
            .append("peopleOpenid", getPeopleOpenid())
            .append("createTime", getCreateTime())
            .append("peopleRoomId", getPeopleRoomId())
            .toString();
    }
}
