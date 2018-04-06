package com.OptcInfo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.OptcInfo.entity.Note;

public interface NoteDao 
{
	@Select("select * from Note order by regDate desc" + 
			" 		limit ${(page-1)*15},15")
	
	List<Note> getList(@Param("page")Integer page);
	
	Note get(Integer id);
	
	int insert(Note note);
}
