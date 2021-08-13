package com.devpro.thirtyoneGK.entities;

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_saleorder")
public class SaleOrder extends BaseEntity{
	@Column(name = "code", length = 45, nullable = false)
	private String code;
	@Column(name = "total",precision = 13, scale = 0,  nullable = false)
	private BigDecimal total;
	@Column(name = "customer_name", length = 100, nullable = false)
	private String customer_name;
	@Column(name = "customer_address", length = 100, nullable = false)
	private String customer_address;
	@Column(name = "customer_phone", length = 100, nullable = false)
	private String customer_phone;
	@Column(name = "customer_email", length = 100, nullable = false)
	private String customer_email;
	@Column(name = "seo")
	private String seo;
	public String getSeo() {
		return seo;
	}
	public void setSeo(String seo) {
		this.seo = seo;
	}
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "saleOrder_pros",
			fetch = FetchType.EAGER)
	private Set<SaleOrder_pro> saleOrder_pros = new HashSet<SaleOrder_pro>();
	
	public void addSOPro(SaleOrder_pro saleOrder_pro) {
		saleOrder_pros.add(saleOrder_pro);
		saleOrder_pro.setSaleOrder_pros(this);
		
	}
	public void deletePro(SaleOrder_pro saleOrder_pro) {
		saleOrder_pros.remove(saleOrder_pro);
		saleOrder_pro.setSaleOrder_pros(null);
	}
	
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public BigDecimal getTotal() {
		return total;
	}
	public void setTotal(BigDecimal total) {
		this.total = total;
	}
	public String getCustomer_name() {
		return customer_name;
	}
	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}
	public String getCustomer_address() {
		return customer_address;
	}
	public void setCustomer_address(String customer_address) {
		this.customer_address = customer_address;
	}
	public String getCustomer_phone() {
		return customer_phone;
	}
	public void setCustomer_phone(String customer_phone) {
		this.customer_phone = customer_phone;
	}
	public String getCustomer_email() {
		return customer_email;
	}
	public void setCustomer_email(String customer_email) {
		this.customer_email = customer_email;
	}
	public Set<SaleOrder_pro> getSaleOrder_pros() {
		return saleOrder_pros;
	}
	public void setSaleOrder_pros(Set<SaleOrder_pro> saleOrder_pros) {
		this.saleOrder_pros = saleOrder_pros;
	}
	
	
	
	
	
}
