package com.ruoyi.wechatapi.discover.service.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import com.alibaba.fastjson.JSON;
import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.wechatapi.discover.domain.*;
import com.ruoyi.wechatapi.discover.mapper.WxDiscoverCareMapper;
import com.ruoyi.wechatapi.discover.mapper.WxDiscoverStatisticsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.wechatapi.discover.mapper.WxDiscoverContentMapper;
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

    @Autowired
    private WxDiscoverStatisticsMapper wxDiscoverStatisticsMapper;

    @Autowired
    private WxDiscoverCareMapper wxDiscoverCareMapper;

    private List<WxDiscoverArrayContent> resultList(Integer pageTotal,String userOpenid,List<WxDiscoverContent> wxDiscoverContentList){
        List<WxDiscoverArrayContent> wxDiscoverArrayContentList = new ArrayList<>();
        for (WxDiscoverContent array:wxDiscoverContentList) {
            WxDiscoverArrayContent wxDiscoverArrayContent= JSON.parseObject(JSON.toJSONString(array),WxDiscoverArrayContent.class);
            wxDiscoverArrayContent.setContentImages(JSON.parseArray(array.getContentImages()));
            wxDiscoverArrayContent.setPageTotal(pageTotal);
            wxDiscoverArrayContentList.add(wxDiscoverArrayContent);
            for (WxDiscoverGood item:wxDiscoverArrayContent.getWxDiscoverGood()) {
                if (item.getGoodUserOpenid()!=""&&item.getGoodUserOpenid()!=null){
                    if (item.getGoodUserOpenid().equals(userOpenid) && item.getStatus() == 1){
                        wxDiscoverArrayContent.setStatus(true);
                        break;
                    }
                }
            }
        }
        return wxDiscoverArrayContentList;
    }

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
    public List<WxDiscoverArrayContent> selectWxDiscoverContentList(WxDiscoverContent wxDiscoverContent)
    {
        String userOpenid=wxDiscoverContent.getContentUserOpenid();
        List<WxDiscoverContent> wxDiscoverContentList = wxDiscoverContentMapper.selectWxDiscoverContentList(wxDiscoverContent);
        Integer pageTotal=wxDiscoverContentMapper.selectWxDiscoverContentPage(wxDiscoverContent);
        return  this.resultList(pageTotal,userOpenid,wxDiscoverContentList);
    }

    /**
     * 查询发现区域的动态内容列表
     *
     * @param  wxDiscoverContent 发现区域的动态内容
     * @return 发现区域的动态内容集合
     */
    public List<WxDiscoverArrayContent> selectWxDiscoverContentListByOpenid(WxDiscoverContent wxDiscoverContent)
    {
        String userOpenid=wxDiscoverContent.getContentUserOpenid();
        String[] wxDiscoverCareList=wxDiscoverCareMapper.selectWxDiscoverCareList(userOpenid);
        if (wxDiscoverCareList.length==0){
            return Collections.emptyList();
        }
        List<WxDiscoverContent> wxDiscoverContentList = wxDiscoverContentMapper.selectWxDiscoverContentListByOpenid(wxDiscoverCareList);
        Integer pageTotal=wxDiscoverContentMapper.selectWxDiscoverContentPageByOpenid(wxDiscoverCareList);
        return  this.resultList(pageTotal,userOpenid,wxDiscoverContentList);
    }

    /**
     * 新增发现区域的动态内容
     * 
     * @param wxDiscoverContent 发现区域的动态内容
     * @return 结果
     */
    @Override
    public int
    insertWxDiscoverContent(WxDiscoverContent wxDiscoverContent)
    {
        wxDiscoverContent.setCreateTime(DateUtils.getNowDate());
        int result=wxDiscoverContentMapper.insertWxDiscoverContent(wxDiscoverContent);
        WxDiscoverStatistics wxDiscoverStatistics=new WxDiscoverStatistics();
        wxDiscoverStatistics.setContentId(wxDiscoverContent.getContentId());
        wxDiscoverStatisticsMapper.insertWxDiscoverStatistics(wxDiscoverStatistics);
        return result;
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
