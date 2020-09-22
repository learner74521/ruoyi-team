package com.ruoyi.wechatapi.wxchat.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 用户兴趣爱好对象 interest_user
 * 
 * @author ruoyi
 * @date 2020-09-04
 */
public class InterestUser extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 用户兴趣ID */
    private Long interestUserid;

    /** 微信用户唯一标识 */
    @Excel(name = "微信用户唯一标识")
    private String interestOpenid;

    /** 兴趣ID */
    @Excel(name = "兴趣ID")
    private Long interestId;

    /** 兴趣1 */
    @Excel(name = "兴趣1")
    private String interestGamename;

    /** 模式1 */
    @Excel(name = "模式1")
    private String interestModel;

    /** 兴趣2 */
    @Excel(name = "兴趣2")
    private String interestGamenameNd;

    /** 模式2 */
    @Excel(name = "模式2")
    private String interestModelNd;

    public void setInterestUserid(Long interestUserid) 
    {
        this.interestUserid = interestUserid;
    }

    public Long getInterestUserid() 
    {
        return interestUserid;
    }
    public void setInterestOpenid(String interestOpenid) 
    {
        this.interestOpenid = interestOpenid;
    }

    public String getInterestOpenid() 
    {
        return interestOpenid;
    }
    public void setInterestId(Long interestId) 
    {
        this.interestId = interestId;
    }

    public Long getInterestId() 
    {
        return interestId;
    }
    public void setInterestGamename(String interestGamename) 
    {
        this.interestGamename = interestGamename;
    }

    public String getInterestGamename() 
    {
        return interestGamename;
    }
    public void setInterestModel(String interestModel) 
    {
        this.interestModel = interestModel;
    }

    public String getInterestModel() 
    {
        return interestModel;
    }
    public void setInterestGamenameNd(String interestGamenameNd) 
    {
        this.interestGamenameNd = interestGamenameNd;
    }

    public String getInterestGamenameNd() 
    {
        return interestGamenameNd;
    }
    public void setInterestModelNd(String interestModelNd) 
    {
        this.interestModelNd = interestModelNd;
    }

    public String getInterestModelNd() 
    {
        return interestModelNd;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("interestUserid", getInterestUserid())
            .append("interestOpenid", getInterestOpenid())
            .append("interestId", getInterestId())
            .append("interestGamename", getInterestGamename())
            .append("interestModel", getInterestModel())
            .append("interestGamenameNd", getInterestGamenameNd())
            .append("interestModelNd", getInterestModelNd())
            .toString();
    }
}
