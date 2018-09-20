package last.struts.action;

import com.opensymphony.xwork2.ActionSupport;
import last.orm.User;
import last.struts.service.UserService;
import last.struts.utils.Constants;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.*;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;

@ParentPackage("json-default")
@Controller
@Scope("prototype")
//@ParentPackage(value="struts-default")
@Namespace("/")
@SuppressWarnings("serial")
@Results({@Result(name = "success",type = "json")})
public class LoginAction extends ActionSupport{

    private User user;

    private String data;

    @Resource(name="userService")
    private UserService userService;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    @Action(value = "login",results = {@Result(name = "success",location = "/Home.jsp",params = {"root","data"}),
                                          @Result(name = "failed",location = "/ss.jsp")})
    public String login() throws Exception
    {
        if(userService.log(user)!=null)
        {
            ServletActionContext.getRequest().getSession()
                    .setAttribute(Constants.CURRENT_USER,userService.log(user));
            return "success";
        }
        else
            return "failed";
    }

    @Action(value = "loginout",results = {@Result(name = "success",location = "/Home.jsp"),
            @Result(name = "failed",location = "/ss.jsp")})
    public String loginout() throws Exception
    {
        ServletActionContext.getRequest().getSession().setAttribute(Constants.CURRENT_USER,null);
        if(ServletActionContext.getRequest().getSession().getAttribute(Constants.CURRENT_USER)==null)
        {
            RequestDispatcher view = ServletActionContext.getRequest()
                    .getRequestDispatcher("/Home.jsp");
            view.forward(ServletActionContext.getRequest(), ServletActionContext.getResponse());
            return "success";
        }
        else
            return "failed";
    }

}
