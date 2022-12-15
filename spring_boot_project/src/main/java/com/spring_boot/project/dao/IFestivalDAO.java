package com.spring_boot.project.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.spring_boot.project.model.FestivalVO;

public interface IFestivalDAO {
	public ArrayList<FestivalVO> listAllFesfival(); // 전체 상품 조회
	public String fesNoCheck(String fesNo); // 
	public ArrayList<FestivalVO> FesfivalSearch(HashMap<String, Object> map);// 상품 검색
	public ArrayList<FestivalVO> regListFestival(String regionNo);
	public FestivalVO detailViewFestival(String fesNo);
}
