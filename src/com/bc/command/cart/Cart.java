package com.bc.command.cart;

import java.util.ArrayList;
import java.util.List;

import com.bc.model.dao.CartDAO;
import com.bc.model.vo.CartVO;

public class Cart {
	private List<CartVO> list;
	private int total;
	
	public Cart() {
		list = new ArrayList<CartVO>();
	}
	
	public List<CartVO> getList() { return list; }
	public int getTotal() { return total; }
	
	public void addProduct(String bCode, int bType) {
		CartVO vo = findProduct(bCode, bType);
		if (vo != null) {
			vo.setProductsCount(vo.getProductsCount() + 1); 
			total += vo.getSalePrice();
		} else {
			vo = CartDAO.selectOne(vo);
			
			vo.setProductsCount(1);
			
			list.add(vo);
			
			total += vo.getSalePrice();
		}
	}
	
	//카트에 제품이 있는지 확인
	public CartVO findProduct(String bCode, int bType) {
		CartVO vo = null;
		
		for (CartVO vo1 : list) {
			if (vo1.getbCode().equals(bCode) && vo1.getbType() == bType) {
				vo = vo1;
				break;
			}
		}
		return vo;
	}
}
