package com.ruoyi.wechatapi.discover.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.wechatapi.discover.mapper.WxDiscoverGoodMapper;
import com.ruoyi.wechatapi.discover.domain.WxDiscoverGood;
import com.ruoyi.wechatapi.discover.service.IWxDiscoverGoodService;
import com.ruoyi.common.core.text.Convert;

/**
 * 点赞Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-08-09
 */
@Service
public class WxDiscoverGoodServiceImpl implements IWxDiscoverGoodService 
{
    @Autowired
    private WxDiscoverGoodMapper wxDiscoverGoodMapper;

    /**
     * 查询点赞
     * 
     * @param goodId 点赞ID
     * @return 点赞
     */
    @Override
    public WxDiscoverGood selectWxDiscoverGoodById(Long goodId)
    {
        return wxDiscoverGoodMapper.selectWxDiscoverGoodById(goodId);
    }

    /**
     * 查询点赞列表
     * 
     * @param wxDiscoverGood 点赞
     * @return 点赞
     */
    @Override
    public List<WxDiscoverGood> selectWxDiscoverGoodList(WxDiscoverGood wxDiscoverGood)
    {
        return wxDiscoverGoodMapper.selectWxDiscoverGoodList(wxDiscoverGood);
    }

    /**
     * 新增点赞
     * 
     * @param wxDiscoverGood 点赞
     * @return 结果
     */
    @Override
    public int insertWxDiscoverGood(WxDiscoverGood wxDiscoverGood)
    {
        return wxDiscoverGoodMapper.insertWxDiscoverGood(wxDiscoverGood);
    }

    /**
     * 修改点赞
     * 
     * @param wxDiscoverGood 点赞
     * @return 结果
     */
    @Override
    public int updateWxDiscoverGood(WxDiscoverGood wxDiscoverGood)
    {
        return wxDiscoverGoodMapper.updateWxDiscoverGood(wxDiscoverGood);
    }

    /**
     * 删除点赞对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteWxDiscoverGoodByIds(String ids)
    {
        return wxDiscoverGoodMapper.deleteWxDiscoverGoodByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除点赞信息
     * 
     * @param goodId 点赞ID
     * @return 结果
     */
    @Override
    public int deleteWxDiscoverGoodById(Long goodId)
    {
        return wxDiscoverGoodMapper.deleteWxDiscoverGoodById(goodId);
    }
}
