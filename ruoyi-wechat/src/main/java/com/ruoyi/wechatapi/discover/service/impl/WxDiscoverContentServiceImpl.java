package com.ruoyi.wechatapi.discover.service.impl;

import java.util.List;

import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.wechatapi.discover.mapper.WxDiscoverContentMapper;
import com.ruoyi.wechatapi.discover.domain.WxDiscoverContent;
import com.ruoyi.wechatapi.discover.service.IWxDiscoverContentService;
import com.ruoyi.common.core.text.Convert;

/**
 * 发现区域的动态内容Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-08-09
 */
@Service
public class WxDiscoverContentServiceImpl implements IWxDiscoverContentService 
{
    @Autowired
    private WxDiscoverContentMapper wxDiscoverContentMapper;

    /**
     * 查询发现区域的动态内容
     * 
     * @param contentId 发现区域的动态内容ID
     * @return 发现区域的动态内容
     */
    @Override
    public WxDiscoverContent selectWxDiscoverContentById(Long contentId)
    {
        return wxDiscoverContentMapper.selectWxDiscoverContentById(contentId);
    }

    /**
     * 查询发现区域的动态内容列表
     * 
     * @param wxDiscoverContent 发现区域的动态内容
     * @return 发现区域的动态内容
     */
    @Override
    public List<WxDiscoverContent> selectWxDiscoverContentList(WxDiscoverContent wxDiscoverContent)
    {

        return wxDiscoverContentMapper.selectWxDiscoverContentList(wxDiscoverContent);
    }

    /**
     * 新增发现区域的动态内容
     * 
     * @param wxDiscoverContent 发现区域的动态内容
     * @return 结果
     */
    @Override
    public int insertWxDiscoverContent(WxDiscoverContent wxDiscoverContent)
    {
        wxDiscoverContent.setCreateTime(DateUtils.getNowDate());
        return wxDiscoverContentMapper.insertWxDiscoverContent(wxDiscoverContent);
    }

    /**
     * 修改发现区域的动态内容
     * 
     * @param wxDiscoverContent 发现区域的动态内容
     * @return 结果
     */
    @Override
    public int updateWxDiscoverContent(WxDiscoverContent wxDiscoverContent)
    {
        return wxDiscoverContentMapper.updateWxDiscoverContent(wxDiscoverContent);
    }

    /**
     * 删除发现区域的动态内容对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteWxDiscoverContentByIds(String ids)
    {
        return wxDiscoverContentMapper.deleteWxDiscoverContentByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除发现区域的动态内容信息
     * 
     * @param contentId 发现区域的动态内容ID
     * @return 结果
     */
    @Override
    public int deleteWxDiscoverContentById(Long contentId)
    {
        return wxDiscoverContentMapper.deleteWxDiscoverContentById(contentId);
    }
}
