package com.ruoyi.wechatapi.myhome.mapper;

import java.util.List;
import com.ruoyi.wechatapi.myhome.domain.WxMyhomeFeedback;

/**
 * 用户反馈bugMapper接口
 * 
 * @author ruoyi
 * @date 2020-09-09
 */
public interface WxMyhomeFeedbackMapper 
{
    /**
     * 查询用户反馈bug
     * 
     * @param feedbackId 用户反馈bugID
     * @return 用户反馈bug
     */
    public WxMyhomeFeedback selectWxMyhomeFeedbackById(Long feedbackId);

    /**
     * 查询用户反馈bug列表
     * 
     * @param wxMyhomeFeedback 用户反馈bug
     * @return 用户反馈bug集合
     */
    public List<WxMyhomeFeedback> selectWxMyhomeFeedbackList(WxMyhomeFeedback wxMyhomeFeedback);

    /**
     * 新增用户反馈bug
     * 
     * @param wxMyhomeFeedback 用户反馈bug
     * @return 结果
     */
    public int insertWxMyhomeFeedback(WxMyhomeFeedback wxMyhomeFeedback);

    /**
     * 修改用户反馈bug
     * 
     * @param wxMyhomeFeedback 用户反馈bug
     * @return 结果
     */
    public int updateWxMyhomeFeedback(WxMyhomeFeedback wxMyhomeFeedback);

    /**
     * 删除用户反馈bug
     * 
     * @param feedbackId 用户反馈bugID
     * @return 结果
     */
    public int deleteWxMyhomeFeedbackById(Long feedbackId);

    /**
     * 批量删除用户反馈bug
     * 
     * @param feedbackIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteWxMyhomeFeedbackByIds(String[] feedbackIds);
}
