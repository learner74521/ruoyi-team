package com.ruoyi.wechatapi.wxchat.controller;

import java.util.List;

import com.ruoyi.wechatapi.wxchat.domain.InterestUser;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.wechatapi.wxchat.domain.WxChatUnread;
import com.ruoyi.wechatapi.wxchat.service.IWxChatUnreadService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 聊天室未读信息Controller
 * 
 * @author ruoyi
 * @date 2020-09-08
 */
@Controller
@RequestMapping("/wechatapi/unread")
public class WxChatUnreadController extends BaseController
{

    @Autowired
    private IWxChatUnreadService wxChatUnreadService;

    /**
     * 查询聊天室未读信息总数
     */
    @PostMapping("/sum")
    @ResponseBody
    public Integer UnreadSum(@RequestBody WxChatUnread wxChatUnread)
    {
         return wxChatUnreadService.selectWxChatUnreadList(wxChatUnread);
    }


    /**
     * 新增保存聊天室未读信息
     */
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(@RequestBody WxChatUnread wxChatUnread)
    {
        return toAjax(wxChatUnreadService.insertWxChatUnread(wxChatUnread));
    }

    /**
     * 修改保存聊天室未读信息
     */
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(@RequestBody WxChatUnread wxChatUnread)
    {
        return toAjax(wxChatUnreadService.updateWxChatUnread(wxChatUnread));
    }

    /**
     * 删除聊天室未读信息
     */
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(wxChatUnreadService.deleteWxChatUnreadByIds(ids));
    }
}
