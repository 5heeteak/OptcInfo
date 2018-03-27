package com.OptcInfo.service.member;

import java.util.List;

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
