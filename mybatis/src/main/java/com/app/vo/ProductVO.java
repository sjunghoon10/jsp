package com.app.vo;

import java.util.Objects;

// 테이블보고 VO 구성하기
public class ProductVO {
	private Long id;
	private String ProductName;
	private int ProductPrice;
	private int ProductStock;
	
	public ProductVO() {
	}
	
	public ProductVO(Long id, String productName, int productPrice, int productStock) {
		super();
		this.id = id;
		ProductName = productName;
		ProductPrice = productPrice;
		ProductStock = productStock;
	}

	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ProductVO other = (ProductVO) obj;
		return Objects.equals(id, other.id);
	}

	@Override
	public String toString() {
		return "ProductVO [id=" + id + "]";
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getProductName() {
		return ProductName;
	}

	public void setProductName(String productName) {
		ProductName = productName;
	}

	public int getProductPrice() {
		return ProductPrice;
	}

	public void setProductPrice(int productPrice) {
		ProductPrice = productPrice;
	}

	public int getProductStock() {
		return ProductStock;
	}

	public void setProductStock(int productStock) {
		ProductStock = productStock;
	}
	
}
