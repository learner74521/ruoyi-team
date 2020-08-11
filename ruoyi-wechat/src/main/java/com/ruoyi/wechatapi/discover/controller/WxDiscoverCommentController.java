package com.ruoyi.wechatapi.discover.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.wechatapi.discover.domain.WxDiscoverComment;
import com.ruoyi.wechatapi.discover.service.IWxDiscoverCommentService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 动态评论Controller
 * 
 * @author ruoyi
 * @date 2020-08-09
 */
@Controller
@RequestMapping("/wechatapi/comment")
public class WxDiscoverCommentController extends BaseController
{

    @Autowired
    private IWxDiscoverCommentService wxDiscoverCommentService;


    /**
     * 查询动态评论列表
     */
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(WxDiscoverComment wxDiscoverComment)
    {
        startPage();
        List<WxDiscoverComment> list = wxDiscoverCommentService.selectWxDiscoverCommentList(wxDiscoverComment);
        return getDataTable(list);
    }


    /**
     * 新增保存动态评论
     */
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(WxDiscoverComment wxDiscoverComment)
    {
        return toAjax(wxDiscoverCommentService.insertWxDiscoverComment(wxDiscoverComment));
    }


    /**
     * 修改保存动态评论
     */
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(WxDiscoverComment wxDiscoverComment)
    {
        return toAjax(wxDiscoverCommentService.updateWxDiscoverComment(wxDiscoverComment));
    }

    /**
     * 删除动态评论
     */
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(wxDiscoverCommentService.deleteWxDiscoverCommentByIds(ids));
    }
}
