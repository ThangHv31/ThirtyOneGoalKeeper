package com.devpro.thirtyoneGK.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_saleorder_products")
public class SaleOrder_pro extends BaseEntity{
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "product_id")
	private Product product;
	 
	@Column(name = "quality")
	private Integer quality;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "saleorder_id")
	private SaleOrder saleOrder_pros;
	
	
	public Integer getQuality() {
		return quality;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public void setQuality(Integer quality) {
		this.quality = quality;
	}
	public SaleOrder getSaleOrder_pros() {
		return saleOrder_pros;
	}
	public void setSaleOrder_pros(SaleOrder saleOrder_pros) {
		this.saleOrder_pros = saleOrder_pros;
	}
	
	
	
}
