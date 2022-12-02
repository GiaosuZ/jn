package com.etc.jn.controller;

import com.etc.jn.entity.Post;
import com.etc.jn.entity.Posttype;
import com.etc.jn.entity.User;
import com.etc.jn.dto.MyMessage;
import com.etc.jn.service.PostService;
import com.etc.jn.service.Post_PosttypeService;
import com.etc.jn.service.PosttypeService;
import com.etc.jn.vo.Postidvo;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.util.List;


@Controller
public class PostController {
    @Autowired
    private PostService postService;
    @Autowired
    private PosttypeService posttypeService;
    @Autowired
    private Post_PosttypeService post_posttypeService;

    public Post_PosttypeService getPost_posttypeService() {
        return post_posttypeService;
    }

    public void setPost_posttypeService(Post_PosttypeService post_posttypeService) {
        this.post_posttypeService = post_posttypeService;
    }

    public PosttypeService getPosttypeService() {
        return posttypeService;
    }

    public void setPosttypeService(PosttypeService posttypeService) {
        this.posttypeService = posttypeService;
    }

    public PostService getPostService() {
        return postService;
    }

    public void setPostService(PostService postService) {
        this.postService = postService;
    }

    @RequestMapping("/addPost")
    public void addPost(MultipartFile jn_logo, String posttitle, String[] posttype, String postcontent, HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html;charset=utf-8");
        PrintWriter pw=response.getWriter();
        HttpSession session=request.getSession();
        User user = (User) session.getAttribute("myuser");
        Post post=new Post();
        post.setJn_postcontent(postcontent);
        post.setJn_posttitle(posttitle);
        post.setJn_userid(user);
        //获取当前服务器磁盘地址
        String path=  request.getServletContext().getRealPath("/upload");
        //判断当前文件夹是否存在,不存在则创建
        File file =new File(path);
        if(!file.exists()){
            file.mkdirs();
        }
        String filename=null;
        if (jn_logo.getOriginalFilename().equals(""))
        {
            //如果jn_logo为空filename则为空由前端判断filename是否为空为空则使用默认图片
            filename=null;
        }
        else
        {
            filename=jn_logo.getOriginalFilename();
            filename=System.currentTimeMillis()+"-"+filename;
            //获取要上传的文件的路径对象
            File file2=new File(path+"/"+filename);
            try{
                FileUtils.copyInputStreamToFile(jn_logo.getInputStream(),file2);
                System.out.println("文件上传成功！！！");
            }catch (Exception e){
                e.printStackTrace();
                pw.print("<script>alert('保存失败，发生了异常');history.go(-1);</script>");
            }
        }
        post.setJn_logo(filename);
        LocalDateTime time=LocalDateTime.now();
        String posttime=time.toString();
        posttime=posttime.substring(0,10)+" "+posttime.substring(11,16);
        System.out.println(posttime);

        post.setJn_posttime(posttime);
        boolean flag=postService.addPost(post);
        Postidvo postidvo =postService.quaryPostidByUseridAndPosttime(user.getJn_userid(),posttime);

        if (flag){
            for(int i=0;i<posttype.length;i++){
                String type=posttype[i];
                System.out.println(post.getJn_postid());
                Posttype poty =posttypeService.quarryPostidByPosttypename(type);
                post_posttypeService.addPostTypeByPostId(postidvo.getJn_postid(),poty.getJn_posttypeid());
            }
            pw.print("<script>alert('发布成功');location.href='personal.jsp';</script>");
        }else{
            pw.print("<script>alert('发布失败');location.href='editpost.jsp';</script>");
        }
        pw.flush();
        pw.close();
    }

    /**
     * 首页推荐帖子，分页
     * @param page
     * @param size
     * @return
     */
    @RequestMapping("/postShow")
    @ResponseBody
    public MyMessage postShow(Integer page,Integer size){
        MyMessage mm=new MyMessage();
        List<Post> list=postService.queryAllpost((page-1)*size,size);
        if (list.size()!=0){
            mm.setData(list);
            return mm;
        }
        return null;
    }

    /**
     * 根据类别查看帖子分页
     * @param type
     * @param page
     * @param size
     * @return
     */
    @RequestMapping("/postShowbytype")
    @ResponseBody
    public MyMessage postShowbytype(String type,Integer page,Integer size){
        MyMessage mm=new MyMessage();
        List<Post> list=postService.queryPostbytype(type, (page-1)*size, size);
        if (list.size()!=0){
            mm.setData(list);
            return mm;
        }
        return null;
    }

    /**
     * 关键词模糊查找
     * @param keyword
     * @param page
     * @param size
     * @return
     */
    @RequestMapping("/postShowbykeyword")
    @ResponseBody
    public MyMessage postShowbykeyword(String keyword,Integer page, Integer size){
        MyMessage mm=new MyMessage();
        List<Post> list=postService.queryPostbykeyword(keyword, (page-1)*size, size);
        if (list.size()!=0){
            mm.setData(list);
            return mm;
        }
        return null;
    }

    /**
     * 将要跳转帖子详情页postid存到session
     * @param postid
     * @param request
     * @param response
     * @throws Exception
     */
    @RequestMapping("/getPostid")
    @ResponseBody
    public void getPostid(String postid,HttpServletRequest request, HttpServletResponse response)throws Exception{
        response.setContentType("text/html;charset=utf-8");
        request.getSession().setAttribute("postid",postid);
        PrintWriter pw=response.getWriter();
        pw.print("<script>location.href='postdetail.jsp';</script>");
        pw.flush();
        pw.close();
    }

    /**
     * 进入帖子详情页通过当前session中postid加载帖子详情
     * @param request
     * @param response
     * @return
     * @throws Exception
     */
    @RequestMapping("/postDetail")
    @ResponseBody
    public  MyMessage postDetail(HttpServletRequest request, HttpServletResponse response)throws Exception{
        response.setContentType("text/html;charset=utf-8");
        Integer postid=Integer.parseInt(request.getParameter("postid"));
        Post post=postService.queryPostbyid(postid);
        MyMessage mm=new MyMessage();
        if(post!=null){
            mm.setData(post);
        }
        return null;
    }
    @RequestMapping("/removePost")
    public void removePost(Integer jn_postid,HttpServletResponse response)throws Exception
    {
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out=response.getWriter();
        if (postService.removePostByPostid(jn_postid))
        {
            out.print("<script>alert('删除成功！');location.href='personal.jsp'</script>");
        }
        else
            {
                out.print("<script>alert('删除失败请重新！');flocation.hre='personal.jsp';</script>");
            }
        out.flush();
        out.close();
    }

}
