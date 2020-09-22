package com.ruoyi.wechatapi.myhome.service;

import java.util.List;
import com.ruoyi.wechatapi.myhome.domain.WxMyhomeSign;

/**
 * 签到Service接口
 * 
 * @author ruoyi
 * @date 2020-09-04
 */
public interface IWxMyhomeSignService 
{
    /**
     * 查询签到
     * 
     * @param signId 签到ID
     * @return 签到
     */
    public WxMyhomeSign selectWxMyhomeSignById(Long signId);

    /**
     * 查询签到列表
     * 
     * @param wxMyhomeSign 签到
     * @return 签到集合
     */
    public List<WxMyhomeSign> selectWxMyhomeSignList(WxMyhomeSign wxMyhomeSign);

    /**
     * 新增签到
     * 
     * @param wxMyhomeSign 签到
     * @return 结果
     */
    public int insertWxMyhomeSign(WxMyhomeSign wxMyhomeSign);

    /**
     * 修改签到
     * 
     * @param wxMyhomeSign 签到
     * @return 结果
     */
    public int updateWxMyhomeSign(WxMyhomeSign wxMyhomeSign);

    /**
     * 批量删除签到
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteWxMyhomeSignByIds(String ids);

    /**
     * 删除签到信息
     * 
     * @param signId 签到ID
     * @return 结果
     */
    public int deleteWxMyhomeSignById(Long signId);
}
