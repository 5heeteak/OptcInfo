package com.mavenwebs.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mavenwebs.dao.MemberDao;
import com.mavenwebs.entity.Member;

@Service
public class MemberService 
{
	@Autowired
	private MemberDao memberDao;
	
	@Transactional
	public int insertMember(Member member) 
	{
		int result = memberDao.insert(member);
		return result;
	}

}
