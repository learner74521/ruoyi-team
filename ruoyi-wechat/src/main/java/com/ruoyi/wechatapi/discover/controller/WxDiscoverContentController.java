package com.ruoyi.wechatapi.discover.controller;

import java.util.ArrayList;
import java.util.List;

import com.alibaba.fastjson.JSON;
import com.ruoyi.wechatapi.discover.domain.WxDiscoverArrayContent;
import com.ruoyi.wechatapi.discover.domain.WxDiscoverGood;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.wechatapi.discover.domain.WxDiscoverContent;
import com.ruoyi.wechatapi.discover.service.IWxDiscoverContentService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 发现区域的动态内容Controller
 * 
 * @author ruoyi
 * @date 2020-08-09
 */
@Controller
@RequestMapping("/wechatapi/content")
public class WxDiscoverContentController extends BaseController
{

    @Autowired
    private IWxDiscoverContentService wxDiscoverContentService;


    /**
     * 查询发现区域的动态内容列表
     */
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(@RequestBody WxDiscoverContent wxDiscoverContent)
    {
        startPage();
        String userOpenid=wxDiscoverContent.getContentUserOpenid();
        List<WxDiscoverContent> wxDiscoverContentList = wxDiscoverContentService.selectWxDiscoverContentList(wxDiscoverContent);
        List<WxDiscoverArrayContent> wxDiscoverArrayContentList=new ArrayList<>();
        for (WxDiscoverContent array:wxDiscoverContentList) {
            WxDiscoverArrayContent wxDiscoverArrayContent=JSON.parseObject(JSON.toJSONString(array),WxDiscoverArrayContent.class);
            wxDiscoverArrayContent.setContentImages(JSON.parseArray(array.getContentImages()));
            wxDiscoverArrayContentList.add(wxDiscoverArrayContent);
            for (WxDiscoverGood item:wxDiscoverArrayContent.getWxDiscoverGood()) {
                if (item.getGoodUserOpenid()!=""&&item.getGoodUserOpenid()!=null){
                    if (item.getGoodUserOpenid().equals(userOpenid) && item.getStatus() == 1){
                        wxDiscoverArrayContent.setStatus(true);
                        break;
                    }
                }
            }
        }
        return getDataTable(wxDiscoverArrayContentList);
    }


    /**
     * 新增保存发现区域的动态内容
     */
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(@RequestBody WxDiscoverContent wxDiscoverContent)
    {
        return toAjax(wxDiscoverContentService.insertWxDiscoverContent(wxDiscoverContent));
    }

    /**
     * 修改保存发现区域的动态内容
     */
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(@RequestBody WxDiscoverContent wxDiscoverContent)
    {
        return toAjax(wxDiscoverContentService.updateWxDiscoverContent(wxDiscoverContent));
    }

    /**
     * 删除发现区域的动态内容
     */
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(@RequestBody String ids)
    {
        return toAjax(wxDiscoverContentService.deleteWxDiscoverContentByIds(ids));
    }

    /**
     * 删除发现区域的动态内容
     */
    @PostMapping( "/delete")
    @ResponseBody
    public AjaxResult delete(@RequestBody Long contentId)
    {
        System.out.println(contentId);
        return toAjax(wxDiscoverContentService.deleteWxDiscoverContentById(contentId));
    }
}
