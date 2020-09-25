package com.ruoyi.wechatapi.myhome.domain;

import java.util.Date;

import com.ruoyi.common.core.domain.PageEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 系统发布活动对象 wx_chat_sys
 * 
 * @author ruoyi
 * @date 2020-09-24
 */
public class WxChatSys extends PageEntity
{
    private static final long serialVersionUID = 1L;

    /** 系统活动id */
    private Long sysId;

    /** 系统活动名 */
    @Excel(name = "系统活动名")
    private String sysName;

    /** 系统活动介绍 */
    @Excel(name = "系统活动介绍")
    private String sysIntroduce;

    /** 系统活动海报 */
    @Excel(name = "系统活动海报")
    private String sysImage;

    /** 活动结束时间 */
    @Excel(name = "活动结束时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date endTime;

    /** 活动是否存在(0是，1否) */
    @Excel(name = "活动是否存在(0是，1否)")
    private Integer sysExist;

    /** null */
    @Excel(name = "null")
    private String sys1;

    /** null */
    @Excel(name = "null")
    private String sys2;

    public void setSysId(Long sysId) 
    {
        this.sysId = sysId;
    }

    public Long getSysId() 
    {
        return sysId;
    }
    public void setSysName(String sysName) 
    {
        this.sysName = sysName;
    }

    public String getSysName() 
    {
        return sysName;
    }
    public void setSysIntroduce(String sysIntroduce) 
    {
        this.sysIntroduce = sysIntroduce;
    }

    public String getSysIntroduce() 
    {
        return sysIntroduce;
    }
    public void setSysImage(String sysImage) 
    {
        this.sysImage = sysImage;
    }

    public String getSysImage() 
    {
        return sysImage;
    }
    public void setEndTime(Date endTime) 
    {
        this.endTime = endTime;
    }

    public Date getEndTime() 
    {
        return endTime;
    }
    public void setSysExist(Integer sysExist) 
    {
        this.sysExist = sysExist;
    }

    public Integer getSysExist() 
    {
        return sysExist;
    }
    public void setSys1(String sys1) 
    {
        this.sys1 = sys1;
    }

    public String getSys1() 
    {
        return sys1;
    }
    public void setSys2(String sys2) 
    {
        this.sys2 = sys2;
    }

    public String getSys2() 
    {
        return sys2;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("sysId", getSysId())
            .append("sysName", getSysName())
            .append("sysIntroduce", getSysIntroduce())
            .append("sysImage", getSysImage())
            .append("createTime", getCreateTime())
            .append("endTime", getEndTime())
            .append("sysExist", getSysExist())
            .append("sys1", getSys1())
            .append("sys2", getSys2())
            .toString();
    }
}
