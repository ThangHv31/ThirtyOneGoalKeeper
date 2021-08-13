package com.devpro.thirtyoneGK.entities;

import java.math.BigDecimal; 
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.ManyToAny;

@Entity
@Table(name = "tbl_products")
public class Product extends BaseEntity{
	@Column(name = "title", length = 1000, nullable = false)
	private String title;
	
	@Column(name = "price",precision = 13, scale = 0, nullable = false)
	private BigDecimal price;
	
	@Column(name = "price_sale",precision = 13, scale = 0, nullable = true)
	private BigDecimal price_sale;
	@Column(name = "short_description", length = 3000, nullable = false)
	private String short_description;
	@Lob
	@Column(name = "detail_description", nullable = false, columnDefinition = "LONGTEXT")
	private String detail_description;
	
	@Column(name = "avatar", nullable = false)
	private String avatar;
	
	@Column(name = "seo", length = 1000, nullable = false)
	private String seo;
	
	@Column(name = "is_hot", length = 100, nullable = false)
	private Boolean isHot = Boolean.FALSE;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "category_id")
	private Categories categories;
	
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "product",
			fetch = FetchType.EAGER)
	private List<Product_img> products_img = new ArrayList<Product_img>();
	
	
	public void addProduct_img(Product_img product_img)
	{
		product_img.setProducts_img(this);
		products_img.add(product_img);
	}
	public void deleteProduct(Product_img product_img) {
		product_img.setProducts_img(null);
		products_img.remove(product_img);
		
	}
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public BigDecimal getPrice_sale() {
		return price_sale;
	}

	public void setPrice_sale(BigDecimal price_sale) {
		this.price_sale = price_sale;
	}

	public String getDetail_description() {
		return detail_description;
	}

	public void setDetail_description(String detail_description) {
		this.detail_description = detail_description;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public String getSeo() {
		return seo;
	}

	public void setSeo(String seo) {
		this.seo = seo;
	}

	public Boolean getIsHot() {
		return isHot;
	}

	public void setIsHot(Boolean isHot) {
		this.isHot = isHot;
	}

	public Categories getCategories() {
		return categories;
	}

	public void setCategories(Categories categories) {
		this.categories = categories;
	}
	public List<Product_img> getProducts_img() {
		return products_img;
	}
	public void setProducts_img(List<Product_img> products_img) {
		this.products_img = products_img;
	}
	public String getShort_description() {
		return short_description;
	}
	public void setShort_description(String short_description) {
		this.short_description = short_description;
	}
	
	
}
