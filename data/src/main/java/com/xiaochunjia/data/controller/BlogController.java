package com.xiaochunjia.data.controller;

import com.xiaochunjia.data.common.SessionUtils;
import com.xiaochunjia.data.model.*;
import com.xiaochunjia.data.model.Dictionary;
import com.xiaochunjia.data.service.BlogService;
import com.xiaochunjia.data.service.DictionaryService;
import com.xiaochunjia.data.view.BlogView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping(value = "/blog")
public class BlogController {
	
	@Autowired
	private BlogService blogService;

	@Autowired
	private DictionaryService dictionaryService;
	
	@RequestMapping(value = "/list/{category}",method=RequestMethod.GET)
	@ResponseBody()
	public List<Blog> getBlog(HttpSession session,@PathVariable String category,@RequestParam Integer page) {


		System.out.println("category:"+category);
		System.out.println("Level:"+SessionUtils.getSessionLevel(session.hashCode()));
		return blogService.findByPage(page, 5);
	}

	@RequestMapping(value = "/m",method=RequestMethod.GET)
	public ModelAndView manager() {
		return new ModelAndView("/blog/blog");
	}
	
	@RequestMapping(value = "/folder",method=RequestMethod.GET)
	@ResponseBody()
	public List<String> getImagesFolder(HttpSession session,HttpServletRequest request) {
		List<String> month = new ArrayList<String>();
		String path = request.getSession().getServletContext().getRealPath("")+File.separator+"static"+File.separator+"pic";
		File folders = new File(path);  
		for(File file : folders.listFiles()){
			month.add(file.getName());
		}
		return month;
	}
	
	@RequestMapping(value = "/image/{folder}",method=RequestMethod.GET)
	@ResponseBody()
	public List<String> getImages(HttpSession session,@PathVariable String folder,HttpServletRequest request) {
		List<String> month = new ArrayList<String>();
		String path = request.getSession().getServletContext().getRealPath("")+File.separator+"static"+File.separator+"pic"+File.separator+folder;
		File folders = new File(path);  
		for(File file : folders.listFiles()){
			month.add(file.getName());
		}
		return month;
	}
	
	@RequestMapping(value = "/image/upload",method=RequestMethod.GET)
	public ModelAndView upload() {
		return new ModelAndView("/blog/image");
	}
	
	@RequestMapping(value = "/uploadimage",method=RequestMethod.POST)
	@ResponseBody()
	public Object uploadimage(HttpSession session,HttpServletRequest request) throws IllegalStateException, IOException {
		//创建一个通用的多部分解析器  
        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(request.getSession().getServletContext());  
        //判断 request 是否有文件上传,即多部分请求  
        if(multipartResolver.isMultipart(request)){  
            //转换成多部分request    
            MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest)request;  
            //取得request中的所有文件名  
            Iterator<String> iter = multiRequest.getFileNames();  
            while(iter.hasNext()){  
                //记录上传过程起始时的时间，用来计算上传时间  
                int pre = (int) System.currentTimeMillis();  
                //取得上传文件  
                MultipartFile file = multiRequest.getFile(iter.next());  
                if(file != null){  
                    //取得当前上传文件的文件名称  
                    String myFileName = file.getOriginalFilename();  
                    //如果名称不为“”,说明该文件存在，否则说明该文件不存在  
                    if(myFileName.trim() !=""){  
                        System.out.println(myFileName);  
                        //重命名上传后的文件名  
                        String fileName = UUID.randomUUID().hashCode() + file.getOriginalFilename();
                        //定义上传路径
                        String month=new SimpleDateFormat("yyyy-MM").format(new Date());
                        String path = request.getSession().getServletContext().getRealPath("")+File.separator+"static"+File.separator+"pic"+File.separator+month +File.separator + fileName;  

                        System.out.println(path);
                        
                        File localFile = new File(path);  
                        // 如果路径不存在,则创建  
                        if (!localFile.getParentFile().exists()) {  
                        	localFile.getParentFile().mkdirs();  
                        }
                        file.transferTo(localFile);  
                    }  
                }  
                //记录上传该文件后的时间  
                int finaltime = (int) System.currentTimeMillis();  
                System.out.println(finaltime - pre);  
            }  
              
        }  
		return "";
	}

	@RequestMapping(value = "/save",method=RequestMethod.POST)
	public String save(Blog blog) {
		blog.setDate(new Date());
		blog.setStatus(Blog.K_Status_Online);
		blog.setMark(0);
		blog.setComment(0);
		System.out.print(blog.toString());
		blogService.addBlog(blog);
		return "redirect:/user/login";
	}

	@RequestMapping(value = "/{id}",method=RequestMethod.GET)
	public ModelAndView show(@PathVariable Long id) {
		Blog blog = blogService.find(id);
		Map<String,Object> data = new HashMap<String,Object>();
		data.put("blog",new BlogView(blog));
		return new ModelAndView("/blog/view",data);
	}

	@RequestMapping(value = "/edit/{id}",method=RequestMethod.GET)
	public ModelAndView toEdit(@PathVariable Long id) {

		List<Dictionary> categorys = dictionaryService.findByType(Dictionary.k_Type_Cagegory);

		Map<String,Object> data = new HashMap<String,Object>();
		data.put("categorys",categorys);

		if(id==0){
			return new ModelAndView("/blog/add",data);
		}
		else {
			Blog blog = blogService.find(id);
			data.put("blog",blog);
			return new ModelAndView("/blog/edit",data);
		}
	}
}
