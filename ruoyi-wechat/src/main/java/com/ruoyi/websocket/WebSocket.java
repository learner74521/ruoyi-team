package com.ruoyi.websocket;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;


import com.ruoyi.websocket.config.HttpSessionConfigurator;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpSession;
import javax.websocket.*;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/**

 * @author hjy18

 */

@Component

@ServerEndpoint(value = "/wechatapi/{wxOpenid}",configurator= HttpSessionConfigurator.class)

public class WebSocket {

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

     * 用户昵称

     */

    private String username;

//    @Autowired
//    private WebSocketMessageImpl webSocketHandler;

    /**

     * 建立连接

     *

     * @param session

     */

    @OnOpen

    public void onOpen(@PathParam("wxOpenid") String username, Session session){

        String name=username;


        try {

            name = new String(username.getBytes("ISO-8859-1"),"utf-8");

        } catch (UnsupportedEncodingException e) {

            e.printStackTrace();

        }

        synchronized (this){

            onlineNumber++;

        }

        System.out.println("现在来连接的客户id："+session.getId()+"用户名："+name);

        this.username= name;

        this.session= session;

        System.out.println("有新连接加入！ 当前在线人数" + onlineNumber);

        try {

            //messageType 1代表上线 2代表下线 3代表在线名单 4代表普通消息
            //先给所有人发送通知，说我上线了

            Map<String,Object> map1 = new HashMap<>(16);

            map1.put("messageType",1);

            map1.put("username",name);

            sendMessageAll(JSON.toJSONString(map1),name);

            //把自己的信息加入到map当中去

            clients.put(name, this);

            //给自己发一条消息：告诉自己现在都有谁在线

            Map<String,Object> map2 = new HashMap<>(16);

            map2.put("messageType",3);

            //移除掉自己

            Set<String> set = clients.keySet();

            map2.put("onlineUsers",set);

            sendMessageTo(JSON.toJSONString(map2),name);

        }

        catch (IOException e){

            logger.error(name+"上线的时候通知所有人发生了错误");

        }

    }

    @OnError

    public void onError(Session session, Throwable error) {

        logger.error("服务端发生了错误"+error.getMessage());

        //error.printStackTrace();

    }

    /**

     * 连接关闭

     */

    @OnClose

    public void onClose(){

        synchronized (this){

            onlineNumber--;

        }

        clients.remove(username);

        try {

            //messageType 1代表上线 2代表下线 3代表在线名单 4代表普通消息

            Map<String,Object> map1 = new HashMap<>(16);

            map1.put("messageType",2);

            map1.put("onlineUsers",clients.keySet());

            map1.put("username",username);

            sendMessageAll(JSON.toJSONString(map1),username);

        }

        catch (IOException e){

            System.out.println(username+"下线的时候通知所有人发生了错误");

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


            JSONObject jsonObject = JSON.parseObject(message);

            String textMessage = jsonObject.getString("message");

            String fromusername = jsonObject.getString("username");

            String tousername = jsonObject.getString("to");


            //如果不是发给所有，那么就发给某一个人

            //messageType 1代表上线 2代表下线 3代表在线名单  4代表普通消息

            Map<String,Object> map1 = new HashMap<>(16);

            map1.put("messageType",4);

            map1.put("textMessage",textMessage);

            map1.put("fromusername",fromusername);

            if(tousername.equals("All")){

                map1.put("tousername","所有人");

                sendMessageAll(JSON.toJSONString(map1),fromusername);

            }

            else{

                map1.put("tousername",tousername);

                sendMessageTo(JSON.toJSONString(map1),tousername);

            }

        }

        catch (Exception e){

            System.out.println("发生了错误了");

            e.printStackTrace();

        }

    }

    public void sendMessageTo(String message, String ToUserName) throws IOException {

        for (WebSocket item : clients.values()) {

            if (item.username.equals(ToUserName) ) {

                item.session.getAsyncRemote().sendText(message);

                break;

            }

        }

    }

    public void sendMessageAll(String message, String FromUserName) throws IOException {

        for (WebSocket item : clients.values()) {

            item.session.getAsyncRemote().sendText(message);

        }

    }

    public static synchronized int getOnlineCount() {

        return onlineNumber;

    }

}