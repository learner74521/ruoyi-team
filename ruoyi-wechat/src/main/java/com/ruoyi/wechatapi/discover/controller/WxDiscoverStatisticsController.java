package com.ruoyi.wechatapi.discover.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.wechatapi.discover.domain.WxDiscoverStatistics;
import com.ruoyi.wechatapi.discover.service.IWxDiscoverStatisticsService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 动态的点赞，评论，浏览量数量统计Controller
 * 
 * @author ruoyi
 * @date 2020-08-09
 */
@Controller
@RequestMapping("/wechatapi/statistics")
public class WxDiscoverStatisticsController extends BaseController
{

    @Autowired
    private IWxDiscoverStatisticsService wxDiscoverStatisticsService;


    /**
     * 查询动态的点赞，评论，浏览量数量统计列表
     */
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(@RequestBody WxDiscoverStatistics wxDiscoverStatistics)
    {
        startPage();
        List<WxDiscoverStatistics> list = wxDiscoverStatisticsService.selectWxDiscoverStatisticsList(wxDiscoverStatistics);
        return getDataTable(list);
    }


    /**
     * 新增保存动态的点赞，评论，浏览量数量统计
     */
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(@RequestBody WxDiscoverStatistics wxDiscoverStatistics)
    {
        return toAjax(wxDiscoverStatisticsService.insertWxDiscoverStatistics(wxDiscoverStatistics));
    }

    /**
     * 修改保存动态的点赞，评论，浏览量数量统计
     */
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(@RequestBody WxDiscoverStatistics wxDiscoverStatistics)
    {
        return toAjax(wxDiscoverStatisticsService.updateWxDiscoverStatistics(wxDiscoverStatistics));
    }

    /**
     * 增加动态的浏览量数量
     *
     * @param contentId 增加动态的浏览量数量
     * @return 结果
     */
    @PostMapping("/addLook")
    @ResponseBody
    public int AddLook(@RequestBody Long contentId){
        return wxDiscoverStatisticsService.updateAddLookStatistics(contentId);
    }

    /**
     * 删除动态的点赞，评论，浏览量数量统计
     */
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(@RequestBody String ids)
    {
        return toAjax(wxDiscoverStatisticsService.deleteWxDiscoverStatisticsByIds(ids));
    }
}
