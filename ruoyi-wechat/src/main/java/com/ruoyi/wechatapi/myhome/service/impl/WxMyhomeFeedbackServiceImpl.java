package com.ruoyi.wechatapi.myhome.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.wechatapi.myhome.mapper.WxMyhomeFeedbackMapper;
import com.ruoyi.wechatapi.myhome.domain.WxMyhomeFeedback;
import com.ruoyi.wechatapi.myhome.service.IWxMyhomeFeedbackService;
import com.ruoyi.common.core.text.Convert;

/**
 * 用户反馈bugService业务层处理
 * 
 * @author ruoyi
 * @date 2020-09-09
 */
@Service
public class WxMyhomeFeedbackServiceImpl implements IWxMyhomeFeedbackService 
{
    @Autowired
    private WxMyhomeFeedbackMapper wxMyhomeFeedbackMapper;

    /**
     * 查询用户反馈bug
     * 
     * @param feedbackId 用户反馈bugID
     * @return 用户反馈bug
     */
    @Override
    public WxMyhomeFeedback selectWxMyhomeFeedbackById(Long feedbackId)
    {
        return wxMyhomeFeedbackMapper.selectWxMyhomeFeedbackById(feedbackId);
    }

    /**
     * 查询用户反馈bug列表
     * 
     * @param wxMyhomeFeedback 用户反馈bug
     * @return 用户反馈bug
     */
    @Override
    public List<WxMyhomeFeedback> selectWxMyhomeFeedbackList(WxMyhomeFeedback wxMyhomeFeedback)
    {
        return wxMyhomeFeedbackMapper.selectWxMyhomeFeedbackList(wxMyhomeFeedback);
    }

    /**
     * 新增用户反馈bug
     * 
     * @param wxMyhomeFeedback 用户反馈bug
     * @return 结果
     */
    @Override
    public int insertWxMyhomeFeedback(WxMyhomeFeedback wxMyhomeFeedback)
    {
        return wxMyhomeFeedbackMapper.insertWxMyhomeFeedback(wxMyhomeFeedback);
    }

    /**
     * 修改用户反馈bug
     * 
     * @param wxMyhomeFeedback 用户反馈bug
     * @return 结果
     */
    @Override
    public int updateWxMyhomeFeedback(WxMyhomeFeedback wxMyhomeFeedback)
    {
        return wxMyhomeFeedbackMapper.updateWxMyhomeFeedback(wxMyhomeFeedback);
    }

    /**
     * 删除用户反馈bug对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteWxMyhomeFeedbackByIds(String ids)
    {
        return wxMyhomeFeedbackMapper.deleteWxMyhomeFeedbackByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除用户反馈bug信息
     * 
     * @param feedbackId 用户反馈bugID
     * @return 结果
     */
    @Override
    public int deleteWxMyhomeFeedbackById(Long feedbackId)
    {
        return wxMyhomeFeedbackMapper.deleteWxMyhomeFeedbackById(feedbackId);
    }
}
