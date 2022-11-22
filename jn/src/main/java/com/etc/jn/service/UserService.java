package com.etc.jn.service;

import com.etc.jn.dto.CollectionDto;
import com.etc.jn.dto.FansCount;
import com.etc.jn.dto.FollowDto;
import com.etc.jn.dto.HistoryDto;
import com.etc.jn.entity.Post;
import com.etc.jn.entity.User;

import java.util.List;

public interface UserService {
   User checkLogin(String jn_username, String jn_userpwd);
   List<Post> queryPostByUserid(Integer jn_userid,Integer startindex,Integer size);
   FansCount getFansNumberByUserid(Integer jn_userid);
   FansCount getCollectionNumberByUserid(Integer jn_userid);
   FansCount getHistoryNumberByUserid(Integer jn_userid);
   List<Post> getPostByUserid2(Integer jn_userid);
   boolean addUser(User user);
   FansCount getConcernNumberByUserid(Integer jn_userid);
    boolean updateUser(User user);
   List<CollectionDto>queryCollectionidByUserid(Integer jn_userid,Integer startindex,Integer size);
   List<HistoryDto>queryHistoryByUserid(Integer jn_userid, Integer startindex, Integer size);
   List<FollowDto>queryFollowDtoByUserid(Integer jn_userid, Integer startindex, Integer size);
   /**
    * 查询邮箱是否注册过
    * @param email
    * @return
    */
   boolean queryEmmailByEmail(String email);
}
