package com.ruoyi.wechatapi.wxchat.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.wechatapi.wxchat.mapper.InterestUserMapper;
import com.ruoyi.wechatapi.wxchat.domain.InterestUser;
import com.ruoyi.wechatapi.wxchat.service.IInterestUserService;
import com.ruoyi.common.core.text.Convert;

/**
 * 用户兴趣爱好Service业务层处理
 * 
 * @author ruoyi
 * @date 2020-09-04
 */
@Service
public class InterestUserServiceImpl implements IInterestUserService 
{
    @Autowired
    private InterestUserMapper interestUserMapper;

    /**
     * 查询用户兴趣爱好
     * 
     * @param interestOpenid 用户兴趣爱好ID
     * @return 用户兴趣爱好
     */
    @Override
    public Integer selectInterestUserById(String interestOpenid)
    {
        return interestUserMapper.selectInterestUserById(interestOpenid);
    }

    /**
     * 查询用户兴趣爱好列表
     * 
     * @param interestUser 用户兴趣爱好
     * @return 用户兴趣爱好
     */
    @Override
    public List<InterestUser> selectInterestUserList(InterestUser interestUser)
    {
        return interestUserMapper.selectInterestUserList(interestUser);
    }

    /**
     * 新增用户兴趣爱好
     * 
     * @param interestUser 用户兴趣爱好
     * @return 结果
     */
    @Override
    public int insertInterestUser(InterestUser interestUser)
    {
        Integer result = interestUserMapper.selectInterestUserById(interestUser.getInterestOpenid());
        if (result == null){
            result = interestUserMapper.insertInterestUser(interestUser);
        }else {
            result = interestUserMapper.updateInterestUser(interestUser);
        }
        return result;
    }

    /**
     * 修改用户兴趣爱好
     * 
     * @param interestUser 用户兴趣爱好
     * @return 结果
     */
    @Override
    public int updateInterestUser(InterestUser interestUser)
    {
        return interestUserMapper.updateInterestUser(interestUser);
    }

    /**
     * 删除用户兴趣爱好对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteInterestUserByIds(String ids)
    {
        return interestUserMapper.deleteInterestUserByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除用户兴趣爱好信息
     * 
     * @param interestUserid 用户兴趣爱好ID
     * @return 结果
     */
    @Override
    public int deleteInterestUserById(Long interestUserid)
    {
        return interestUserMapper.deleteInterestUserById(interestUserid);
    }
}
