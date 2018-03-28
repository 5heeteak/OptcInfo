package com.OptcInfo.controller.member;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.OptcInfo.entity.Note;
import com.OptcInfo.service.member.NoteService;

@Controller
@RequestMapping("/member/note/")
public class NoteController 
{
	
	@Autowired
	private NoteService service;
	
	@RequestMapping("list")
	public String list(@RequestParam(value="p",defaultValue="1") Integer page, Model model)
	{
		
		List<Note> notes = service.getList(page);
		model.addAttribute("notes", notes);
		
		return"member/note/list";
		
	}
	
	@RequestMapping("list/{id}")
	public String detail(@PathVariable("id")Integer id, Model model)
	{
		Note note = service.get(id);
		
		model.addAttribute("note", note);
		
		return"member/note/detail";
	}
	
	@RequestMapping(value="reg", method=RequestMethod.GET)
	public String reg()
	{
		return"member/note/reg";
	}
	
	@RequestMapping(value="reg", method=RequestMethod.POST)
	public String reg(Note note, MultipartFile file, HttpServletRequest request)
	{
		ServletContext ctx = request.getServletContext();
		String path = ctx.getRealPath("/resources/note/optc/");
		
		if(!file.isEmpty()) 
		{
			try {
				InputStream fis = file.getInputStream();
				String fname = file.getOriginalFilename();
				
				FileOutputStream fos = new FileOutputStream(path + File.separator + fname);
				
				byte[] buf = new byte[1024];
				
				int size = 0;
				
				while((size = fis.read(buf,0,1024)) != -1)
					fos.write(buf,0,size);
				
				fis.close();
				fos.close();
				
				
			} catch (IOException e) {
				// TODO Auto-generated catch block
				//e.printStackTrace();
				System.out.println("error");
				return "error";
			}
		}
		
		
		int result = service.insert(note);
		
		return"redirect:list";
	}
	
	
	@RequestMapping("edit")
	public String edit()
	{
		return"member/note/edit";
	}
	
	@RequestMapping("filess")
	@ResponseBody
	public String filess() {
		
		return "file이다";
	}

	
	@RequestMapping("error")
	@ResponseBody
	public String error() {
		
		return "error이다";
	}
}
