package com.ruoyi.wechatapi.discover.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 动态评论对象 wx_discover_comment
 * 
 * @author ruoyi
 * @date 2020-08-09
 */
public class WxDiscoverComment extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 评论id */
    private Long commentId;

    /** 动态id */
    @Excel(name = "动态id")
    private Long contentId;

    /** 评论人id */
    @Excel(name = "评论人id")
    private String commentUserOpenid;

    /** 评论文本内容 */
    @Excel(name = "评论文本内容")
    private String commentText;

    /** null */
    @Excel(name = "null")
    private String comment1;

    /** null */
    @Excel(name = "null")
    private String comment2;

    /** null */
    @Excel(name = "null")
    private String comment3;

    public void setCommentId(Long commentId) 
    {
        this.commentId = commentId;
    }

    public Long getCommentId() 
    {
        return commentId;
    }
    public void setContentId(Long contentId) 
    {
        this.contentId = contentId;
    }

    public Long getContentId() 
    {
        return contentId;
    }
    public void setCommentUserOpenid(String commentUserOpenid) 
    {
        this.commentUserOpenid = commentUserOpenid;
    }

    public String getCommentUserOpenid() 
    {
        return commentUserOpenid;
    }
    public void setCommentText(String commentText) 
    {
        this.commentText = commentText;
    }

    public String getCommentText() 
    {
        return commentText;
    }
    public void setComment1(String comment1) 
    {
        this.comment1 = comment1;
    }

    public String getComment1() 
    {
        return comment1;
    }
    public void setComment2(String comment2) 
    {
        this.comment2 = comment2;
    }

    public String getComment2() 
    {
        return comment2;
    }
    public void setComment3(String comment3) 
    {
        this.comment3 = comment3;
    }

    public String getComment3() 
    {
        return comment3;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("commentId", getCommentId())
            .append("contentId", getContentId())
            .append("commentUserOpenid", getCommentUserOpenid())
            .append("commentText", getCommentText())
            .append("createTime", getCreateTime())
            .append("comment1", getComment1())
            .append("comment2", getComment2())
            .append("comment3", getComment3())
            .toString();
    }
}
