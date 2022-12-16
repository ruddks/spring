package com.spring_boot.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.spring_boot.project.model.SpecialtiesVO;

public interface ISpecialtiesService {

	public ArrayList<SpecialtiesVO> listAllSpecialties();// 전체 상품 조회
	public ArrayList<SpecialtiesVO> specialtiesSearch(HashMap<String, Object> map);// 상품 검색
	public ArrayList<SpecialtiesVO> specialtiesopen(String regionNaem);
}
