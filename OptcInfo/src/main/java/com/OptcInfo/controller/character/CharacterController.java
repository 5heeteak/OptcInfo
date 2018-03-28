package com.OptcInfo.controller.character;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/character/")
public class CharacterController 
{
	@RequestMapping("list")
	public String list()
	{
		return"character/list";
	}

}
