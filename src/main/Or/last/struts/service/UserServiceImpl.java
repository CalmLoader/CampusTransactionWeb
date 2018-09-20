package last.struts.service;
import last.dao.UserMapper;
import last.dao.dao;
import last.orm.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {
//    @Resource(name="dao")
//    private dao da;

    //@Resource(name="userMapper")
    @Resource
    private UserMapper userMapper;

    //@Resource(name = "dao")
//    public void setUserMapper(UserMapper userMapper) {
//        this.userMapper = userMapper;
//    }

    public User log(User user) {
//        User user =new User();
//        user.setUsername(username);
//        user.setPassword(password);
//        userMapper.insertOne(user);
//
//        if(username!=null&&password!=null&&username.equalsIgnoreCase("good") && password.equalsIgnoreCase("123"))
//            return true;
//        else
//            return false;
        if(userMapper.getUserByName(user)!=null&&user.getPassword().equals(userMapper.getUserByName(user).getPassword()))
        {
            return userMapper.getUserByName(user);
        }
        else
            return null;
    }

    public boolean checkUserName(User user){
        if(userMapper.getUserByName(user)==null)
            return true;
        else
            return false;
    }

    public boolean addOne(User user)
    {
        if(userMapper.addUser(user)==1)
            return true;
        else
            return false;
    }
}
