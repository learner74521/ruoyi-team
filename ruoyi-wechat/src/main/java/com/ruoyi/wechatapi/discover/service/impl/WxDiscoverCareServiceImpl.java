package com.ruoyi.wechatapi.discover.service.impl;

import java.util.Collections;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.wechatapi.discover.mapper.WxDiscoverCareMapper;
import com.ruoyi.wechatapi.discover.domain.WxDiscoverCare;
import com.ruoyi.wechatapi.discover.service.IWxDiscoverCareService;
import com.ruoyi.common.core.text.Convert;
import org.springframework.web.bind.annotation.RequestBody;

/**
 * 用户关注Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-09-09
 */
@Service
public class WxDiscoverCareServiceImpl implements IWxDiscoverCareService
{
    @Autowired
    private WxDiscoverCareMapper wxDiscoverCareMapper;

    /**
     * 查询用户关注
     * 
     * @param careId 用户关注ID
     * @return 用户关注
     */
    @Override
    public WxDiscoverCare selectWxDiscoverCareById(Long careId)
    {
        return wxDiscoverCareMapper.selectWxDiscoverCareById(careId);
    }

    /**
     * 查询用户关注列表
     * 
     * @param createOpenid 用户关注
     * @return 用户关注
     */
    @Override
    public String[] selectWxDiscoverCareList(String createOpenid)
    {
        return wxDiscoverCareMapper.selectWxDiscoverCareList(createOpenid);
    }


    /**
     * 新增用户关注
     * 
     * @param wxDiscoverCare 用户关注
     * @return 结果
     */
    @Override
    public int insertWxDiscoverCare(WxDiscoverCare wxDiscoverCare)
    {
        String[] wxDiscoverCareList=wxDiscoverCareMapper.selectWxDiscoverCareList(wxDiscoverCare.getCreateOpenid());
        for (String item:wxDiscoverCareList) {
            if (item.equals(wxDiscoverCare.getCareOpenid()))
                return 0;
        }
        return wxDiscoverCareMapper.insertWxDiscoverCare(wxDiscoverCare);
    }

    /**
     * 修改用户关注
     * 
     * @param wxDiscoverCare 用户关注
     * @return 结果
     */
    @Override
    public int updateWxDiscoverCare(WxDiscoverCare wxDiscoverCare)
    {
        return wxDiscoverCareMapper.updateWxDiscoverCare(wxDiscoverCare);
    }

    /**
     * 删除用户关注对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteWxDiscoverCareByIds(String ids)
    {
        return wxDiscoverCareMapper.deleteWxDiscoverCareByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除用户关注信息
     * 
     * @param careId 用户关注ID
     * @return 结果
     */
    @Override
    public int deleteWxDiscoverCareById(Long careId)
    {
        return wxDiscoverCareMapper.deleteWxDiscoverCareById(careId);
    }


    /**
     * 删除用户关注信息
     *
     * @param wxDiscoverCare 用户关注
     * @return 结果
     */
    public int deleteWxDiscoverCareByInfo(@RequestBody WxDiscoverCare wxDiscoverCare){
        return wxDiscoverCareMapper.deleteWxDiscoverCareByInfo(wxDiscoverCare);
    }
}
