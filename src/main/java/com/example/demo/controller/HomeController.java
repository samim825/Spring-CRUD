package com.example.demo.controller;

import com.example.demo.dao.UserDao;
import com.example.demo.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Optional;

/**
 * Created by User on 11/6/2019.
 */
@Controller
public class HomeController {

    @Autowired
    UserDao userDao;

    @GetMapping("/")
    public String goHomePage(){
        System.out.println("Home method visited...");
        return "redirect:/userList";
    }

    @GetMapping("/addUser")             //Add new object or edit an object
    public String addUser(@RequestParam(value = "userId",required = false) Integer userId, Model model){
        User user = new User();

        if(userId != null){
            user = userDao.findById(userId).get();
        }

        model.addAttribute("user",user);
        System.out.println("AddUser get  method visited...");
        return "addUser";
    }

    @PostMapping("/addUser")            //Save an object
    public String saveUser(@ModelAttribute("user") User user){
        userDao.save(user);
        System.out.println("AddUser post  method visited...");
        return "redirect:/userList";
    }

    @GetMapping("/userList")    //retrieve all data
    public String userList(Model model){

        List<User> userList = (List<User>) userDao.findAll();
        model.addAttribute("userList",userList);
        System.out.println("User list method visited...");
        return "home";
    }

    @GetMapping("/deleteStudent")   //delete an obejct
    public String delete(@RequestParam Integer userId){
        //way 1
        //using query we can delete
        //userDao.delete(userId);


        //way 2
        //using dao class
        Optional<User> user =userDao.findById(userId);
        System.out.println(user);
        userDao.delete(user.get());

        return  "redirect:/userList";
    }
}
