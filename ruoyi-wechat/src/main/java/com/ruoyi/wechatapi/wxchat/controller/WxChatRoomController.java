
package com.ruoyi.wechatapi.wxchat.controller;

import java.util.List;

import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.wechatapi.wxchat.domain.WxchatRoomNews;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.wechatapi.wxchat.domain.WxChatRoom;
import com.ruoyi.wechatapi.wxchat.service.IWxChatRoomService;
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

    @Autowired
    private IWxChatRoomService wxChatRoomService;

    /**
     * 查询聊天室信息
     */
    @PostMapping("/list")
    public TableDataInfo list(@RequestBody WxChatRoom wxChatRoom)
    {
        startPage();
        List<WxChatRoom> list=wxChatRoomService.selectWxChatRoomList(wxChatRoom);
        return getDataTable(list);
    }

    /**
     * 查询聊天室信息
     */
    @PostMapping("/roomList")
    public TableDataInfo roomList(@RequestBody WxChatRoom wxChatRoom)
    {
        startPage();
        List<WxchatRoomNews> list=wxChatRoomService.selectWxChatRoomNewsList(wxChatRoom);
        return getDataTable(list);
    }



    /**
     * 新增保存聊天室信息
     */
    @PostMapping("/add")
    public AjaxResult addSave(@RequestBody WxChatRoom wxChatRoom)
    {
        return toAjax(wxChatRoomService.insertWxChatRoom(wxChatRoom));
    }



    /**
     * 修改保存聊天室信息
     */

    @PostMapping("/edit")
    public AjaxResult editSave(@RequestBody WxChatRoom wxChatRoom)
    {
        return toAjax(wxChatRoomService.updateWxChatRoom(wxChatRoom));
    }

    /**
     * 删除聊天室信息
     */
    @PostMapping( "/remove")
    public AjaxResult remove(@RequestBody Long roomId)
    {
        return toAjax(wxChatRoomService.deleteWxChatRoomById(roomId));
    }
}