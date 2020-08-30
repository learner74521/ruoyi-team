package com.ruoyi.wechatapi.discover.mapper;

import java.util.List;
import com.ruoyi.wechatapi.discover.domain.WxDiscoverGood;

/**
 * 点赞Mapper接口
 * 
 * @author ruoyi
 * @date 2020-08-09
 */
public interface WxDiscoverGoodMapper 
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
     * 删除点赞
     * 
     * @param goodId 点赞ID
     * @return 结果
     */
    public int deleteWxDiscoverGoodById(Long goodId);

    /**
     * 批量删除点赞
     * 
     * @param goodIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteWxDiscoverGoodByIds(String[] goodIds);
}
