package com.spring_boot.project.controller;


import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring_boot.project.model.FestivalVO;
import com.spring_boot.project.service.IFestivalService;



@Controller
public class FestivalController {
	@Autowired
	private IFestivalService service;
	
	@RequestMapping("/festival")
	public String festival() {
		return "/festival";
	}
	@RequestMapping("/festival_서울")
	public String festivalregionName() {
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
	
	
	// 전체 상품 조회 : 서비스 요청 (요청 이름 :/festival/festivalListAll)
		@RequestMapping("/festival/festivalListAll")
		public String viewfestivalListAll(Model model) {
			// festivalService의  listAllfestival() 호출 (festivalService의 객체 필요 : DI 설정필요)
			ArrayList<FestivalVO> fesList = service.listAllFestival();
			model.addAttribute("fesList", fesList);
			return "festival/festivalAllListView"; //festivalAllListView.jsp 페이지로 출력
		}
	
	// 상품 검색 폼1 열기
		@RequestMapping("/festival/festivalSearchForm")
		public String festivalSearchForm() {
			return "/festival/festivalSearchForm";
		}
		
		// 상품 검색1 처리
		@ResponseBody
		@RequestMapping("/festival/festivalSearch")
		public ArrayList<FestivalVO> festivalSearch(@RequestParam HashMap<String, Object> param,
																						Model model){
			// 서비스로 전송해서 DB 검색 결과 받아옴
			ArrayList<FestivalVO> fesList = service.festivalSearch(param);		
			return fesList;
		}
		
	
}
