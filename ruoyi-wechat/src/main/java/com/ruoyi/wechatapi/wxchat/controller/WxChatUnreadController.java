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
     * 查询用户兴趣爱好列表
     */
    @PostMapping("/sum")
    @ResponseBody
    public int UnreadSum(@RequestBody WxChatUnread wxChatUnread)
    {
        List<WxChatUnread> list = wxChatUnreadService.selectWxChatUnreadList(wxChatUnread);
        int result=0;
        for (WxChatUnread item:list) {
            result = result+item.getUnreadNumber();
        }
        return result;
    }

    /**
     * 查询聊天室未读信息列表
     */
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(@RequestBody WxChatUnread wxChatUnread)
    {
        startPage();
        List<WxChatUnread> list = wxChatUnreadService.selectWxChatUnreadList(wxChatUnread);
        return getDataTable(list);
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
