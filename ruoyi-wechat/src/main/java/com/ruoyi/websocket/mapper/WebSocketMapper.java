package com.ruoyi.websocket.mapper;

import java.util.List;
import com.ruoyi.websocket.domain.WebSocketMessage;

/**
 * 聊天室聊天内容Mapper接口
 * 
 * @author ruoyi
 * @date 2020-06-20
 */
public interface WebSocketMapper 
{
    /**
     * 查询聊天室聊天内容
     * 
     * @param  roomId  聊天室房间ID
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
     * 删除聊天室聊天内容
     * 
     * @param newsId 聊天室聊天内容ID
     * @return 结果
     */
    public int deleteWebSocketById(Long newsId);

    /**
     * 批量删除聊天室聊天内容
     * 
     * @param newsIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteWebSocketByIds(String[] newsIds);
}
