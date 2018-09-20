package last.struts.service;


import last.orm.User;

public interface UserService {
    public User log(User user);
    public boolean checkUserName(User user);
    public boolean addOne(User user);
}
