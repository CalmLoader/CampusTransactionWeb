package last.dao;

import last.orm.User;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Transactional

public interface UserMapper {
    @Select("select * from users")
    public List<User> getAllUser();

    @Select("select * from users where Username=#{username}")
    public User getUserByName(User user);

    @Insert("insert into users(Username,Password,Email) values(#{username},#{password},#{email})")
    public int addUser(User user);

//    @Delete("delete from users where id=#{id}")
//    public void delete(int id);

    @Update("update users set users.Username=#{username},users.Password=#{password} where users.Id=#{id}" )
    public void updateUserByID(User user);

}
