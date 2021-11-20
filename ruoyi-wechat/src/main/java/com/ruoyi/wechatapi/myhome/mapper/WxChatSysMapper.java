package com.ruoyi.wechatapi.myhome.mapper;

import java.util.List;
import com.ruoyi.wechatapi.myhome.domain.WxChatSys;

/**
 * 系统发布活动Mapper接口
 * 
 * @author ruoyi
 * @date 2020-09-24
 */
public interface WxChatSysMapper 
{
    /**
     * 查询系统发布活动
     * 
     * @param sysId 系统发布活动ID
     * @return 系统发布活动
     */
    public WxChatSys selectWxChatSysById(Long sysId);

    /**
     * 查询系统发布活动列表
     * 
     * @param wxChatSys 系统发布活动
     * @return 系统发布活动集合
     */
    public List<WxChatSys> selectWxChatSysList(WxChatSys wxChatSys);

    /**
     * 新增系统发布活动
     * 
     * @param wxChatSys 系统发布活动
     * @return 结果
     */
    public int insertWxChatSys(WxChatSys wxChatSys);

    /**
     * 修改系统发布活动
     * 
     * @param wxChatSys 系统发布活动
     * @return 结果
     */
    public int updateWxChatSys(WxChatSys wxChatSys);

    /**
     * 删除系统发布活动
     * 
     * @param sysId 系统发布活动ID
     * @return 结果
     */
    public int deleteWxChatSysById(Long sysId);

    /**
     * 批量删除系统发布活动
     * 
     * @param sysIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteWxChatSysByIds(String[] sysIds);
}
