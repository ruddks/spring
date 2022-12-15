package com.spring_boot.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.spring_boot.project.model.FestivalVO;

public interface IFestivalService {
	public ArrayList<FestivalVO> listAllFestival(); // 전체 상품 조회
	public ArrayList<FestivalVO> festivalSearch(HashMap<String, Object> map);// 상품 검색
}
