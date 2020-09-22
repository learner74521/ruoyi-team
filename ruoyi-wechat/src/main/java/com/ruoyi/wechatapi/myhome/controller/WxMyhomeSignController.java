package com.ruoyi.wechatapi.myhome.controller;

import java.util.List;

import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import com.ruoyi.wechatapi.myhome.domain.WxMyhomeSign;
import com.ruoyi.wechatapi.myhome.service.IWxMyhomeSignService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 签到Controller
 * 
 * @author ruoyi
 * @date 2020-09-04
 */
@Controller
@RequestMapping("/wechatapi/sign")
public class WxMyhomeSignController extends BaseController
{


    @Autowired
    private IWxMyhomeSignService wxMyhomeSignService;

    /**
     * 查询签到列表
     */
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(@RequestBody WxMyhomeSign wxMyhomeSign)
    {
        startPage();
        List<WxMyhomeSign> list = wxMyhomeSignService.selectWxMyhomeSignList(wxMyhomeSign);
        return getDataTable(list);
    }

    /**
     * 新增保存签到
     */
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(@RequestBody WxMyhomeSign wxMyhomeSign)
    {
        return toAjax(wxMyhomeSignService.insertWxMyhomeSign(wxMyhomeSign));
    }


    /**
     * 修改保存签到
     */
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(@RequestBody WxMyhomeSign wxMyhomeSign)
    {
        return toAjax(wxMyhomeSignService.updateWxMyhomeSign(wxMyhomeSign));
    }

    /**
     * 删除签到
     */
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(@RequestBody String ids)
    {
        return toAjax(wxMyhomeSignService.deleteWxMyhomeSignByIds(ids));
    }
}
