package com.spring.service;

import java.util.List;

import com.spring.domain.CartVO;

public interface CartService {
	//장바구니 목록 조회
	public List<CartVO> cartList();
}
