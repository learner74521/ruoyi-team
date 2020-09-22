package com.ruoyi.wechatapi.discover.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import com.ruoyi.wechatapi.discover.domain.WxDiscoverCare;
import com.ruoyi.wechatapi.discover.service.IWxDiscoverCareService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;

/**
 * 用户关注Controller
 * 
 * @author ruoyi
 * @date 2020-09-09
 */
@Controller
@RequestMapping("/wechatapi/care")
public class WxDiscoverCareController extends BaseController
{

    @Autowired
    private IWxDiscoverCareService wxDiscoverCareService;

    /**
     * 新增保存用户关注
     */
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(@RequestBody WxDiscoverCare wxDiscoverCare)
    {
        return toAjax(wxDiscoverCareService.insertWxDiscoverCare(wxDiscoverCare));
    }


    /**
     * 修改保存用户关注
     */
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(@RequestBody WxDiscoverCare wxDiscoverCare)
    {
        return toAjax(wxDiscoverCareService.updateWxDiscoverCare(wxDiscoverCare));
    }

    /**
     * 删除用户关注
     */
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(@RequestBody String ids)
    {
        return toAjax(wxDiscoverCareService.deleteWxDiscoverCareByIds(ids));
    }

    /**
     * 删除用户关注
     */
    @PostMapping( "/delete")
    @ResponseBody
    public AjaxResult delete(@RequestBody WxDiscoverCare wxDiscoverCare)
    {
        return toAjax(wxDiscoverCareService.deleteWxDiscoverCareByInfo(wxDiscoverCare));
    }
}
