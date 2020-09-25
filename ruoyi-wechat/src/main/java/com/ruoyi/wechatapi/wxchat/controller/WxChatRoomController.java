
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
     * 查询聊天室信息排除已加入
     */
    @PostMapping("/list")
    public TableDataInfo list(@RequestBody WxChatRoom wxChatRoom)
    {
        startPage(wxChatRoom);
        List<WxChatRoom> list=wxChatRoomService.selectWxChatRoomList(wxChatRoom);
        return getDataTable(list);
    }

    /**
     * 查询聊天室信息通过创建人
     */
    @PostMapping("/listByCreator")
    public TableDataInfo userList(@RequestBody WxChatRoom wxChatRoom)
    {
        startPage(wxChatRoom);
        List<WxChatRoom> list=wxChatRoomService.selectWxChatRoomListByCreator(wxChatRoom);
        return getDataTable(list);
    }

    /**
     * 查询聊天室信息通过成员表
     */
    @PostMapping("/listByPeople")
    public TableDataInfo listByPeople(@RequestBody WxChatRoom wxChatRoom)
    {
        startPage(wxChatRoom);
        List<WxChatRoom> list=wxChatRoomService.selectWxChatRoomListByPeople(wxChatRoom);
        return getDataTable(list);
    }

    /**
     * 查询聊天室信息通过搜索
     */
    @PostMapping("/listBySearch")
    public TableDataInfo listBySearch(@RequestBody WxChatRoom wxChatRoom)
    {
        startPage(wxChatRoom);
        List<WxChatRoom> list=wxChatRoomService.selectWxChatRoomListBySearch(wxChatRoom);
        return getDataTable(list);
    }

    /**
     * 查询自己所在聊天室信息
     */
    @PostMapping("/chatRoomList")
    public TableDataInfo chatRoomList(@RequestBody WxChatRoom wxChatRoom)
    {
        startPage(wxChatRoom);
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