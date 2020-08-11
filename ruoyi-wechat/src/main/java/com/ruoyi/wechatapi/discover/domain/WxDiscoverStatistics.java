package com.ruoyi.wechatapi.discover.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 动态的点赞，评论，浏览量数量统计对象 wx_discover_ statistics
 * 
 * @author ruoyi
 * @date 2020-08-09
 */
public class WxDiscoverStatistics extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 统计id */
    private Long statisticsId;

    /** 动态id */
    @Excel(name = "动态id")
    private Long contentId;

    /** 评论个数 */
    @Excel(name = "评论个数")
    private Long statisticsCommentNum;

    /** 点赞个数 */
    @Excel(name = "点赞个数")
    private Long statisticsGoodNum;

    /** 浏览量 */
    @Excel(name = "浏览量")
    private Long statisticsLookNum;

    /** null */
    @Excel(name = "null")
    private Long statistics1;

    /** null */
    @Excel(name = "null")
    private Long statistics2;

    /** null */
    @Excel(name = "null")
    private Long statistics3;

    public void setStatisticsId(Long statisticsId) 
    {
        this.statisticsId = statisticsId;
    }

    public Long getStatisticsId() 
    {
        return statisticsId;
    }
    public void setContentId(Long contentId) 
    {
        this.contentId = contentId;
    }

    public Long getContentId() 
    {
        return contentId;
    }
    public void setStatisticsCommentNum(Long statisticsCommentNum) 
    {
        this.statisticsCommentNum = statisticsCommentNum;
    }

    public Long getStatisticsCommentNum() 
    {
        return statisticsCommentNum;
    }
    public void setStatisticsGoodNum(Long statisticsGoodNum) 
    {
        this.statisticsGoodNum = statisticsGoodNum;
    }

    public Long getStatisticsGoodNum() 
    {
        return statisticsGoodNum;
    }
    public void setStatisticsLookNum(Long statisticsLookNum) 
    {
        this.statisticsLookNum = statisticsLookNum;
    }

    public Long getStatisticsLookNum() 
    {
        return statisticsLookNum;
    }
    public void setStatistics1(Long statistics1) 
    {
        this.statistics1 = statistics1;
    }

    public Long getStatistics1() 
    {
        return statistics1;
    }
    public void setStatistics2(Long statistics2) 
    {
        this.statistics2 = statistics2;
    }

    public Long getStatistics2() 
    {
        return statistics2;
    }
    public void setStatistics3(Long statistics3) 
    {
        this.statistics3 = statistics3;
    }

    public Long getStatistics3() 
    {
        return statistics3;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("statisticsId", getStatisticsId())
            .append("contentId", getContentId())
            .append("statisticsCommentNum", getStatisticsCommentNum())
            .append("statisticsGoodNum", getStatisticsGoodNum())
            .append("statisticsLookNum", getStatisticsLookNum())
            .append("statistics1", getStatistics1())
            .append("statistics2", getStatistics2())
            .append("statistics3", getStatistics3())
            .toString();
    }
}
