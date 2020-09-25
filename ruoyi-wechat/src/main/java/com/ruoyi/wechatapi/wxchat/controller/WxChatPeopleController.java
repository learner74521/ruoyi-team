package com.ruoyi.wechatapi.wxchat.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.wechatapi.wxchat.domain.WxChatPeople;
import com.ruoyi.wechatapi.wxchat.service.IWxChatPeopleService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 聊天室人员信息Controller
 * 
 * @author ruoyi
 * @date 2020-07-30
 */
@Controller
@RequestMapping("/wechatapi/people")
public class WxChatPeopleController extends BaseController
{

    @Autowired
    private IWxChatPeopleService wxChatPeopleService;

    /**
     * 查询聊天室人员信息列表
     */
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(@RequestBody WxChatPeople wxChatPeople)
    {
        startPage();
        List<WxChatPeople> list = wxChatPeopleService.selectWxChatPeopleList(wxChatPeople);
        return getDataTable(list);
    }



    /**
     * 新增保存聊天室人员信息
     */

    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(@RequestBody WxChatPeople wxChatPeople)
    {
        System.out.println(wxChatPeople);
        return toAjax(wxChatPeopleService.insertWxChatPeople(wxChatPeople));
    }

    /**
     * 修改保存聊天室人员信息
     */
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(@RequestBody WxChatPeople wxChatPeople)
    {
        return toAjax(wxChatPeopleService.updateWxChatPeople(wxChatPeople));
    }

    /**
     * 删除聊天室人员信息
     */
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(@RequestBody String ids)
    {
        return toAjax(wxChatPeopleService.deleteWxChatPeopleByIds(ids));
    }
}
