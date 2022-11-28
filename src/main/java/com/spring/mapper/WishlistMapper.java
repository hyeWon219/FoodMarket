package com.spring.mapper;

import java.util.List;

import com.spring.domain.WishlistVO;
public interface WishlistMapper {
	public WishlistVO read(Long wno);
	public List<WishlistVO> getList();
	public void insert(WishlistVO wishlist);
	public int delete(Long wno);
	
}
