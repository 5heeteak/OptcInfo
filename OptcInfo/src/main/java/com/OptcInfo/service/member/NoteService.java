package com.OptcInfo.service.member;

import java.util.List;

import org.jsoup.Jsoup;
import org.springframework.beans.factory.annotation.Autowired;


import com.OptcInfo.dao.NoteDao;
import com.OptcInfo.entity.Note;

public class NoteService 
{
	@Autowired
	private NoteDao noteDao;

	public List<Note> getList(Integer page) 
	{
		List<Note> list = noteDao.getList(page);
		
		for(Note n : list)
		{
			String content = n.getContent();
			
			if(content == null) continue;
			
			String text = Jsoup.parse(content).text();
			
			if(text.length() > 250)
				text = text.substring(0, 200);
			n.setContent(text);
		}
		
		return list;
	}
	

	public Note get(Integer id) 
	{
		Note note = noteDao.get(id);
		return note;
	}


	public int insert(Note note) 
	{
		int result = noteDao.insert(note);
		
		return 0;
	}



	

}
