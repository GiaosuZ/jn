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
        //?????????????????????????????????
        String path=  request.getServletContext().getRealPath("/upload");
        //?????????????????????????????????,??????????????????
        File file =new File(path);
        if(!file.exists()){
            file.mkdirs();
        }
        String filename=null;
        if (jn_logo.getOriginalFilename().equals(""))
        {
            //??????jn_logo??????filename????????????????????????filename???????????????????????????????????????
            filename=null;
        }
        else
        {
            filename=jn_logo.getOriginalFilename();
            filename=System.currentTimeMillis()+"-"+filename;
            //???????????????????????????????????????
            File file2=new File(path+"/"+filename);
            try{
                FileUtils.copyInputStreamToFile(jn_logo.getInputStream(),file2);
                System.out.println("???????????????????????????");
            }catch (Exception e){
                e.printStackTrace();
                pw.print("<script>alert('??????????????????????????????');history.go(-1);</script>");
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
            pw.print("<script>alert('????????????');location.href='personal.jsp';</script>");
        }else{
            pw.print("<script>alert('????????????');location.href='editpost.jsp';</script>");
        }
        pw.flush();
        pw.close();
    }

    /**
     * ???????????????????????????
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
     * ??????????????????????????????
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
     * ?????????????????????
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
     * ???????????????????????????postid??????session
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
     * ?????????????????????????????????session???postid??????????????????
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
            out.print("<script>alert('???????????????');location.href='personal.jsp'</script>");
        }
        else
            {
                out.print("<script>alert('????????????????????????');flocation.hre='personal.jsp';</script>");
            }
        out.flush();
        out.close();
    }

}
