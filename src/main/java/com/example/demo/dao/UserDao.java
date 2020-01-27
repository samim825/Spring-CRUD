package com.example.demo.dao;

import com.example.demo.entity.User;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by User on 11/6/2019.
 */
public interface UserDao extends CrudRepository<User, Integer>{


//declare a query
//@Transactional
//@Modifying
//    @Query("Delete from User u where u.id = ?1")
//    void delete(Integer userId);

}
