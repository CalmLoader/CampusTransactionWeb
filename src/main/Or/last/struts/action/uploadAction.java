package last.struts.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import last.struts.utils.Constants;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

@Controller
@Scope("prototype")
@ParentPackage("json-default")
@Namespace("/")

public class uploadAction extends ActionSupport {

    //上传文件存放路径
    private final static String UPLOADDIR = "/image";
    //上传文件集合
    private File file;
    //上传文件名集合
    private String fileFileName;
    //上传文件内容类型集合
    private String fileContentType;

    public File getFile() {
        return file;
    }

    public void setFile(File file) {
        this.file = file;
    }

    public String getFileFileName() {
        return fileFileName;
    }

    public void setFileFileName(String fileFileName) {
        this.fileFileName = fileFileName;
    }

    public String getFileContentType() {
        return fileContentType;
    }

    public void setFileContentType(String fileContentType) {
        this.fileContentType = fileContentType;
    }

    @Action(value = "upload",results = {@Result(name = "success",location = "/Home.jsp"),
            @Result(name = "failed",location = "/ss.jsp")})
    public String execute() throws Exception {
        //System.out.println(this.getFileFileName());
        if(file==null)
        {
            ServletActionContext.getRequest().getSession().setAttribute(Constants.CURRENT_PICPATH,null);
        }
        else
            ServletActionContext.getRequest().getSession().setAttribute(Constants.CURRENT_PICPATH,fileFileName);
//        for (int i = 0; i < file.size(); i++) {
//            //循环上传每个文件
//
//        }
        uploadFile();
        return "success";
    }

    //执行上传功能
    private void uploadFile() throws FileNotFoundException, IOException {
        try {
            InputStream in = new FileInputStream(file);
            String dir = ServletActionContext.getRequest().getRealPath(UPLOADDIR);
            File fileLocation = new File(dir);
            //此处也可以在应用根目录手动建立目标上传目录
            if(!fileLocation.exists()){
                boolean isCreated  = fileLocation.mkdir();
                if(!isCreated) {
                    //目标上传目录创建失败,可做其他处理,例如抛出自定义异常等,一般应该不会出现这种情况。
                    return;
                }
            }
            String fileName=this.getFileFileName();
            File uploadFile = new File(dir, fileName);
            OutputStream out = new FileOutputStream(uploadFile);
            byte[] buffer = new byte[1024 * 1024];
            int length;
            while ((length = in.read(buffer)) > 0) {
                out.write(buffer, 0, length);
            }
            in.close();
            out.close();
        } catch (FileNotFoundException ex) {
            System.out.println("上传失败!");
            ex.printStackTrace();
        } catch (IOException ex) {
            System.out.println("上传失败!");
            ex.printStackTrace();
        }
    }
}