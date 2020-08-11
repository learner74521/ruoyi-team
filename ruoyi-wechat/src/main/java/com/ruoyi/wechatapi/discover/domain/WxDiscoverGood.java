package com.ruoyi.wechatapi.discover.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 点赞对象 wx_discover_good
 * 
 * @author ruoyi
 * @date 2020-08-09
 */
public class WxDiscoverGood extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 点赞id */
    private Long goodId;

    /** 评论点赞id或作品点赞id */
    @Excel(name = "评论点赞id或作品点赞id")
    private Long goodTypeId;

    /** 点赞类型(1作品点赞，2评论点赞) */
    @Excel(name = "点赞类型(1作品点赞，2评论点赞)")
    private Integer goodType;

    /** 点赞人id */
    @Excel(name = "点赞人id")
    private String goodUserOpenid;

    /** 点赞状态（1点赞，2取消嗲赞） */
    @Excel(name = "点赞状态", readConverterExp = "1=点赞，2取消嗲赞")
    private Integer status;

    /** null */
    @Excel(name = "null")
    private Long good1;

    /** null */
    @Excel(name = "null")
    private Long good2;

    public void setGoodId(Long goodId) 
    {
        this.goodId = goodId;
    }

    public Long getGoodId() 
    {
        return goodId;
    }
    public void setGoodTypeId(Long goodTypeId) 
    {
        this.goodTypeId = goodTypeId;
    }

    public Long getGoodTypeId() 
    {
        return goodTypeId;
    }
    public void setGoodType(Integer goodType) 
    {
        this.goodType = goodType;
    }

    public Integer getGoodType() 
    {
        return goodType;
    }
    public void setGoodUserOpenid(String goodUserOpenid) 
    {
        this.goodUserOpenid = goodUserOpenid;
    }

    public String getGoodUserOpenid() 
    {
        return goodUserOpenid;
    }
    public void setStatus(Integer status) 
    {
        this.status = status;
    }

    public Integer getStatus() 
    {
        return status;
    }
    public void setGood1(Long good1) 
    {
        this.good1 = good1;
    }

    public Long getGood1() 
    {
        return good1;
    }
    public void setGood2(Long good2) 
    {
        this.good2 = good2;
    }

    public Long getGood2() 
    {
        return good2;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("goodId", getGoodId())
            .append("goodTypeId", getGoodTypeId())
            .append("goodType", getGoodType())
            .append("goodUserOpenid", getGoodUserOpenid())
            .append("status", getStatus())
            .append("good1", getGood1())
            .append("good2", getGood2())
            .toString();
    }
}
