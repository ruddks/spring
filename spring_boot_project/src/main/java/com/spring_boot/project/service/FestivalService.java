package com.spring_boot.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.spring_boot.project.dao.IFestivalDAO;
import com.spring_boot.project.model.FestivalVO;

public class FestivalService implements IFestivalService {
	@Autowired
	@Qualifier("IFestivalDAO")
	IFestivalDAO dao;
	
	@Override
	public ArrayList<FestivalVO> listAllFestival() {
		return dao.listAllFestival();
	}

	@Override
	public ArrayList<FestivalVO> festivalSearch(HashMap<String, Object> map) {
		return dao.festivalSearch(map);
	}

}
