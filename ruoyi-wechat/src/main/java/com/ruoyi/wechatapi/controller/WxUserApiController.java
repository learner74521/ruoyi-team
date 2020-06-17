package com.ruoyi.wechatapi.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.wechatapi.domain.WxUserApi;
import com.ruoyi.wechatapi.service.IWxUserApiService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 微信用户Controller
 * 
 * @author ruoyi
 * @date 2020-05-07
 */
@RestController
@RequestMapping("/wechatapi/wxuser")
public class WxUserApiController extends BaseController
{

    @Autowired
    private IWxUserApiService wxUserApiService;

    @PostMapping("/post")
    public WxUserApi wechatapi(@RequestBody WxUserApi wxUserApi) throws UnsupportedEncodingException {
        System.out.println(wxUserApi);
        return wxUserApi;
    }

    /**
     * 查询微信用户列表
     */
    @PostMapping("/list")
    public TableDataInfo list(@RequestBody WxUserApi wxUserApi)
    {
        startPage();
        List<WxUserApi> list = wxUserApiService.selectWxUserApiList(wxUserApi);
        return getDataTable(list);
    }


    /**
     * 新增保存微信用户
     */
    @Log(title = "微信用户", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    public AjaxResult addSave(@RequestBody WxUserApi wxUserApi)
    {

        return toAjax(wxUserApiService.insertWxUserApi(wxUserApi));
    }


    /**
     * 修改保存微信用户
     */
    @Log(title = "微信用户", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    public AjaxResult editSave(@RequestBody WxUserApi wxUserApi)
    {
        return toAjax(wxUserApiService.updateWxUserApi(wxUserApi));
    }

    /**
     * 删除微信用户
     */
    @Log(title = "微信用户", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    public AjaxResult remove(String ids)
    {
        return toAjax(wxUserApiService.deleteWxUserApiByIds(ids));
    }
}
