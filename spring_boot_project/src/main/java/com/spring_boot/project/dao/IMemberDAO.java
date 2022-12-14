package com.spring_boot.project.dao;

import com.spring_boot.project.model.MemberVO;

public interface IMemberDAO {
	public String loginCheck(String id);
	public void insertMember(MemberVO vo);
	public String idCheck(String memId); // 회원가입 아이디 중복 확인
}
