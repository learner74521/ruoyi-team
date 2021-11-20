package com.ruoyi.wechatapi.discover.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 用户关注对象 wx_discover_care
 * 
 * @author ruoyi
 * @date 2020-09-09
 */
public class WxDiscoverCare extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 关注id */
    private Long careId;

    /** 创建人 */
    @Excel(name = "创建人")
    private String createOpenid;

    /** 关注人 */
    @Excel(name = "关注人")
    private String careOpenid;

    public void setCareId(Long careId) 
    {
        this.careId = careId;
    }

    public Long getCareId() 
    {
        return careId;
    }
    public void setCreateOpenid(String createOpenid) 
    {
        this.createOpenid = createOpenid;
    }

    public String getCreateOpenid() 
    {
        return createOpenid;
    }
    public void setCareOpenid(String careOpenid) 
    {
        this.careOpenid = careOpenid;
    }

    public String getCareOpenid() 
    {
        return careOpenid;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("careId", getCareId())
            .append("createOpenid", getCreateOpenid())
            .append("careOpenid", getCareOpenid())
            .toString();
    }
}
