package com.ruoyi.wechatapi.myhome.domain;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 签到对象 wx_myhome_sign
 * 
 * @author ruoyi
 * @date 2020-09-04
 */
public class WxMyhomeSign extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 签到id */
    private Long signId;

    /** 签到人唯一标识 */
    @Excel(name = "签到人唯一标识")
    private String signOpenid;

    /** 创建日期 */
    @Excel(name = "创建日期", width = 30, dateFormat = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd")
    private Date createDate;

    /** 签到日号 */
    @Excel(name = "签到日号")
    private String signDay;

    /** null */
    @Excel(name = "null")
    private String sign1;

    /** null */
    @Excel(name = "null")
    private String sign2;

    /** null */
    @Excel(name = "null")
    private String sign3;

    public void setSignId(Long signId) 
    {
        this.signId = signId;
    }

    public Long getSignId() 
    {
        return signId;
    }
    public void setSignOpenid(String signOpenid) 
    {
        this.signOpenid = signOpenid;
    }

    public String getSignOpenid() 
    {
        return signOpenid;
    }
    public void setCreateDate(Date createDate) 
    {
        this.createDate = createDate;
    }

    public Date getCreateDate() 
    {
        return createDate;
    }
    public void setSignDay(String signDay) 
    {
        this.signDay = signDay;
    }

    public String getSignDay() 
    {
        return signDay;
    }
    public void setSign1(String sign1) 
    {
        this.sign1 = sign1;
    }

    public String getSign1() 
    {
        return sign1;
    }
    public void setSign2(String sign2) 
    {
        this.sign2 = sign2;
    }

    public String getSign2() 
    {
        return sign2;
    }
    public void setSign3(String sign3) 
    {
        this.sign3 = sign3;
    }

    public String getSign3() 
    {
        return sign3;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("signId", getSignId())
            .append("signOpenid", getSignOpenid())
            .append("createDate", getCreateDate())
            .append("signDay", getSignDay())
            .append("sign1", getSign1())
            .append("sign2", getSign2())
            .append("sign3", getSign3())
            .toString();
    }
}
