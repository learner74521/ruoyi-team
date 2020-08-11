package com.ruoyi.wechatapi.wxchat.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;
import java.util.Date;

/**
 * 微信用户对象 wx_user
 * 
 * @author ruoyi
 * @date 2020-05-07
 */
public class WxUserApi extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 微信用户标识 */
    @Excel(name = "微信用户标识")
    private String wxOpenid;

    /** 用户昵称 */
    @Excel(name = "用户昵称")
    private String wxName;

    /** 用户头像 */
    @Excel(name = "用户头像")
    private String wxAvatar;

    /** 手机号 */
    @Excel(name = "手机号")
    private String phonenumber;

    /** 性别（0未知，1男，2女） */
    @Excel(name = "性别", readConverterExp = "0=未知，1男，2女")
    private Integer wxSex;

    /** 在线状态on_line在线,off_line离线 */
    @Excel(name = "在线状态on_line在线off_line离线")
    private String status;

    /** 用户权限等级（3正常，2禁用，1严重禁用） */
    @Excel(name = "用户权限等级", readConverterExp = "3=正常，2禁用，1严重禁用")
    private Integer wxLevel;

    /** 身份证认证(0无认证，1已认证) */
    @Excel(name = "用户身份", readConverterExp = "0=无认证，1已认证")
    private Integer wxIdCard;

    /** 学生认证(0无认证，1已认证) */
    @Excel(name = "用户身份", readConverterExp = "0=无认证，1已认证")
    private Integer wxStuCard;

    /** 用户VIP权限 （0=无，1有）*/
    @Excel(name = "用户VIP权限", readConverterExp = "0=无，1有")
    private Integer wxVip;

    /** 最后登录时间 */
    private Date loginTime;

    public void setWxOpenid(String wxOpenid) 
    {
        this.wxOpenid = wxOpenid;
    }

    public String getWxOpenid() 
    {
        return wxOpenid;
    }
    public void setWxName(String wxName) 
    {
        this.wxName = wxName;
    }

    public String getWxName() 
    {
        return wxName;
    }
    public void setWxAvatar(String wxAvatar) 
    {
        this.wxAvatar = wxAvatar;
    }

    public String getWxAvatar() 
    {
        return wxAvatar;
    }
    public void setPhonenumber(String phonenumber) 
    {
        this.phonenumber = phonenumber;
    }

    public String getPhonenumber()
    {
        return phonenumber;
    }
    public void setWxSex(Integer wxSex)
    {
        this.wxSex = wxSex;
    }

    public Integer getWxSex()
    {
        return wxSex;
    }
    public void setStatus(String status) 
    {
        this.status = status;
    }

    public String getStatus() 
    {
        return status;
    }
    public Integer getWxIdCard() {
        return wxIdCard;
    }

    public void setWxIdCard(Integer wxIdCard) {
        this.wxIdCard = wxIdCard;
    }

    public Integer getWxStuCard() {
        return wxStuCard;
    }

    public void setWxStuCard(Integer wxStuCard) {
        this.wxStuCard = wxStuCard;
    }
    public void setWxLevel(Integer wxLevel) 
    {
        this.wxLevel = wxLevel;
    }

    public Integer getWxLevel() 
    {
        return wxLevel;
    }

    public void setLoginTime(Date loginTime) 
    {
        this.loginTime = loginTime;
    }

    public Integer getWxVip() {
        return wxVip;
    }

    public void setWxVip(Integer wxVip) {
        this.wxVip = wxVip;
    }
    public Date getLoginTime() 
    {
        return loginTime;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("wxOpenid", getWxOpenid())
            .append("wxName", getWxName())
            .append("wxAvatar", getWxAvatar())
            .append("phonenumber", getPhonenumber())
            .append("wxSex", getWxSex())
            .append("status", getStatus())
            .append("wxLevel", getWxLevel())
            .append("wxCard", getWxIdCard())
            .append("wxCard", getWxStuCard())
            .append("wxVip", getWxVip())
            .append("createTime", getCreateTime())
            .append("updateTime", getUpdateTime())
            .append("loginTime", getLoginTime())
            .toString();
    }

}
