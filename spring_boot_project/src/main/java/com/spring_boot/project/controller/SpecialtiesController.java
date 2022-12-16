package com.spring_boot.project.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring_boot.project.model.SpecialtiesVO;
import com.spring_boot.project.service.SpecialtiesService;

@Controller
public class SpecialtiesController {
	@Autowired
	private SpecialtiesService service;
	
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
	
	// 전체 특산물 조회 : 서비스 요청 (요청 이름 :/specialties/specialtiesListAll)
			@RequestMapping("/specialties/specialtiesListAll")
			public String viewspecialtiesListAll(Model model) {
				ArrayList<SpecialtiesVO> speList = service.listAllSpecialties();
				model.addAttribute("speList", speList);
				return "/specialties/specialtiesAllListView"; //specialtiesAllListView.jsp 페이지로 출력
			}
		
		// 특산물 검색 폼1 열기
			@RequestMapping("/specialties/specialtiesSearchForm")
			public String specialtiesSearchForm() {
				return "/specialties/specialtiesSearchForm";
			}
			
			// 특산물 검색1 처리
			@ResponseBody
			@RequestMapping("/specialties/specialtiesSearch")
			public ArrayList<SpecialtiesVO> specialtiesSearch(@RequestParam HashMap<String, Object> param,
																							Model model){
				// 서비스로 전송해서 DB 검색 결과 받아옴
				ArrayList<SpecialtiesVO> speList = service.specialtiesSearch(param);		
				return speList;
			}
	
}
