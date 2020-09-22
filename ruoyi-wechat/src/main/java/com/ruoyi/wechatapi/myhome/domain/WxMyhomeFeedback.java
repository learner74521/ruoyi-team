package com.ruoyi.wechatapi.myhome.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 用户反馈bug对象 wx_myhome_feedback
 * 
 * @author ruoyi
 * @date 2020-09-09
 */
public class WxMyhomeFeedback extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 反馈id */
    private Long feedbackId;

    /** 用户标识 */
    @Excel(name = "用户标识")
    private String feedbackUserOpenid;

    /** 反馈文本 */
    @Excel(name = "反馈文本")
    private String feedbackText;

    /** 反馈图片 */
    @Excel(name = "反馈图片")
    private String feedbackImages;

    public void setFeedbackId(Long feedbackId) 
    {
        this.feedbackId = feedbackId;
    }

    public Long getFeedbackId() 
    {
        return feedbackId;
    }
    public void setFeedbackUserOpenid(String feedbackUserOpenid) 
    {
        this.feedbackUserOpenid = feedbackUserOpenid;
    }

    public String getFeedbackUserOpenid() 
    {
        return feedbackUserOpenid;
    }
    public void setFeedbackText(String feedbackText) 
    {
        this.feedbackText = feedbackText;
    }

    public String getFeedbackText() 
    {
        return feedbackText;
    }
    public void setFeedbackImages(String feedbackImages) 
    {
        this.feedbackImages = feedbackImages;
    }

    public String getFeedbackImages() 
    {
        return feedbackImages;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("feedbackId", getFeedbackId())
            .append("feedbackUserOpenid", getFeedbackUserOpenid())
            .append("feedbackText", getFeedbackText())
            .append("feedbackImages", getFeedbackImages())
            .toString();
    }
}
