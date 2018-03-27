package com.OptcInfo.controller.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
	public String reg(Note note)
	{
		
		int result = service.insert(note);
		
		return"redirect:list";
	}
	
	
	@RequestMapping("edit")
	public String edit()
	{
		return"member/note/edit";
	}
	

}
