package com.spring.mapper;

import java.util.List;

import com.spring.domain.Criteria;
import com.spring.domain.ShopVO;

public interface ShopMapper {
	public List<ShopVO> getList();
	public ShopVO read(Long pid);
	
	public List<ShopVO> getListVege();
	public List<ShopVO> getListFru();
	public List<ShopVO> getListJui();
	public List<ShopVO> getListDri();
	
	public List<ShopVO> getListWithPaging(Criteria cri);
}