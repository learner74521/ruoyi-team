package com.ruoyi.wechatapi.myhome.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 用户身份认证对象 wx_myhome_authentication
 * 
 * @author ruoyi
 * @date 2020-09-07
 */
public class WxMyhomeAuthentication extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 认证id */
    private Long authenticationId;

    /** 认证类型（0身份证认证，1学生认证） */
    @Excel(name = "认证类型", readConverterExp = "0=身份证认证，1学生认证")
    private Integer authenticationType;

    /** 用户唯一标识 */
    @Excel(name = "用户唯一标识")
    private String authenticationUserOpenid;

    /** 认证证件 */
    @Excel(name = "认证证件")
    private String authenticationPhoto;

    /** 自拍照 */
    @Excel(name = "自拍照")
    private String authenticationSelfie;

    /** 审核 */
    @Excel(name = "审核 ", readConverterExp = "0=审核通过，1审核未通过，2审核中")
    private String authenticationPass;

    public void setAuthenticationId(Long authenticationId) 
    {
        this.authenticationId = authenticationId;
    }

    public Long getAuthenticationId() 
    {
        return authenticationId;
    }
    public void setAuthenticationType(Integer authenticationType) 
    {
        this.authenticationType = authenticationType;
    }

    public Integer getAuthenticationType() 
    {
        return authenticationType;
    }
    public void setAuthenticationUserOpenid(String authenticationUserOpenid) 
    {
        this.authenticationUserOpenid = authenticationUserOpenid;
    }

    public String getAuthenticationUserOpenid() 
    {
        return authenticationUserOpenid;
    }
    public void setAuthenticationPhoto(String authenticationPhoto) 
    {
        this.authenticationPhoto = authenticationPhoto;
    }

    public String getAuthenticationPhoto() 
    {
        return authenticationPhoto;
    }
    public void setAuthenticationSelfie(String authenticationSelfie) 
    {
        this.authenticationSelfie = authenticationSelfie;
    }

    public String getAuthenticationSelfie() 
    {
        return authenticationSelfie;
    }    public String getAuthenticationPass() {
    return authenticationPass;
}

    public void setAuthenticationPass(String authenticationPass) {
        this.authenticationPass = authenticationPass;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("authenticationId", getAuthenticationId())
            .append("authenticationType", getAuthenticationType())
            .append("authenticationUserOpenid", getAuthenticationUserOpenid())
            .append("authenticationPhoto", getAuthenticationPhoto())
            .append("authenticationSelfie", getAuthenticationSelfie())
            .append("authenticationPass", getAuthenticationPass())
            .toString();
    }


}
