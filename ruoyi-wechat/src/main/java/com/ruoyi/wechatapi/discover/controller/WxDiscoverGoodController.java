package com.ruoyi.wechatapi.discover.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.wechatapi.discover.domain.WxDiscoverGood;
import com.ruoyi.wechatapi.discover.service.IWxDiscoverGoodService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 点赞Controller
 * 
 * @author ruoyi
 * @date 2020-08-09
 */
@Controller
@RequestMapping("/wechatapi/good")
public class WxDiscoverGoodController extends BaseController
{
    @Autowired
    private IWxDiscoverGoodService wxDiscoverGoodService;


    /**
     * 查询点赞列表
     */
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(@RequestBody WxDiscoverGood wxDiscoverGood)
    {
        startPage();
        List<WxDiscoverGood> list = wxDiscoverGoodService.selectWxDiscoverGoodList(wxDiscoverGood);
        return getDataTable(list);
    }

    /**
     * 新增保存点赞
     */
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(@RequestBody WxDiscoverGood wxDiscoverGood)
    {
        return toAjax(wxDiscoverGoodService.insertWxDiscoverGood(wxDiscoverGood));
    }


    /**
     * 修改保存点赞
     */
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(@RequestBody WxDiscoverGood wxDiscoverGood)
    {
        return toAjax(wxDiscoverGoodService.updateWxDiscoverGood(wxDiscoverGood));
    }

    /**
     * 删除点赞
     */
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(@RequestBody String ids)
    {
        return toAjax(wxDiscoverGoodService.deleteWxDiscoverGoodByIds(ids));
    }
}
