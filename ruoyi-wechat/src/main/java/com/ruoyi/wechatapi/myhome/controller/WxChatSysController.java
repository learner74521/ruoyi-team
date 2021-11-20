package com.ruoyi.wechatapi.myhome.controller;

import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.wechatapi.myhome.domain.WxChatSys;
import com.ruoyi.wechatapi.myhome.service.IWxChatSysService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 系统发布活动Controller
 * 
 * @author ruoyi
 * @date 2020-09-24
 */
@Controller
@RequestMapping("/wechatapi/sys")
public class WxChatSysController extends BaseController
{
    @Autowired
    private IWxChatSysService wxChatSysService;


    /**
     * 查询系统发布活动列表
     */
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(@RequestBody WxChatSys wxChatSys)
    {
        startPage(wxChatSys);
        List<WxChatSys> list = wxChatSysService.selectWxChatSysList(wxChatSys);
        return getDataTable(list);
    }


    /**
     * 新增保存系统发布活动
     */
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(@RequestBody WxChatSys wxChatSys)
    {
        return toAjax(wxChatSysService.insertWxChatSys(wxChatSys));
    }


    /**
     * 修改保存系统发布活动
     */

    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(@RequestBody WxChatSys wxChatSys)
    {
        return toAjax(wxChatSysService.updateWxChatSys(wxChatSys));
    }

    /**
     * 删除系统发布活动
     */
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(@RequestBody String ids)
    {
        return toAjax(wxChatSysService.deleteWxChatSysByIds(ids));
    }
}
