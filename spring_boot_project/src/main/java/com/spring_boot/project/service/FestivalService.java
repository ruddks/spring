/*package com.spring_boot.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.spring_boot.project.dao.IFestivalDAO;
import com.spring_boot.project.model.FestivalVO;

public class FestivalService implements IFestivalService {
	@Autowired
	@Qualifier("IFestivalDAO")
	private IFestivalDAO dao;
	
	@Override
	public ArrayList<FestivalVO> listAllFesfival() {
		return null;
	}

	@Override
	public String fesNoCheck(String fesNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<FestivalVO> FesfivalSearch(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<FestivalVO> regListFestival(String regionNo) {
		return dao.regListFestival(regionNo);
	}
	@Override
	public FestivalVO detailViewFestival(String fesNo) {		
		return dao.detailViewFestival(fesNo);
	}
	

}*/
