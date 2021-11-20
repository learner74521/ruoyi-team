package com.ruoyi.wechatapi.discover.service;

import java.util.List;
import com.ruoyi.wechatapi.discover.domain.WxDiscoverGood;

/**
 * 点赞Service接口
 * 
 * @author ruoyi
 * @date 2020-08-09
 */
public interface IWxDiscoverGoodService 
{
    /**
     * 查询点赞
     * 
     * @param goodId 点赞ID
     * @return 点赞
     */
    public List<WxDiscoverGood> selectWxDiscoverGoodById(Long goodId);

    /**
     * 查询点赞列表
     * 
     * @param wxDiscoverGood 点赞
     * @return 点赞集合
     */
    public List<WxDiscoverGood> selectWxDiscoverGoodList(WxDiscoverGood wxDiscoverGood);

    /**
     * 新增点赞
     * 
     * @param wxDiscoverGood 点赞
     * @return 结果
     */
    public int insertWxDiscoverGood(WxDiscoverGood wxDiscoverGood);

    /**
     * 修改点赞
     * 
     * @param wxDiscoverGood 点赞
     * @return 结果
     */
    public int updateWxDiscoverGood(WxDiscoverGood wxDiscoverGood);

    /**
     * 批量删除点赞
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteWxDiscoverGoodByIds(String ids);

    /**
     * 删除点赞信息
     * 
     * @param goodId 点赞ID
     * @return 结果
     */
    public int deleteWxDiscoverGoodById(Long goodId);
}
