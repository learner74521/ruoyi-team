package com.ruoyi.wechatapi.myhome.controller;

import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.wechatapi.myhome.domain.WxMyhomeFeedback;
import com.ruoyi.wechatapi.myhome.service.IWxMyhomeFeedbackService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 用户反馈bugController
 * 
 * @author ruoyi
 * @date 2020-09-09
 */
@Controller
@RequestMapping("/wechatapi/feedback")
public class WxMyhomeFeedbackController extends BaseController
{

    @Autowired
    private IWxMyhomeFeedbackService wxMyhomeFeedbackService;

    /**
     * 查询用户反馈bug列表
     */
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(@RequestBody WxMyhomeFeedback wxMyhomeFeedback)
    {
        startPage();
        List<WxMyhomeFeedback> list = wxMyhomeFeedbackService.selectWxMyhomeFeedbackList(wxMyhomeFeedback);
        return getDataTable(list);
    }

    /**
     * 新增保存用户反馈bug
     */
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(@RequestBody WxMyhomeFeedback wxMyhomeFeedback)
    {
        return toAjax(wxMyhomeFeedbackService.insertWxMyhomeFeedback(wxMyhomeFeedback));
    }


    /**
     * 删除用户反馈bug
     */
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(@RequestBody String ids)
    {
        return toAjax(wxMyhomeFeedbackService.deleteWxMyhomeFeedbackByIds(ids));
    }
}
