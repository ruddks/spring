package com.spring_boot.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FestivalController {
	
	@RequestMapping("/festival")
	public String festival() {
		return "/festival";
	}
	@RequestMapping("/festival_서울")
	public String 서울() {
		return	"/festival/festival_서울";
	}
	@RequestMapping("/festival_경기도")
	public String 경기도() {
		return	"/festival/festival_경기도";
	}
	@RequestMapping("/festival_강원도")
	public String 강원도() {
		return	"/festival/festival_강원도";
	}
	@RequestMapping("/festival_충청도")
	public String 충청도() {
		return	"/festival/festival_충청도";
	}
	
	@RequestMapping("/festival_경상도")
	public String 경상도() {
		return	"/festival/festival_경상도";
	}
	@RequestMapping("/festival_전라도")
	public String 전라도() {
		return	"/festival/festival_전라도";
	}
}
