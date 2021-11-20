package com.ruoyi.wechatapi.wxchat.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import com.ruoyi.wechatapi.wxchat.domain.InterestUser;
import com.ruoyi.wechatapi.wxchat.service.IInterestUserService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 用户兴趣爱好Controller
 * 
 * @author ruoyi
 * @date 2020-09-04
 */
@Controller
@RequestMapping("/wechatapi/interest")
public class InterestUserController extends BaseController
{


    @Autowired
    private IInterestUserService interestUserService;


    /**
     * 查询用户兴趣爱好列表
     */
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(@RequestBody InterestUser interestUser)
    {
        startPage();
        List<InterestUser> list = interestUserService.selectInterestUserList(interestUser);
        return getDataTable(list);
    }


    /**
     * 新增保存用户兴趣爱好
     */
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(@RequestBody InterestUser interestUser)
    {
        return toAjax(interestUserService.insertInterestUser(interestUser));
    }

    /**
     * 修改保存用户兴趣爱好
     */
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(@RequestBody InterestUser interestUser)
    {
        return toAjax(interestUserService.updateInterestUser(interestUser));
    }

    /**
     * 删除用户兴趣爱好
     */
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(@RequestBody String ids)
    {
        return toAjax(interestUserService.deleteInterestUserByIds(ids));
    }
}
