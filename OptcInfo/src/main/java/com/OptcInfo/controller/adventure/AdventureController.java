package com.OptcInfo.controller.adventure;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/adventure/")
public class AdventureController 
{
	@RequestMapping("list")
	public String list()
	{
		return "adventure/list";
	}

}
