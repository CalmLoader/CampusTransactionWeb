package last.dao;

import last.orm.User;
import org.springframework.stereotype.Repository;
import org.mybatis.spring.SqlSessionTemplate;

import javax.annotation.Resource;
import javax.transaction.Transactional;
import java.util.List;

public class daoImpl implements dao {

   /* @Resource
    SqlSessionTemplate sqlSessionTemplate;

    public List<User> getAllUser() {
        return null;
    }

    public User getUserByID(int id) {
        return null;
    }

    public void insertOne(User user) {
        sqlSessionTemplate.insert("insert into users values(2,'dsf','sdf')");
    }

    public void delete(int id) {

    }

    public void updateUserByID(User user) {

    }*/
}
