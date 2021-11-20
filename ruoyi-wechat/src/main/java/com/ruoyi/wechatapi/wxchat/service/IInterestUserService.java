package com.ruoyi.wechatapi.wxchat.service;

import java.util.List;
import com.ruoyi.wechatapi.wxchat.domain.InterestUser;

/**
 * 用户兴趣爱好Service接口
 * 
 * @author ruoyi
 * @date 2020-09-04
 */
public interface IInterestUserService 
{
    /**
     * 查询用户兴趣爱好
     * 
     * @param interestOpenid 用户兴趣爱好ID
     * @return 用户兴趣爱好
     */
    public Integer selectInterestUserById(String interestOpenid);

    /**
     * 查询用户兴趣爱好列表
     * 
     * @param interestUser 用户兴趣爱好
     * @return 用户兴趣爱好集合
     */
    public List<InterestUser> selectInterestUserList(InterestUser interestUser);

    /**
     * 新增用户兴趣爱好
     * 
     * @param interestUser 用户兴趣爱好
     * @return 结果
     */
    public int insertInterestUser(InterestUser interestUser);

    /**
     * 修改用户兴趣爱好
     * 
     * @param interestUser 用户兴趣爱好
     * @return 结果
     */
    public int updateInterestUser(InterestUser interestUser);

    /**
     * 批量删除用户兴趣爱好
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteInterestUserByIds(String ids);

    /**
     * 删除用户兴趣爱好信息
     * 
     * @param interestUserid 用户兴趣爱好ID
     * @return 结果
     */
    public int deleteInterestUserById(Long interestUserid);
}
