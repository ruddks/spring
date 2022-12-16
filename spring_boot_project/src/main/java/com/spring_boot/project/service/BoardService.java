package com.spring_boot.project.service;

import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.spring_boot.project.dao.IBoardDAO;
import com.spring_boot.project.model.BoardVO;

@Service
public class BoardService implements IBoardService {
	    @Autowired
	    @Qualifier("IBoardDAO")
		private IBoardDAO dao;

		@Override
		public ArrayList<BoardVO> listAllBoard() {

			return dao.listAllBoard();
		}

		@Override
		public void writeboard(BoardVO boa) {
			dao.writeboard(boa);
		}

		@Override
		public void updateboard(BoardVO boa) {
			dao.updateboard(boa);
		}

		@Override
		public void deleteboard(String id) {
			dao.deleteboard(id);
			
		}

		@Override
		public BoardVO boardread(String id) {

			return dao.boardread(id);
		}

		@Override
		public void updateviwe(String id) {
	
		}
	}
