
package com.ruoyi.wechatapi.controller;

import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.wechatapi.domain.WxChatRoom;
import com.ruoyi.wechatapi.service.IWxChatRoomService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;


/**
 * 聊天室信息Controller
 *
 * @author ruoyi
 * @date 2020-05-27
 */
@RestController
@RequestMapping("/wechatapi/chatRoom")
public class WxChatRoomController extends BaseController
{
    private String prefix = "wechatapi/chatRoom";

    @Autowired
    private IWxChatRoomService wxChatRoomService;

    /**
     * 查询聊天室信息
     */
    @PostMapping("/list")
    public WxChatRoom list(@RequestParam Long roomId)
    {
        System.out.println(roomId);
        WxChatRoom jsonList = wxChatRoomService.selectWxChatRoomById(roomId);
        System.out.println(jsonList);
        return jsonList;
    }

    /**
     * 导出聊天室信息列表
     */
    @RequiresPermissions("wechat:chatRoom:export")
    @Log(title = "聊天室信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public AjaxResult export(WxChatRoom wxChatRoom)
    {
        List<WxChatRoom> list = wxChatRoomService.selectWxChatRoomList(wxChatRoom);
        ExcelUtil<WxChatRoom> util = new ExcelUtil<WxChatRoom>(WxChatRoom.class);
        return util.exportExcel(list, "chatRoom");
    }


    /**
     * 新增保存聊天室信息
     */
    @PostMapping("/add")
    public AjaxResult addSave(WxChatRoom wxChatRoom)
    {
        return toAjax(wxChatRoomService.insertWxChatRoom(wxChatRoom));
    }



    /**
     * 修改保存聊天室信息
     */

    @PostMapping("/edit")
    public AjaxResult editSave(WxChatRoom wxChatRoom)
    {
        return toAjax(wxChatRoomService.updateWxChatRoom(wxChatRoom));
    }

    /**
     * 删除聊天室信息
     */
    @PostMapping( "/remove")
    public AjaxResult remove(Long roomId)
    {
        return toAjax(wxChatRoomService.deleteWxChatRoomById(roomId));
    }
}