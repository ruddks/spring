package com.spring_boot.project.service;

import java.util.HashMap;

import com.spring_boot.project.model.MemberVO;

public interface IMemberService {
	public String loginCheck(HashMap<String, Object> map);

	void insertMember(MemberVO vo);
	public String idCheck(String memId); // 회원가입 아이디 중복 확인
}
