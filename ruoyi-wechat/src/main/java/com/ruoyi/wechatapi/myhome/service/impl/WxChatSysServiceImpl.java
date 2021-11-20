package com.ruoyi.wechatapi.myhome.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.wechatapi.myhome.mapper.WxChatSysMapper;
import com.ruoyi.wechatapi.myhome.domain.WxChatSys;
import com.ruoyi.wechatapi.myhome.service.IWxChatSysService;
import com.ruoyi.common.core.text.Convert;

/**
 * 系统发布活动Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-09-24
 */
@Service
public class WxChatSysServiceImpl implements IWxChatSysService 
{
    @Autowired
    private WxChatSysMapper wxChatSysMapper;

    /**
     * 查询系统发布活动
     * 
     * @param sysId 系统发布活动ID
     * @return 系统发布活动
     */
    @Override
    public WxChatSys selectWxChatSysById(Long sysId)
    {
        return wxChatSysMapper.selectWxChatSysById(sysId);
    }

    /**
     * 查询系统发布活动列表
     * 
     * @param wxChatSys 系统发布活动
     * @return 系统发布活动
     */
    @Override
    public List<WxChatSys> selectWxChatSysList(WxChatSys wxChatSys)
    {
        return wxChatSysMapper.selectWxChatSysList(wxChatSys);
    }

    /**
     * 新增系统发布活动
     * 
     * @param wxChatSys 系统发布活动
     * @return 结果
     */
    @Override
    public int insertWxChatSys(WxChatSys wxChatSys)
    {
        wxChatSys.setCreateTime(DateUtils.getNowDate());
        return wxChatSysMapper.insertWxChatSys(wxChatSys);
    }

    /**
     * 修改系统发布活动
     * 
     * @param wxChatSys 系统发布活动
     * @return 结果
     */
    @Override
    public int updateWxChatSys(WxChatSys wxChatSys)
    {
        return wxChatSysMapper.updateWxChatSys(wxChatSys);
    }

    /**
     * 删除系统发布活动对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteWxChatSysByIds(String ids)
    {
        return wxChatSysMapper.deleteWxChatSysByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除系统发布活动信息
     * 
     * @param sysId 系统发布活动ID
     * @return 结果
     */
    @Override
    public int deleteWxChatSysById(Long sysId)
    {
        return wxChatSysMapper.deleteWxChatSysById(sysId);
    }
}
