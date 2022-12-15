package com.spring_boot.project.service;

import java.util.ArrayList;
import org.springframework.stereotype.Repository;

import com.spring_boot.project.model.BoardVO;

@Repository("BoardMapper")
public interface IBoardService {

    public ArrayList<BoardVO>listAllBoard(); //게시판 전체 조회
    public void writeboard(BoardVO boa);//게시글 저장
    public void updateboard(BoardVO boa);//게시글 저장
    public void deleteboard(BoardVO boa);//게시글 저장
    public BoardVO boardread(String id);

		
	}
