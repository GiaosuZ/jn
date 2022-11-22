package com.etc.jnbackstage.dao;

import com.etc.jnbackstage.entity.User;
import com.etc.jnbackstage.entity.Users;

import java.util.List;

public interface UserDao {
    /**
     * 登录
     * @param jn_managename
     * @param jn_managepwd
     * @return
     */
    User queryUserByUsernameAndUserpwd(String jn_managename, String jn_managepwd);

    /**
     * 用户信息
     * @return
     */
    List<Users> queryUserByUserstatus();

    /**
     * 删除用户
     * @param jn_userid
     * @return
     */
    boolean updateUsersByuserid(Integer jn_userid);

    /**
     * 解封
     * @param jn_userid
     * @return
     */
    boolean updateUsersOpenByuserid (Integer jn_userid);

    /**
     * 管理员信息查询
     * @return
     */
    List<User> queryUserByManage();

    /**
     * 管理员权级-升级
     * @param jn_manageid
     * @return
     */
    boolean updateMannageDownById(Integer jn_manageid);
    /**
     * 管理员权级-降级
     * @param jn_manageid
     * @return
     */
    boolean updateMannageUpById(Integer jn_manageid);
    /**
     * 管理员逻辑删除
     * @param jn_manageid
     * @return
     */
    boolean updateMannageDeletById(Integer jn_manageid);

    /**
     * 添加管理员
     * @param user
     * @return
     */
    boolean insertNewManage(User user);

    /**
     * 按Id查询管理员
     * @param jn_manageid
     * @return
     */
    User queryManageById(Integer jn_manageid);

    /**
     * 修改管理员
     * @param user
     * @return
     */
    boolean updateMannageById(User user);
}
