package com.spring_boot.project.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.spring_boot.project.model.FestivalVO;


public interface IFestivalDAO {
	public ArrayList<FestivalVO> listAllFestival(); // 전체 상품 조회
	public ArrayList<FestivalVO> festivalSearch(HashMap<String, Object> map);// 상품 검색
}
