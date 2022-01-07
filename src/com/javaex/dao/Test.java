package com.javaex.dao;

import java.util.List;

import com.javaex.vo.GuestbookVo;

public class Test {

	public static void main(String[] args) {
		
		//Dao 테스트용
		GuestbookDao guestbookDao = new GuestbookDao();
		List<GuestbookVo> gbList = guestbookDao.getList();
		
		System.out.println(gbList.toString());

	}

}
