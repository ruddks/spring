package com.spring_boot.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring_boot.project.model.FestivalVO;
import com.spring_boot.project.service.FestivalService;

@Controller
public class FestivalController {
	@Autowired
	private FestivalService service;
	
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
	
	// 카테고리별 상품 조회
		@RequestMapping("/festival/festivalRegList/{regionName}")
		public String festivalRegList(@PathVariable String regionName, Model model) {
			ArrayList<FestivalVO> fesList = service.regListFestival(regionName);
			model.addAttribute("fesList", fesList);
			return "festival/festivalRegListView";
		}
		
		// 상품 상세 조회
		@RequestMapping("/festival/detailViewFestival/{fesNo}")
		public String detailViewfestival(@PathVariable String fesNo, Model model) {
			// 상품번호 전달하고 해당 상품 상세 정보 받아오기 (1개 상품에 관한 정보)
			FestivalVO fes = service.detailViewFestival(fesNo);
			model.addAttribute("fes", fes);
			
			return "festival/festivalDetailView";
		}
}
