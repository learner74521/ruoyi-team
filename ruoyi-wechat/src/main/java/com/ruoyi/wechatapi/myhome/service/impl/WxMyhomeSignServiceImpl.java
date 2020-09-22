package com.ruoyi.wechatapi.myhome.service.impl;

import java.util.List;

import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.wechatapi.myhome.mapper.WxMyhomeSignMapper;
import com.ruoyi.wechatapi.myhome.domain.WxMyhomeSign;
import com.ruoyi.wechatapi.myhome.service.IWxMyhomeSignService;
import com.ruoyi.common.core.text.Convert;

/**
 * 签到Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-09-04
 */
@Service
public class WxMyhomeSignServiceImpl implements IWxMyhomeSignService 
{
    @Autowired
    private WxMyhomeSignMapper wxMyhomeSignMapper;

    /**
     * 查询签到
     * 
     * @param signId 签到ID
     * @return 签到
     */
    @Override
    public WxMyhomeSign selectWxMyhomeSignById(Long signId)
    {
        return wxMyhomeSignMapper.selectWxMyhomeSignById(signId);
    }

    /**
     * 查询签到列表
     * 
     * @param wxMyhomeSign 签到
     * @return 签到
     */
    @Override
    public List<WxMyhomeSign> selectWxMyhomeSignList(WxMyhomeSign wxMyhomeSign)
    {
        return wxMyhomeSignMapper.selectWxMyhomeSignList(wxMyhomeSign);
    }

    /**
     * 新增签到
     * 
     * @param wxMyhomeSign 签到
     * @return 结果
     */
    @Override
    public int insertWxMyhomeSign(WxMyhomeSign wxMyhomeSign)
    {
        wxMyhomeSign.setCreateDate(DateUtils.getNowDate());
        return wxMyhomeSignMapper.insertWxMyhomeSign(wxMyhomeSign);
    }

    /**
     * 修改签到
     * 
     * @param wxMyhomeSign 签到
     * @return 结果
     */
    @Override
    public int updateWxMyhomeSign(WxMyhomeSign wxMyhomeSign)
    {
        return wxMyhomeSignMapper.updateWxMyhomeSign(wxMyhomeSign);
    }

    /**
     * 删除签到对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteWxMyhomeSignByIds(String ids)
    {
        return wxMyhomeSignMapper.deleteWxMyhomeSignByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除签到信息
     * 
     * @param signId 签到ID
     * @return 结果
     */
    @Override
    public int deleteWxMyhomeSignById(Long signId)
    {
        return wxMyhomeSignMapper.deleteWxMyhomeSignById(signId);
    }
}
