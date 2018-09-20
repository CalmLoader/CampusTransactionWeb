package last.struts.action;

import com.opensymphony.xwork2.ActionSupport;
import last.orm.GoodItems;
import last.orm.User;
import last.struts.service.GoodService;
import last.struts.service.GoodServiceImpl;
import last.struts.service.UserService;
import last.struts.utils.Constants;
import net.sf.json.JSON;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.*;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@ParentPackage("json-default")
@Controller
@Scope("prototype")
@SuppressWarnings("serial")
@Results({@Result(name = "success",type = "json")})
@Namespace("/")
public class LoadAction extends ActionSupport{

    @Resource
    private GoodService goodService;
    @Resource
    private UserService userService;

    private GoodItems goodItems;

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
    private Map<String, Object> dataMap;

    public Map<String, Object> getDataMap() {
        return dataMap;
    }

    public void setDataMap(Map<String, Object> dataMap) {
        this.dataMap = dataMap;
    }

    private String data;

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    private JSONArray json;

    public JSONArray getJson() {
        return json;
    }

    public void setJson(JSONArray json) {
        this.json = json;
    }

    @Action(value = "Load",results = {@Result(name="success",type = "json",params = {"root","json"})
    })
    public String Load()throws Exception{
        HttpServletResponse response = ServletActionContext.getResponse();
        List<GoodItems> goodItems= goodService.GetAllItems();
        JSONArray ja = JSONArray.fromObject(goodItems);
        json=ja;
        return "success";
    }

    @Action(value = "HasLogin",results = {@Result(name="success",type = "json",params = {"root","data"})
    })
    public String HasLogin() throws Exception{
        User user=(User)ServletActionContext.getRequest().getSession()
                .getAttribute(Constants.CURRENT_USER);
        if(user!=null)
        {
            data=user.getUsername();
        }
        else
        {
            data="none";
        }
        return "success";
    }

    @Action(value = "CheckUserName",results = {@Result(type = "json",params = {"root","data"})
    })
    public String CheckUserName()throws Exception {

//        if(user!=null)
//        {
//            System.out.println(user.getUsername());
//            System.out.println("ssss1");
//        }
//
//        else
//            System.out.println("ssss");
//        return "success";
//        dataMap = new HashMap<String, Object>();
//        dataMap.put("user", user);
//        user.setUsername("good");
//        JSONObject jsonMap = JSONObject.fromObject(user);
//        data=jsonMap.toString();
//        return "success";
        data="false";
        if(userService.checkUserName(user))
        {
            data="true";
        }
        return "success";
//        HttpServletResponse response = ServletActionContext.getResponse();
//        JSONObject jsonObject=JSONObject.fromObject(user);
//        //用response向前台写数据
//        response.getWriter().write(jsonObject.toString());
//        response.getWriter().flush();
//        response.getWriter().close();
//        return null;

//        if(userService.checkUserName(user.getUsername()))
//            ServletActionContext.getResponse().getWriter().write("true");
//        else
//            ServletActionContext.getResponse().getWriter().write("false");
//        ServletActionContext.getResponse().getWriter().flush();
//        ServletActionContext.getResponse().getWriter().close();
//        return "success";
    }

    @Action(value = "LoadMyItems",results = {@Result(name="success",type = "json",params = {"root","json"})
    })
    public String LoadMyItems()throws Exception{
        User user=(User)ServletActionContext.getRequest().getSession()
                .getAttribute(Constants.CURRENT_USER);
        HttpServletResponse response = ServletActionContext.getResponse();
        List<GoodItems> Items= goodService.GetItemsByOwner(user.getId());
        JSONArray ja = JSONArray.fromObject(Items);
        json=ja;
        return "success";
        //用response向前台写数据
//        response.getWriter().write(ja.toString());
//        response.getWriter().flush();
//        response.getWriter().close();
//        return null;
    }

    @Action(value = "LoadMyCollections",results = {@Result(name="success",type = "json",params = {"root","json"})
    })
    public String LoadMyCollections()throws Exception{
        User user=(User)ServletActionContext.getRequest().getSession()
                .getAttribute(Constants.CURRENT_USER);
        HttpServletResponse response = ServletActionContext.getResponse();
        List<GoodItems> Items= goodService.GetCollectionsByUserId(user.getId());
        JSONArray ja = JSONArray.fromObject(Items);
        json=ja;
        return "success";
        //用response向前台写数据
//        response.getWriter().write(ja.toString());
//        response.getWriter().flush();
//        response.getWriter().close();
//        return null;
    }

    @Action(value = "LoadItemsByKinds",results = {@Result(name="success",type = "json",params = {"root","json"})
    })
    public String LoadItemsByKinds()throws Exception{
        List<GoodItems> Items= goodService.GetItemsByType(goodItems.getType());
        JSONArray ja = JSONArray.fromObject(Items);
        json=ja;
        return "success";
        //用response向前台写数据
//        response.getWriter().write(ja.toString());
//        response.getWriter().flush();
//        response.getWriter().close();
//        return null;
    }


}

    //    public String extcute() throws Exception{
//
//        HttpServletResponse response = ServletActionContext.getResponse();
//        //ArrayList<ExpressCo> expressColist=basicInformationServiceI.search();
//        List<GoodItems> goodItems= goodServiceImpl.GetAllItems();
//
//        JSONArray ja = JSONArray.fromObject(goodItems);
//        //用response向前台写数据
//        response.getWriter().write(ja.toString());
//        response.getWriter().flush();
//        response.getWriter().close();
//        return null;
//    }


