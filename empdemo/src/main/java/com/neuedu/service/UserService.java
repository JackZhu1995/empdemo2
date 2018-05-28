package com.neuedu.service;

import com.neuedu.entity.User;
import org.apache.ibatis.annotations.Param;

public interface UserService {

    /**
     * 根据用户名查询用户
     * @param username
     * @return
     */
    User getUserByUsername(String username);

    /**
     * 添加user的方法
     * @param user
     * @return
     */
    int saveUser(@Param("user") User user);

}
