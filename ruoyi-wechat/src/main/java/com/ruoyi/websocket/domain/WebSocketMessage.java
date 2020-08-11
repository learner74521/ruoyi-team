package com.ruoyi.websocket.domain;

import com.ruoyi.wechatapi.wxchat.domain.WxChatUserInfo;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 聊天室聊天内容对象 wx_chat_news
 * 
 * @author ruoyi
 * @date 2020-06-20
 */
public class WebSocketMessage extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 消息id */
    private Long newsId;

    /** 聊天人唯一标识 */
    @Excel(name = "聊天人唯一标识")
    private String newsUserOpenid;

    /** 聊天文本 */
    @Excel(name = "聊天文本")
    private String newsContent;

    /** 聊天图片 */
    @Excel(name = "聊天图片")
    private String newsImage;

    /** 所属聊天室id */
    @Excel(name = "所属聊天室id")
    private Long newsRoomId;

    /** 文本类型 */
    @Excel(name = "文本类型")
    private String newsType;

    /** 用户信息 */
    @Excel(name = "用户信息")
    private WxChatUserInfo wxChatUserInfo;

    public void setNewsId(Long newsId) 
    {
        this.newsId = newsId;
    }

    public Long getNewsId() 
    {
        return newsId;
    }
    public void setNewsUserOpenid(String newsUserOpenid) 
    {
        this.newsUserOpenid = newsUserOpenid;
    }

    public String getNewsUserOpenid() 
    {
        return newsUserOpenid;
    }
    public void setNewsContent(String newsContent) 
    {
        this.newsContent = newsContent;
    }

    public String getNewsContent() 
    {
        return newsContent;
    }
    public String getNewsImage() {
        return newsImage;
    }

    public void setNewsImage(String newsImage) {
        this.newsImage = newsImage;
    }
    public void setNewsRoomId(Long newsRoomId) 
    {
        this.newsRoomId = newsRoomId;
    }

    public Long getNewsRoomId() 
    {
        return newsRoomId;
    }
    public String getNewsType() {
        return newsType;
    }

    public void setNewsType(String newsType) {
        this.newsType = newsType;
    }
    public WxChatUserInfo getWxChatUserInfo() {
        return wxChatUserInfo;
    }

    public void setWxChatUserInfo(WxChatUserInfo wxChatUserInfo) {
        this.wxChatUserInfo = wxChatUserInfo;
    }
    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("newsId", getNewsId())
            .append("newsUserOpenid", getNewsUserOpenid())
            .append("newsContent", getNewsContent())
            .append("newsImage",getNewsImage())
            .append("createTime", getCreateTime())
            .append("newsRoomId", getNewsRoomId())
            .append("newsType", getNewsType())
            .append("wxChatUserInfo",getWxChatUserInfo())
            .toString();
    }


}
