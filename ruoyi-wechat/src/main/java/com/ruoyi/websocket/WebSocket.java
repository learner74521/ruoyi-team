package com.ruoyi.websocket;

import com.alibaba.fastjson.JSON;


import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.PageEntity;
import com.ruoyi.websocket.domain.WebSocketMessage;
import com.ruoyi.websocket.service.IWebSocketService;
import com.ruoyi.websocket.utils.ApplicationContextRegister;
import com.ruoyi.wechatapi.wxchat.domain.WxChatUnread;
import com.ruoyi.wechatapi.wxchat.mapper.WxChatUnreadMapper;
import com.ruoyi.wechatapi.wxchat.service.IWxChatUnreadService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Component;

import javax.websocket.*;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/**

 * @author hjy18

 */

@Component

@ServerEndpoint(value = "/wechatapi/{wxOpenid}/{roomid}")

public class WebSocket extends BaseController {

    /**

     * 定义一个全局的记录器，通过LoggerFactory获取

     */

    private final static Logger logger = LoggerFactory.getLogger(WebSocket.class);

    /**

     * 在线人数

     */

    protected static int onlineNumber=0;

    /**

     * 以用户的姓名为key,websocke为对象保存起来

     */

    private static Map<String,WebSocket> clients=new ConcurrentHashMap<>(16);

    /**

     * 会话

     */

    private Session session;

    /**

     * 用户微信标识

     */

    private String wxOpenid;
    /**

     * 聊天室房间号

     */

    private Long roomId;
    private  List<WebSocketMessage> messageList;
    @Autowired
    private IWebSocketService webSocketService;

    @Autowired
    private IWxChatUnreadService wxChatUnreadService;

    /**

     * 建立连接

     *

     * @param session

     */

    @OnOpen

    public void onOpen(@PathParam("wxOpenid") String wxOpenid,@PathParam("roomid") Long roomid, Session session){

        String userOpenid=wxOpenid;
        Long ToRoomId=roomid;

        try {
            userOpenid = new String(wxOpenid.getBytes("ISO-8859-1"),"utf-8");

        } catch (UnsupportedEncodingException e) {

            e.printStackTrace();

        }

        synchronized (this){

            onlineNumber++;

        }
        System.out.println("现在来连接的客户id："+session.getId()+"用户名："+userOpenid);

        this.wxOpenid= userOpenid;
        this.session= session;
        this.roomId= ToRoomId;
        System.out.println("有新连接加入！ 当前在线人数" + onlineNumber);

        try {

            //messageType 1代表上线 2代表下线 3代表在线名单 4代表普通消息
            //先给所有人发送通知，说我上线了

//            Map<String,Object> map1 = new HashMap<>(16);
//            map1.put("messageType",1);
//            map1.put("wxOpenid",userOpenid);
//            map1.put("ToRoomId",ToRoomId);
//            sendMessageTo(JSON.toJSONString(map1),ToRoomId);

            //把自己的信息加入到map当中去
            clients.put(userOpenid, this);

            //websocket 使用service 层
            ApplicationContext act = ApplicationContextRegister.getApplicationContext();
            webSocketService=act.getBean(IWebSocketService.class);
            wxChatUnreadService=act.getBean(IWxChatUnreadService.class);
            //分页请求
//            PageEntity pageEntity=new PageEntity();
//            pageEntity.setPageNum(1);
//            pageEntity.setPageSize(20);
//            startPage(pageEntity);
            messageList= webSocketService.selectWebSocketByRoomId(roomId);


            //给自己发一条消息：告诉自己现在都有谁在线
            Map<String,Object> map2 = new HashMap<>(16);
            map2.put("messageType",3);
            map2.put("newsList",getDataTable(messageList));
            //移除掉自己
            Set<String> set = clients.keySet();
            map2.put("onlineUsers",set);
            sendMessageToMe(JSON.toJSONString(map2),userOpenid);

        }

        catch (IOException e){

            logger.error(userOpenid+"上线的时候通知所有人发生了错误");

        }

    }

    @OnError

    public void onError(Session session, Throwable error) {

        logger.error("服务端发生了错误"+error.getMessage());
        error.printStackTrace();

    }

    /**

     * 连接关闭

     */

    @OnClose

    public void onClose(){

        synchronized (this){

            onlineNumber--;

        }

        clients.remove(wxOpenid);

        try {

            //清空未读消息
            WxChatUnread wxChatUnread=new WxChatUnread();
            wxChatUnread.setRoomId(roomId);
            wxChatUnread.setUserOpenid(wxOpenid);
            System.out.println(wxChatUnread);
            wxChatUnreadService.reduceWxChatUnread(wxChatUnread);
            //messageType 1代表上线 2代表下线 3代表在线名单 4代表普通消息

            Map<String,Object> map1 = new HashMap<>(16);

            map1.put("messageType",2);

            map1.put("onlineUsers",clients.keySet());

            map1.put("wxOpenid",wxOpenid);

            sendMessageToMe(JSON.toJSONString(map1),wxOpenid);

        }

        catch (IOException e){

            System.out.println(wxOpenid+"下线的时候通知所有人发生了错误");

        }

        System.out.println("有连接关闭！ 当前在线人数" + onlineNumber);

    }

    /**

     * 收到客户端的消息

     *

     * @param message 消息

     * @param session 会话

     */

    @OnMessage

    public void onMessage(String message, Session session)

    {

        try {
            System.out.println("来自客户端消息：" + message+"客户端的id是："+session.getId());
            WebSocketMessage webSocketMessage = JSON.parseObject(message,WebSocketMessage.class);
            WxChatUnread wxChatUnread=new WxChatUnread();
            wxChatUnread.setRoomId(roomId);
            wxChatUnread.setUserOpenid(wxOpenid);
            //进入server层

            webSocketService.insertWebSocket(webSocketMessage);
            //通知聊天室人员未读消息数
            wxChatUnreadService.updateWxChatUnread(wxChatUnread);
            messageList.add(webSocketMessage);
            System.out.println(webSocketMessage);
            //如果不是发给所有，那么就发给某一个人
            //messageType 1代表上线 2代表下线 3代表在线名单 4代表普通消息
            Map<String,Object> map1 = new HashMap<>(16);
            map1.put("messageType",4);
            map1.put("newsList",getDataTable(messageList));
            sendMessageTo(JSON.toJSONString(map1),roomId);

//            群发信息
//            if(webSocketMessage.getNewsUserOpenid().equals("All")){
//
//                map1.put("tousername","所有人");
//
//                sendMessageAll(JSON.toJSONString(map1),ToRoomId);
//
//            }

        }

        catch (Exception e){

            System.out.println("发生了错误了");

            e.printStackTrace();

        }

    }
   //发送给同聊天室的用户
    public void sendMessageTo(String message, Long ToRoomId) throws IOException {
        for (WebSocket item : clients.values()) {
            if (item.roomId.equals(ToRoomId)){
                item.session.getAsyncRemote().sendText(message);
            }

        }

    }
    //发送给给自己
    public void sendMessageToMe(String message,String ToUserOpenid) throws IOException {

        for (WebSocket item : clients.values()) {

            if (item.wxOpenid.equals(ToUserOpenid)) {
                item.session.getAsyncRemote().sendText(message);
                break;
            }
        }

    }
//    public void sendMessageAll(String message, Long ToRoomId) throws IOException {
//
//        for (WebSocket item : clients.values()) {
//
//            item.session.getAsyncRemote().sendText(message);
//
//        }
//
//    }

    public static synchronized int getOnlineCount() {

        return onlineNumber;

    }

}