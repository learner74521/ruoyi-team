package com.ruoyi.wechatapi.discover.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.wechatapi.discover.domain.WxDiscoverReply;
import com.ruoyi.wechatapi.discover.service.IWxDiscoverReplyService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 评论回复Controller
 * 
 * @author ruoyi
 * @date 2020-08-09
 */
@Controller
@RequestMapping("/wechatapi/reply")
public class WxDiscoverReplyController extends BaseController
{

    @Autowired
    private IWxDiscoverReplyService wxDiscoverReplyService;


    /**
     * 查询评论回复列表
     */
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(@RequestBody WxDiscoverReply wxDiscoverReply)
    {
        startPage();
        List<WxDiscoverReply> list = wxDiscoverReplyService.selectWxDiscoverReplyList(wxDiscoverReply);
        return getDataTable(list);
    }


    /**
     * 新增保存评论回复
     */
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(@RequestBody WxDiscoverReply wxDiscoverReply)
    {
        return toAjax(wxDiscoverReplyService.insertWxDiscoverReply(wxDiscoverReply));
    }



    /**
     * 修改保存评论回复
     */
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(@RequestBody WxDiscoverReply wxDiscoverReply)
    {
        return toAjax(wxDiscoverReplyService.updateWxDiscoverReply(wxDiscoverReply));
    }

    /**
     * 删除评论回复
     */
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(@RequestBody String ids)
    {
        return toAjax(wxDiscoverReplyService.deleteWxDiscoverReplyByIds(ids));
    }

    /**
     * 删除评论回复
     */
    @PostMapping( "/delete")
    @ResponseBody
    public AjaxResult delete(@RequestBody Long replyId)
    {
        return toAjax(wxDiscoverReplyService.deleteWxDiscoverReplyById(replyId));
    }
}
