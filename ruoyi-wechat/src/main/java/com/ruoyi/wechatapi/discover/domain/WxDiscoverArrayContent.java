package com.ruoyi.wechatapi.discover.domain;

import com.ruoyi.common.core.domain.PageEntity;
import com.ruoyi.wechatapi.wxchat.domain.WxChatUserInfo;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

import java.util.List;

/**
 * 发现区域的动态内容对象 wx_discover_content
 *
 * @author ruoyi
 * @date 2020-08-09
 */
public class WxDiscoverArrayContent extends PageEntity
{

    private static final long serialVersionUID = 1L;

    /** 动态内容的id */
    private Long contentId;

    /** 动态内容的发表人 */
    @Excel(name = "动态内容的发表人")
    private String contentUserOpenid;

    /** 动态的文本内容 */
    @Excel(name = "动态的文本内容")
    private String contentText;

    /** 动态的视频内容 */
    @Excel(name = "动态的视频内容")
    private String contentVideo;

    /** 动态标签 */
    @Excel(name = "动态标签")
    private String contentLabel;

    /** 内容类型 */
    @Excel(name = "内容类型text_image 文字图片，text_video文字视频")
    private String contentType;

    /** 校验点赞状态（1点赞，2取消点赞） */
    @Excel(name = "点赞状态")
    private Boolean status=false;

    /** 动态内容图片数组 */
    @Excel(name = "动态内容图片数组")
    private List contentImages;


    /** 所在城市 */
    @Excel(name = "所在城市")
    private String contentCity;

    /** 地理位置 */
    @Excel(name = "地理位置")
    private String contentPosition;

    /** 返回条数 */
    private Integer pageTotal;

    /** 统计表 */
    @Excel(name = "统计表")
    private WxDiscoverStatistics wxDiscoverStatistics;

    /** 点赞表 */
    @Excel(name = "点赞表")
    private List<WxDiscoverGood> wxDiscoverGood;

    /** 创建人信息 */
    @Excel(name = "创建人信息")
    private WxChatUserInfo wxChatUserInfo;


    public void setContentId(Long contentId)
    {
        this.contentId = contentId;
    }

    public Long getContentId()
    {
        return contentId;
    }
    public void setContentUserOpenid(String contentUserOpenid)
    {
        this.contentUserOpenid = contentUserOpenid;
    }

    public String getContentUserOpenid()
    {
        return contentUserOpenid;
    }
    public void setContentText(String contentText)
    {
        this.contentText = contentText;
    }

    public String getContentText()
    {
        return contentText;
    }

    public void setContentVideo(String contentVideo)
    {
        this.contentVideo = contentVideo;
    }

    public String getContentVideo()
    {
        return contentVideo;
    }
    public void setContentLabel(String contentLabel)
    {
        this.contentLabel = contentLabel;
    }

    public String getContentLabel()
    {
        return contentLabel;
    }
    public void setContentType(String contentType)
    {
        this.contentType = contentType;
    }

    public String getContentType()
    {
        return contentType;
    }
    public String getContentCity() {
        return contentCity;
    }

    public void setContentCity(String contentCity) {
        this.contentCity = contentCity;
    }

    public String getContentPosition() {
        return contentPosition;
    }

    public void setContentPosition(String contentPosition) {
        this.contentPosition = contentPosition;
    }
    public WxChatUserInfo getWxChatUserInfo() {
        return wxChatUserInfo;
    }

    public void setWxChatUserInfo(WxChatUserInfo wxChatUserInfo) {
        this.wxChatUserInfo = wxChatUserInfo;
    }
    public WxDiscoverStatistics getWxDiscoverStatistics() {
        return wxDiscoverStatistics;
    }

    public void setWxDiscoverStatistics(WxDiscoverStatistics wxDiscoverStatistics) {
        this.wxDiscoverStatistics = wxDiscoverStatistics;
    }
    public List<WxDiscoverGood> getWxDiscoverGood() {
        return wxDiscoverGood;
    }

    public void setWxDiscoverGood(List<WxDiscoverGood> wxDiscoverGood) {
        this.wxDiscoverGood = wxDiscoverGood;
    }
    public Boolean getStatus() {
        return status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }
    public Integer getPageTotal() {
        return pageTotal;
    }

    public void setPageTotal(Integer pageTotal) {
        this.pageTotal = pageTotal;
    }
    public List getContentImages() {
        return contentImages;
    }

    public void setContentImages(List contentImages) {
        this.contentImages = contentImages;
    }
    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("contentId", getContentId())
                .append("contentUserOpenid", getContentUserOpenid())
                .append("contentText", getContentText())
                .append("contentVideo", getContentVideo())
                .append("createTime", getCreateTime())
                .append("contentLabel", getContentLabel())
                .append("contentType", getContentType())
                .append("status", getStatus())
                .append("contentCity",getContentCity())
                .append("pageTotal", getPageTotal())
                .append("contentPosition",getContentPosition())
                .append("WxChatUserInfo", getWxChatUserInfo())
                .append("WxDiscoverStatistics", getWxDiscoverStatistics())
                .append("WxDiscoverGood", getWxDiscoverGood())
                .append("wxDiscoverImage", getContentImages())
                .toString();
    }



}

