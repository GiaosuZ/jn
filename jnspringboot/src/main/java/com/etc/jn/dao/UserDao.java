package com.etc.jn.dao;

import com.etc.jn.dto.CollectionDto;
import com.etc.jn.dto.FansCount;
import com.etc.jn.dto.FollowDto;
import com.etc.jn.dto.HistoryDto;
import com.etc.jn.entity.Post;
import com.etc.jn.entity.User;
import com.etc.jn.vo.Useremailvo;

import java.util.List;

public interface UserDao {
    User queryUserByUsernameAndUserpwd(String jn_username, String jn_userpwd);
    List<Post> queryPostByUserid(Integer jn_userid,Integer startindex,Integer size);
    FansCount queryFansNumberByUserid(Integer jn_userid);
    FansCount queryCollectionNumberByUserid(Integer jn_userid);
    FansCount queryHistoryNumberByUserid(Integer jn_userid);
    List<Post> queryPostByUserid2(Integer jn_userid);

    /**
     * 添加用户
     * @param user
     * @return
     */
    boolean addUser(User user);
    FansCount queryConcernNumberByUserid(Integer jn_userid);
    List<CollectionDto>queryCollectionidByUserid(Integer jn_userid,Integer startindex,Integer size);
    List<HistoryDto>queryHistoryByUserid(Integer jn_userid, Integer startindex, Integer size);
    List<FollowDto>queryFollowDtoByUserid(Integer jn_userid, Integer startindex, Integer size);
    boolean updateUserByid(User user);

    /**
     * 查询邮箱是否注册过
     * @param email
     * @return
     */
    Useremailvo queryEmmailByEmail(String email);
}
