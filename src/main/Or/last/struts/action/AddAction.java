package last.struts.action;

import com.opensymphony.xwork2.ActionSupport;
import last.orm.GoodItems;
import last.orm.User;
import last.struts.service.GoodService;
import last.struts.service.GoodServiceImpl;
import last.struts.service.UserService;
import last.struts.utils.Constants;
import net.sf.json.JSONArray;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.*;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

@ParentPackage("json-default")
@Controller
@Scope("prototype")
@SuppressWarnings("serial")
@Results({@Result(name = "success",type = "json")})
@Namespace("/")
public class AddAction extends ActionSupport{
    private GoodItems goodItems;    //添加物品信息

    public GoodItems getGoodItems() {
        return goodItems;
    }

    public void setGoodItems(GoodItems goodItems) {
        this.goodItems = goodItems;
    }

    private User user;    //注册用户

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Resource(name = "goodService")
    private GoodService goodService;

    @Resource(name="userService")
    private UserService userService;


    @Action(value = "AddItems",results = {@Result(name="success",location = "/Home.jsp"),
                                            @Result(name = "failed",location = "/ss.jsp")
    })
    public String AddItems()throws Exception{
        if(goodItems==null)
        {
            return "failed";
        }
        User currentUser=(User) ServletActionContext.getRequest().getSession()
                .getAttribute(Constants.CURRENT_USER);
        goodItems.setOwner(currentUser.getId());
        goodItems.setHot(0);
        String PicPath=null;
        if(ServletActionContext.getRequest().getSession()
                .getAttribute(Constants.CURRENT_PICPATH)!=null)
            PicPath=ServletActionContext.getRequest().getSession()
                    .getAttribute(Constants.CURRENT_PICPATH).toString();
        if(PicPath==null)
            goodItems.setPic("./image/example.jpg");
        else
        {
            goodItems.setPic("./image/"+PicPath);
            ServletActionContext.getRequest().getSession()
                    .setAttribute(Constants.CURRENT_PICPATH,null);
        }
//        goodItems.setPic("123");
        goodItems.setType("play");
        if(goodService.InsertItems(goodItems)==1)
        {
            return "success";
        }
            return "failed";
    }

    @Action(value = "Register",results = {@Result(name="success",location = "/Home.jsp"),
            @Result(name = "failed",location = "/ss.jsp")
    })
    public String Register()throws Exception{
        if(user==null)
            return "failed";
        if(userService.addOne(user))
        {
            return "success";
        }
        return "failed";
    }

    @Action(value = "AddHot")
    public void AddHot()throws Exception{
        goodService.AddHot(goodItems);
    }
}
