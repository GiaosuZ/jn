package com.etc.jn.service.impl;

import com.etc.jn.dao.UserDao;
import com.etc.jn.dto.CollectionDto;
import com.etc.jn.dto.FansCount;
import com.etc.jn.dto.FollowDto;
import com.etc.jn.dto.HistoryDto;
import com.etc.jn.entity.Post;
import com.etc.jn.entity.User;
import com.etc.jn.service.UserService;
import com.etc.jn.vo.Useremailvo;
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


    @Override
    public User checkLogin(String jn_username, String jn_userpwd) {
        if (jn_username==null||"".equals(jn_username)||jn_userpwd==null||"".equals(jn_userpwd))
        {
            return null;
        }
        return dao.queryUserByUsernameAndUserpwd(jn_username,jn_userpwd);
    }

    @Override
    public List<Post> queryPostByUserid(Integer jn_userid,Integer startindex,Integer size) {
        if (jn_userid==null)
        {
            return null;
        }
        System.out.println("时间"+dao.queryPostByUserid(jn_userid,startindex,size).get(1).getJn_posttime());
        return dao.queryPostByUserid(jn_userid,startindex,size);
    }

    @Override
    public FansCount getFansNumberByUserid(Integer jn_userid) {
        if (jn_userid!=0&&jn_userid!=null)
        {
            return dao.queryFansNumberByUserid(jn_userid);

        }
        return null;
    }

    @Override
    public FansCount getCollectionNumberByUserid(Integer jn_userid) {
        if (jn_userid!=0&&jn_userid!=null)
        {
            return dao.queryCollectionNumberByUserid(jn_userid);

        }
        return null;
    }

    @Override
    public FansCount getHistoryNumberByUserid(Integer jn_userid) {
        if (jn_userid!=0&&jn_userid!=null)
        {
            return dao.queryHistoryNumberByUserid(jn_userid);

        }
        return null;
    }

    @Override
    public List<Post> getPostByUserid2(Integer jn_userid) {
        if (jn_userid==null)
        {
            return null;
        }
        return dao.queryPostByUserid2(jn_userid);
    }
    @Override
    public boolean addUser(User user) {
        return dao.addUser(user);
    }

    @Override
    public FansCount getConcernNumberByUserid(Integer jn_userid) {
        if (jn_userid!=0&&jn_userid!=null)
        {
            return dao.queryConcernNumberByUserid(jn_userid);

        }
        return null;
    }

    @Override
    public boolean queryEmmailByEmail(String email) {
        Useremailvo str =dao.queryEmmailByEmail(email);
        if (str.getJn_useremail().equals("0")){
            return true;
        }else {
            return false;
        }

    }

    @Override
    public boolean updateUser(User user) {
        if (user!=null)
        {
            return dao.updateUserByid(user);
        }
        return false;
    }


    @Override
    public List<CollectionDto> queryCollectionidByUserid(Integer jn_userid,Integer startindex,Integer size) {
        if (jn_userid!=0&&jn_userid!=null)
            if (jn_userid==null)
            {
                return null;
            }
        return dao.queryCollectionidByUserid(jn_userid,startindex,size);
    }

    @Override
    public List<HistoryDto> queryHistoryByUserid(Integer jn_userid, Integer startindex, Integer size) {

        if (jn_userid!=0&&jn_userid!=null)
            if (jn_userid==null)
            {
                return null;
            }
        return dao.queryHistoryByUserid(jn_userid,startindex,size);
    }

    @Override
    public List<FollowDto> queryFollowDtoByUserid(Integer jn_userid, Integer startindex, Integer size) {

        if (jn_userid!=0&&jn_userid!=null)
            if (jn_userid==null)
            {
                return null;
            }
        return dao.queryFollowDtoByUserid(jn_userid,startindex,size);
    }
}
