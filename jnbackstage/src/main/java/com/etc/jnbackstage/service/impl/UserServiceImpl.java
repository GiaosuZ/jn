package com.etc.jnbackstage.service.impl;

import com.etc.jnbackstage.dao.UserDao;
import com.etc.jnbackstage.entity.User;
import com.etc.jnbackstage.entity.Users;
import com.etc.jnbackstage.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
   @Autowired
    private UserDao dao;

    public UserDao getDao() {
        return dao;
    }

    public void setDao(UserDao dao) {
        this.dao = dao;
    }

    /**
     * 登录
     * @param jn_managename
     * @param jn_managepwd
     * @return
     */
    @Override
    public User checkLogin(String jn_managename, String jn_managepwd) {
        if (jn_managename==null||"".equals(jn_managename)||jn_managepwd==null||"".equals(jn_managepwd))
        {
            return null;
        }
        return dao.queryUserByUsernameAndUserpwd(jn_managename,jn_managepwd);
    }
    /**
     * 用户信息
     * @return
     */
    @Override
    public List<Users> queryUserByUserstatus() {
        return dao.queryUserByUserstatus();
    }
    /**
     * 解封
     * @param jn_userid
     * @return
     */
    @Override
    public boolean updateUsersOpenByuserid(Integer jn_userid) {
        return dao.updateUsersOpenByuserid(jn_userid);
    }
    /**
     * 管理员信息查询
     * @return
     */
    @Override
    public List<User> queryUserByManage() {
        return dao.queryUserByManage();
    }

    /**
     * 删除用户
     * @param jn_userid
     * @return
     */
    @Override
    public boolean updateUsersByuserid(Integer jn_userid) {
        return dao.updateUsersByuserid(jn_userid);
    }

    /**
     * 管理员权级-升级
     * @param jn_manageid
     * @return
     */
    @Override
    public boolean updateMannageDownById(Integer jn_manageid) {
        return dao.updateMannageDownById(jn_manageid);
    }
    /**
     * 管理员权级-降级
     * @param jn_manageid
     * @return
     */
    @Override
    public boolean updateMannageUpById(Integer jn_manageid) {
        return dao.updateMannageUpById(jn_manageid);
    }
    /**
     * 添加管理员
     * @param user
     * @return
     */
    @Override
    public boolean insertNewManage(User user) {
        return dao.insertNewManage(user);
    }

    /**
     * 管理员逻辑删除
     * @param jn_manageid
     * @return
     */
    @Override
    public boolean updateMannageDeletById(Integer jn_manageid) {
        return dao.updateMannageDeletById(jn_manageid);
    }
    /**
     * 按Id查询管理员
     * @param jn_manageid
     * @return
     */
    @Override
    public User queryManageById(Integer jn_manageid) {
        return dao.queryManageById(jn_manageid);
    }
    /**
     * 修改管理员
     * @param user
     * @return
     */
    @Override
    public boolean updateMannageById(User user) {
        return dao.updateMannageById(user);
    }
}
