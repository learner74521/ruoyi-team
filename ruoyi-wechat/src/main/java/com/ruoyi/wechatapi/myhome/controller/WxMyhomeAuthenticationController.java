package com.ruoyi.wechatapi.myhome.controller;

import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.wechatapi.myhome.domain.WxMyhomeAuthentication;
import com.ruoyi.wechatapi.myhome.service.IWxMyhomeAuthenticationService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 用户身份认证Controller
 * 
 * @author ruoyi
 * @date 2020-09-07
 */
@Controller
@RequestMapping("/wechatapi/authentication")
public class WxMyhomeAuthenticationController extends BaseController
{

    @Autowired
    private IWxMyhomeAuthenticationService wxMyhomeAuthenticationService;

    /**
     * 查询用户身份认证列表
     */
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(@RequestBody WxMyhomeAuthentication wxMyhomeAuthentication)
    {
        startPage();
        List<WxMyhomeAuthentication> list = wxMyhomeAuthenticationService.selectWxMyhomeAuthenticationList(wxMyhomeAuthentication);
        return getDataTable(list);
    }

    /**
     * 新增保存用户身份认证
     */
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(@RequestBody WxMyhomeAuthentication wxMyhomeAuthentication)
    {
        return toAjax(wxMyhomeAuthenticationService.insertWxMyhomeAuthentication(wxMyhomeAuthentication));
    }

    /**
     * 修改保存用户身份认证
     */
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(@RequestBody WxMyhomeAuthentication wxMyhomeAuthentication)
    {
        return toAjax(wxMyhomeAuthenticationService.updateWxMyhomeAuthentication(wxMyhomeAuthentication));
    }

    /**
     * 删除用户身份认证
     */
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(@RequestBody String ids)
    {
        return toAjax(wxMyhomeAuthenticationService.deleteWxMyhomeAuthenticationByIds(ids));
    }
}
