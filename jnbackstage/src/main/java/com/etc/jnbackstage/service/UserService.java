package com.etc.jnbackstage.service;

import com.etc.jnbackstage.entity.User;
import com.etc.jnbackstage.entity.Users;

import java.util.List;

public interface UserService {
   User checkLogin(String jn_managename, String jn_managepwd);
   List<Users> queryUserByUserstatus();
   boolean updateUsersByuserid(Integer jn_userid);
   boolean updateUsersOpenByuserid (Integer jn_userid);
   List<User> queryUserByManage();
   boolean updateMannageDownById(Integer jn_manageid);
   boolean updateMannageUpById(Integer jn_manageid);
   boolean updateMannageDeletById(Integer jn_manageid);
   boolean insertNewManage(User user);
   User queryManageById(Integer jn_manageid);
   boolean updateMannageById(User user);
}
