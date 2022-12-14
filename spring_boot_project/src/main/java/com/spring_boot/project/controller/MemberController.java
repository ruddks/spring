package com.spring_boot.project.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring_boot.project.model.MemberVO;
import com.spring_boot.project.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	MemberService service;
	
	// 로그인 폼 열기
	@RequestMapping("/member/loginForm")
	public String loginForm() {
		return "member/loginForm";
	}
	
	
	//비밀번호 암호화하기 이전 로그인 처리방식
	// 로그인 처리 : id와 pwd 전달 받아서 로그인 인증 완료 후 세션 설정
	@ResponseBody
	@RequestMapping("/member/login")
	public String loginCheck(@RequestParam HashMap<String, Object> param,
							 HttpSession session) {
		// 로그인 체크 결과 
		String result = service.loginCheck(param); //result: "success" 또는 "fail"

			
		// 아이디와 비밀번호 일치하면 (로그인 성공하면)
		//서비스에서"success"반환 받았으면
		if(result.equals("success")) {
			//로그인 성공하면 세션 변수 지정
			session.setAttribute("sid", param.get("id"));
			
		}
			
		return result;
	}
	
	// 로그아웃
	@RequestMapping("/member/logout")
	public String logout(HttpSession session) {
		//세션 무효화
		session.invalidate();		
		return "redirect:/"; // index로 포워딩 -> ProductController에 있는 @RequestMapping("/") 
	}
	
	//회원가입 폼 열기
	@RequestMapping("/member/joinForm")
	public String joinForm() {
		return "member/joinForm";
	}
	
	//회원가입 
		@RequestMapping("/member/insert")
		public String insert(MemberVO vo,
							 @RequestParam("memHp1") String memHp1,
							 @RequestParam("memHp2") String memHp2,
							 @RequestParam("memHp3") String memHp3) {
			//vodml memHP의 값을 수정해서 
			vo.setMemHP(memHp1 + "-" + memHp2 + "-" + memHp3);
			service.insertMember(vo);//수정된 vo전달 
			return "member/loginForm";//회원 가입 후 로그인 폼으로 이동
		}
	
		// 아이디 중복 확인
		@ResponseBody
		@RequestMapping("/member/idCheck")
		public String memIdCheck(@RequestParam("memId") String memId) {
			// 서비스 호출하고 DB에 prdNo 존재하면 prdNo 받고, 존재하지 않으면 null 받음
			String memId_result = service.idCheck(memId);
			
			String result = "use";
			if(memId_result != null)  // 존재한다면
				result = "no_use"; // 사용 못함
			
			return result;
		}
}
