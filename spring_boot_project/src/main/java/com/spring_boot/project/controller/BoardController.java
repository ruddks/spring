package com.spring_boot.project.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring_boot.project.model.BoardVO;
import com.spring_boot.project.service.BoardService;

@Controller
public class BoardController {
	@Autowired
	private BoardService service;
	@RequestMapping("/board/write")
	public String boardWirteForm(BoardVO boa) {
		service.writeboard(boa);
		return "redirect:/board/board";
	}
	@RequestMapping("/board/board")
	public String viewBoardListAll(Model model) {
		ArrayList<BoardVO> boaList=service.listAllBoard();
		model.addAttribute("boaList",boaList);
		return "board/board";
	}
	@RequestMapping("/boardwrite")
	public String boardwrite() {
		return "board/boardwrite";
	}
	@RequestMapping("/board/boardread/{id}")
	public String boardread(@PathVariable String id,
			  Model model) {
		BoardVO boa = service.boardread(id);
		model.addAttribute("boa",boa);
		return "board/boardread";
	}
	@RequestMapping("/board/deleteboard/{id}")
	public String deleteboard(@PathVariable String id) {
		service.deleteboard(id);
		return "redirect:/board/board";
	}
	@RequestMapping("/board/boardupdate/{id}")
	public String updateboardForm(@PathVariable String id,
			  Model model) {
		BoardVO boa=service.boardread(id);
		model.addAttribute("boa",boa);
		return "board/boardupdate";
	}
	@RequestMapping("/board/updateboard")
	public String updateboard(BoardVO boa) {
		service.updateboard(boa);		
		// 수정된 데이터 저장 후 상품 조회 화면으로 포워딩  
		return "redirect:/board/board";
	}
	@RequestMapping("/board/updateviwe/{id}")
	public String updateviwe(@PathVariable String id, Model model) {
		BoardVO boa=service.boardread(id);	
		model.addAttribute("boa",boa);
		// 수정된 데이터 저장 후 상품 조회 화면으로 포워딩  
		return "board/board";
	}
	
	
}
