package com.ruoyi.wechatapi.wxchat.domain;

import com.ruoyi.common.annotation.Excel;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

public class WxChatUserInfo {

    /** 创建人昵称 */
    @Excel(name = "创建人昵称")
    private String creatorName;

    /** 创建人头像 */
    @Excel(name = "创建人头像")
    private String creatorAvatar;


    public String getCreatorName() {
        return creatorName;
    }

    public void setCreatorName(String creatorName) {
        this.creatorName = creatorName;
    }

    public String getCreatorAvatar() {
        return creatorAvatar;
    }

    public void setCreatorAvatar(String creatorAvatar) {
        this.creatorAvatar = creatorAvatar;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
                .append("creatorName",getCreatorName())
                .append("creatorAvatar",getCreatorAvatar())
                .toString();
    }
}
