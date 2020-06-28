package com.ruoyi.websocket.service;

import java.util.List;
import com.ruoyi.websocket.domain.WebSocketMessage;

/**
 * 聊天室聊天内容Service接口
 * 
 * @author ruoyi
 * @date 2020-06-20
 */
public interface IWebSocketService 
{

    /**
     * 查询聊天室聊天内容
     * 
     * @param roomId 聊天室聊天内容ID
     * @return 聊天室聊天内容
     */
    public List<WebSocketMessage> selectWebSocketByRoomId(Long roomId);

    /**
     * 查询聊天室聊天内容列表
     * 
     * @param webSocketMessage 聊天室聊天内容
     * @return 聊天室聊天内容集合
     */
    public List<WebSocketMessage> selectWebSocketList(WebSocketMessage webSocketMessage);

    /**
     * 新增聊天室聊天内容
     * 
     * @param webSocketMessage 聊天室聊天内容
     * @return 结果
     */
    public int insertWebSocket(WebSocketMessage webSocketMessage);

    /**
     * 修改聊天室聊天内容
     * 
     * @param webSocketMessage 聊天室聊天内容
     * @return 结果
     */
    public int updateWebSocket(WebSocketMessage webSocketMessage);

    /**
     * 批量删除聊天室聊天内容
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteWebSocketByIds(String ids);

    /**
     * 删除聊天室聊天内容信息
     * 
     * @param newsId 聊天室聊天内容ID
     * @return 结果
     */
    public int deleteWebSocketById(Long newsId);
}
