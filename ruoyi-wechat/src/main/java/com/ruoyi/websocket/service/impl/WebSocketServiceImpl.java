package com.ruoyi.websocket.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.wechatapi.utils.Base64Coder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.websocket.mapper.WebSocketMapper;
import com.ruoyi.websocket.domain.WebSocketMessage;
import com.ruoyi.websocket.service.IWebSocketService;
import com.ruoyi.common.core.text.Convert;

/**
 * 聊天室聊天内容Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-06-20
 */
@Service
public class WebSocketServiceImpl implements IWebSocketService 
{
    @Autowired
    private WebSocketMapper webSocketMapper;

    private List<WebSocketMessage> WebSocketMessageList;
    private void WebSocketMessageList(List<WebSocketMessage> webSocketMessageList) {

        for (WebSocketMessage item : webSocketMessageList) {
            if (item.getWxChatUserInfo().getCreatorName()!=""&&item.getWxChatUserInfo().getCreatorName()!=null){
                Base64Coder base64Coder=new Base64Coder();
                String decoderText= base64Coder.Base64Decoder(item.getWxChatUserInfo().getCreatorName());
                item.getWxChatUserInfo().setCreatorName(decoderText);
            }
        }
    }

    /**
     * 查询聊天室聊天内容
     * 
     * @param  roomId 聊天室聊天内容ID
     * @return 聊天室聊天内容
     */
    @Override
    public List<WebSocketMessage> selectWebSocketByRoomId(Long roomId)
    {
        WebSocketMessageList = webSocketMapper.selectWebSocketByRoomId(roomId);
        WebSocketMessageList(WebSocketMessageList);
        return WebSocketMessageList;
    }


    /**
     * 查询聊天室聊天内容列表
     * 
     * @param webSocketMessage 聊天室聊天内容
     * @return 聊天室聊天内容
     */
    @Override
    public List<WebSocketMessage> selectWebSocketList(WebSocketMessage webSocketMessage)
    {
        WebSocketMessageList=webSocketMapper.selectWebSocketList(webSocketMessage);
        WebSocketMessageList(WebSocketMessageList);
        return WebSocketMessageList;
    }

    /**
     * 新增聊天室聊天内容
     * 
     * @param webSocketMessage 聊天室聊天内容
     * @return 结果
     */
    @Override
    public int insertWebSocket(WebSocketMessage webSocketMessage)
    {
        webSocketMessage.setCreateTime(DateUtils.getNowDate());
        return webSocketMapper.insertWebSocket(webSocketMessage);
    }

    /**
     * 修改聊天室聊天内容
     * 
     * @param webSocketMessage 聊天室聊天内容
     * @return 结果
     */
    @Override
    public int updateWebSocket(WebSocketMessage webSocketMessage)
    {
        return webSocketMapper.updateWebSocket(webSocketMessage);
    }

    /**
     * 删除聊天室聊天内容对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteWebSocketByIds(String ids)
    {
        return webSocketMapper.deleteWebSocketByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除聊天室聊天内容信息
     * 
     * @param newsId 聊天室聊天内容ID
     * @return 结果
     */
    @Override
    public int deleteWebSocketById(Long newsId)
    {
        return webSocketMapper.deleteWebSocketById(newsId);
    }

}
