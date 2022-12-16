package com.spring_boot.project.dao;

import java.util.ArrayList;

import com.spring_boot.project.model.BoardVO;

public interface IBoardDAO {
    public ArrayList<BoardVO>listAllBoard(); //게시판 전체 조회
    public void writeboard(BoardVO boa);//게시글 쓰기
    public void updateboard(BoardVO boa);//게시글 수정
    public void deleteboard(String id);//게시글 삭제
    public void updateviwe(String id);//조회수증감
    public BoardVO boardread(String id);

}
