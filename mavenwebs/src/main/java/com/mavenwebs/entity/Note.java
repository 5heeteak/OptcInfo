package com.mavenwebs.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Note 
{
	@Id
	private int id;
	private String title;
	private String content;
	//private String writerId;
	private Date regDate;
	private int hit;
	//private int order;
	//private long chapterId;
	


	public Note(int id, String title, String content) 
	{
		this.id = id;
		this.title = title;
		this.content = content;
		//this.writerId = writerId;
	}

	
	public Note()
	{
		
	}

	public long getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	/*public String getWriterId() {
		return writerId;
	}


	public void setWriterId(String writerId) {
		this.writerId = writerId;
	}*/


	public Date getRegDate() {
		return regDate;
	}


	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}


	public int getHit() {
		return hit;
	}


	public void setHit(int hit) {
		this.hit = hit;
	}


	@Override
	public String toString() {
		return "Note [id=" + id + ", title=" + title + ", content=" + content + ", regDate=" + regDate + ", hit=" + hit
				+ "]";
	}
	
	
}
