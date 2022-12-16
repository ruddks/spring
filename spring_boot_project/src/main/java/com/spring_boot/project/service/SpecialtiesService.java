package com.spring_boot.project.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot.project.dao.ISpecialtiesDAO;
import com.spring_boot.project.model.SpecialtiesVO;

@Service
public class SpecialtiesService implements ISpecialtiesService {
	@Autowired
	@Qualifier("ISpecialtiesDAO")
	private ISpecialtiesDAO dao;
	
	@Override
	public ArrayList<SpecialtiesVO> listAllSpecialties() {
		return dao.listAllSpecialties();
	}

	@Override
	public ArrayList<SpecialtiesVO> specialtiesSearch(HashMap<String, Object> map) {
		return dao.specialtiesSearch(map);
	}

	@Override
	public ArrayList<SpecialtiesVO> specialtiesopen(String regionNaem) {
		return dao.specialtiesopen(regionNaem);
	}

}
