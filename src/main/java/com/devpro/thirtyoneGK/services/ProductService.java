package com.devpro.thirtyoneGK.services;

import java.io.File; 
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Table;
import javax.transaction.Transactional;

import org.aspectj.apache.bcel.ExceptionConstants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.thirtyoneGK.conf.MVCConf;
import com.devpro.thirtyoneGK.dto.ProductSearchModel;
import com.devpro.thirtyoneGK.entities.Product;
import com.devpro.thirtyoneGK.entities.Product_img;
import com.github.slugify.Slugify;

@Service
public class ProductService extends BaseService<Product> {

	@PersistenceContext
	EntityManager entityManager;
	@Autowired
	Product_imgsService product_imgsService;
	@Override
	protected EntityManager em() {
		return entityManager;
	}

	@Override
	protected Class<Product> clazz() {
		return Product.class;
	}
	private boolean isEmptyUploadFile(MultipartFile[] images) {
		if (images == null || images.length <= 0)
			return true;
		
		if (images.length == 1 && images[0].getOriginalFilename().isEmpty())
			return true;
		
		return false;
	}

	private boolean isEmptyUploadFile(MultipartFile image) {
		return image == null || image.getOriginalFilename().isEmpty();
	}
	
	@Transactional(rollbackOn = Exception.class)
	public Product edit(Product product, MultipartFile avatar, MultipartFile[] pictures)
			throws Exception {
		try {
			// lay thong tin san pham trong db.
			Product productOnDb = super.getById(product.getId());
			
			// avatar
			if(!isEmptyUploadFile(avatar)) {
				// xoa avatar cu di
				new File(MVCConf.ROOT_UPLOAD_PATH + productOnDb.getAvatar()).delete();
				
				// add avartar moi
				avatar.transferTo(new File(MVCConf.ROOT_UPLOAD_PATH + "product/avatar/" + avatar.getOriginalFilename()));
				product.setAvatar("product/avatar/" + avatar.getOriginalFilename());
			} else {
				// su dung lai avatar cu
				product.setAvatar(productOnDb.getAvatar());
			}
			
			// product images
			if(!isEmptyUploadFile(pictures)) {
				// xoa danh sach anh cu di
				List<Product_img> productImagesOnDb = productOnDb.getProducts_img();
				for(Product_img pic : productImagesOnDb) {
					new File(MVCConf.ROOT_UPLOAD_PATH + pic.getPath()).delete();
//					product.deleteProductImages(pic);
					product_imgsService.delete(pic);
				}
				
				// update danh sach anh moi
				for(MultipartFile pic : pictures) {
					pic.transferTo(new File(MVCConf.ROOT_UPLOAD_PATH + "product/pictures/" + pic.getOriginalFilename()));
					
					Product_img pi = new Product_img();
					pi.setPath("product/pictures/" + pic.getOriginalFilename());
					pi.setTitle(pic.getOriginalFilename());
					product.addProduct_img(pi);
				}
			}
			
			// tao seo cho product
			product.setSeo(new Slugify().slugify(product.getTitle()));
			
			// save to db
			Product saved = super.saveOrUpdate(product);
			return saved;
		} catch (Exception e) {
			throw e;
		}
	}
	
	@Transactional(rollbackOn = Exception.class)
	public Product save(Product product, MultipartFile avatar, MultipartFile[] pictures)
			throws Exception {
		try {
			// avatar
			if(!isEmptyUploadFile(avatar)) {
				avatar.transferTo(new File(MVCConf.ROOT_UPLOAD_PATH + "product/avatar/" + avatar.getOriginalFilename()));
				product.setAvatar("product/avatar/" + avatar.getOriginalFilename());
			}
			
			// product images
			if(!isEmptyUploadFile(pictures)) {
				for(MultipartFile pic : pictures) {
					pic.transferTo(new File(MVCConf.ROOT_UPLOAD_PATH + "product/pictures/" + pic.getOriginalFilename()));
					
					Product_img pi = new Product_img();
					pi.setPath("product/pictures/" + pic.getOriginalFilename());
					pi.setTitle(pic.getOriginalFilename());
					product.addProduct_img(pi);
				}
			}
			
			// tao seo cho product
			product.setSeo(new Slugify().slugify(product.getTitle()));
			
			// save to db
			Product saved = super.saveOrUpdate(product);
			return saved;
		} catch (Exception e) {
			throw e;
		}
	}
	public List<Product> search(ProductSearchModel searchModel) {
		String sql = "SELECT * FROM tbl_products c WHERE 1=1";
		//tim kiem san pham theo categoryId
				if(searchModel.getCategoryId() > 0) {
					sql += " and c.category_id = " + searchModel.getCategoryId();
				}
				
				//tim kiem san pham theo categorySeo
				if(!StringUtils.isEmpty(searchModel.getCategorySeo())) {
					sql += " and c.category_id in (select id from tbl_category k where k.seo = '"+searchModel.getCategorySeo()+"')";
				}
				
				//tim kiem san pham theo seachText
				if(!StringUtils.isEmpty(searchModel.getSearchText())) {
					sql += " and (c.title like '%"+searchModel.getSearchText()+"%'"
							+ " or c.detail_description like '%"+searchModel.getSearchText()+"%'"
							+ " or c.short_description like '%"+searchModel.getSearchText()+"%')";
					sql += " and c.status=1 ";
				}
				
				return executeNativeSql(sql);
			}
	public List<Product> findHot() {
		String sql = "SELECT * FROM tbl_products p WHERE 1=1 and p.is_hot=1 and p.status=1";
		return executeNativeSql(sql);
	}
}
