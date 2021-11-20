package com.ruoyi.wechatapi.wxchat.service.impl;

import java.util.List;

import com.ruoyi.common.utils.DateUtils;
import org.apache.commons.collections.CollectionUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.wechatapi.wxchat.mapper.WxUserApiMapper;
import com.ruoyi.wechatapi.wxchat.domain.WxUserApi;
import com.ruoyi.wechatapi.wxchat.service.IWxUserApiService;
import com.ruoyi.common.core.text.Convert;

/**
 * 微信用户Service业务层处理
 *
 * @author ruoyi
 * @date 2020-05-07
 */
@Service
public class WxUserApiServiceImpl implements IWxUserApiService {
    @Autowired
    private WxUserApiMapper wxUserApiMapper;

    /**
     * 查询微信用户
     *
     * @param wxOpenid 微信用户ID
     * @return 微信用户
     */
    @Override
    public Integer selectWxUserApiById(String wxOpenid) {
        return wxUserApiMapper.selectWxUserApiById(wxOpenid);
    }

    /**
     * 查询微信用户列表
     *
     * @param wxUserApi 微信用户
     * @return 微信用户
     */
    @Override
    public List<WxUserApi> selectWxUserApiList(WxUserApi wxUserApi) {
        return wxUserApiMapper.selectWxUserApiList(wxUserApi);
    }

    /**
     * 新增微信用户
     *
     * @param wxUserApi 微信用户
     * @return 结果
     */
    @Override
    public int insertWxUserApi(WxUserApi wxUserApi) {
        Integer result=wxUserApiMapper.selectWxUserApiById(wxUserApi.getWxOpenid());
        if (result==null){
            wxUserApi.setCreateTime(DateUtils.getNowDate());
            result=wxUserApiMapper.insertWxUserApi(wxUserApi);
        }
        return result;
    }

    /**
     * 修改微信用户
     *
     * @param wxUserApi 微信用户
     * @return 结果
     */
    @Override
    public int updateWxUserApi(WxUserApi wxUserApi) {
        List<WxUserApi> wxUserApiList=wxUserApiMapper.selectWxUserApiList(wxUserApi);
        if(CollectionUtils.isEmpty(wxUserApiList)){
            this.insertWxUserApi(wxUserApi);
        }else {
            for (WxUserApi item : wxUserApiList) {
                if (!item.getWxAvatar().equals(wxUserApi.getWxAvatar()) || !item.getWxName().equals(wxUserApi.getWxName())) {
                    wxUserApi.setUpdateTime(DateUtils.getNowDate());
                    wxUserApiMapper.updateWxUserApi(wxUserApi);
                }
            }
        }
        return 1;
    }

    /**
     * 修改微信用户上下线
     *
     * @param wxUserApi 微信用户
     * @return 结果
     */
    @Override
    public int updateWxUserOnlineApi(WxUserApi wxUserApi){
        return wxUserApiMapper.updateWxUserOnlineApi(wxUserApi);
    }
    /**
     * 删除微信用户对象
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteWxUserApiByIds(String ids) {
        return wxUserApiMapper.deleteWxUserApiByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除微信用户信息
     *
     * @param wxOpenid 微信用户ID
     * @return 结果
     */
    @Override
    public int deleteWxUserApiById(String wxOpenid) {
        return wxUserApiMapper.deleteWxUserApiById(wxOpenid);
    }
}
