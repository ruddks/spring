package com.spring_boot.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SpecialtiesController {
	
	@RequestMapping("/specialties")
	public String specialties() {
		return "/specialties";
	}
	@RequestMapping("/specialties_서울")
	public String 서울() {
		return	"/specialties/specialties_서울";
	}
	@RequestMapping("/specialties_경기도")
	public String 경기도() {
		return	"/specialties/specialties_경기도";
	}
	@RequestMapping("/specialties_강원도")
	public String 강원도() {
		return	"/specialties/specialties_강원도";
	}
	@RequestMapping("/specialties_충청도")
	public String 충청도() {
		return	"/specialties/specialties_충청도";
	}
	
	@RequestMapping("/specialties_경상도")
	public String 경상도() {
		return	"/specialties/specialties_경상도";
	}
	@RequestMapping("/specialties_전라도")
	public String 전라도() {
		return	"/specialties/specialties_전라도";
	}
	
}
