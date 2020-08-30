package com.ruoyi.wechatapi.discover.domain;

import com.ruoyi.wechatapi.wxchat.domain.WxChatUserInfo;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 评论回复对象 wx_discover_reply
 * 
 * @author ruoyi
 * @date 2020-08-09
 */
public class WxDiscoverReply extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 回复评论id */
    private Long replyId;

    /** 评论id */
    @Excel(name = "评论id")
    private Long commentId;

    /** 回复评论文本 */
    @Excel(name = "回复评论文本")
    private String replyText;

    /** 回复人id */
    @Excel(name = "回复人id")
    private String fromOpenid;

    /** 被回复人id */
    @Excel(name = "被回复人id")
    private String toOpenid;

    /** 动态id */
    @Excel(name = "动态id ")
    private Long contentId;

    /** null */
    @Excel(name = "null")
    private String reply2;

    /** null */
    @Excel(name = "null")
    private String reply3;

    /** 创建人信息 */
    @Excel(name = "创建人信息")
    private WxChatUserInfo wxChatUserInfo;

    public void setReplyId(Long replyId)
    {
        this.replyId = replyId;
    }

    public Long getReplyId()
    {
        return replyId;
    }
    public void setCommentId(Long commentId)
    {
        this.commentId = commentId;
    }

    public Long getCommentId()
    {
        return commentId;
    }
    public void setReplyText(String replyText)
    {
        this.replyText = replyText;
    }

    public String getReplyText()
    {
        return replyText;
    }
    public void setFromOpenid(String fromOpenid)
    {
        this.fromOpenid = fromOpenid;
    }

    public String getFromOpenid()
    {
        return fromOpenid;
    }
    public void setToOpenid(String toOpenid)
    {
        this.toOpenid = toOpenid;
    }

    public String getToOpenid()
    {
        return toOpenid;
    }
    public void setContentId(Long contentId)
    {
        this.contentId = contentId;
    }

    public Long getContentId()
    {
        return contentId;
    }
    public void setReply2(String reply2)
    {
        this.reply2 = reply2;
    }

    public String getReply2()
    {
        return reply2;
    }
    public void setReply3(String reply3)
    {
        this.reply3 = reply3;
    }

    public String getReply3()
    {
        return reply3;
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
            .append("replyId", getReplyId())
            .append("commentId", getCommentId())
            .append("replyText", getReplyText())
            .append("fromOpenid", getFromOpenid())
            .append("toOpenid", getToOpenid())
            .append("createTime", getCreateTime())
            .append("contentId", getContentId())
            .append("reply2", getReply2())
            .append("reply3", getReply3())
            .append("WxChatUserInfo", getWxChatUserInfo())
            .toString();
    }


}
