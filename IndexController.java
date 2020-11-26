
package jp.co.internous.lollipop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import jp.co.internous.lollipop.model.domain.MstCategory;
import jp.co.internous.lollipop.model.domain.MstProduct;
import jp.co.internous.lollipop.model.form.SearchForm;
import jp.co.internous.lollipop.model.mapper.MstCategoryMapper;
import jp.co.internous.lollipop.model.mapper.MstProductMapper;
import jp.co.internous.lollipop.model.session.LoginSession;

@Controller
@RequestMapping("/lollipop")
public class IndexController {
	@Autowired
	private MstCategoryMapper categoryMapper;

	@Autowired
	private MstProductMapper productMapper;
	
	@Autowired
	private LoginSession loginSession;
	
	@RequestMapping("/")
	public String index(Model m) {
		
		if(!loginSession.getLogined() && loginSession.getTmpUserId() == 0) {
			int plusRandom = (int) Math.floor(Math.random() * 900_000_000)  +100_000_000;
			int tmpUserId = plusRandom * -1;
			loginSession.setTmpUserId(tmpUserId);
		}
		
		// カテゴリを取得
		List<MstCategory> categories = categoryMapper.find();	
		
		// 商品情報を取得
		List<MstProduct> products = productMapper.find();
		
		m.addAttribute("categories", categories);
		m.addAttribute("selected", 0);
		m.addAttribute("products", products);
		m.addAttribute("loginSession",loginSession);
		return "index";
	}
	
	@RequestMapping("/searchItem")
	public String index(SearchForm sf, Model m) {
		List<MstProduct> products = null;

		String keywords = sf.getKeywords().replaceAll("　", " ").replaceAll("\\s{2,}", " ").trim();
		int category = sf.getCategory();
		
		if (sf.getCategory() == 0) {
			// カテゴリー未選択の状態
			products = productMapper.findByProductName(keywords.split(" "));
		} else {
			products = productMapper.findByCategoryAndProductName(category,keywords.split(" "));
			
		}

		List<MstCategory> categories = categoryMapper.find();
		m.addAttribute("keywords", keywords);
		m.addAttribute("selected", sf.getCategory()); 
		m.addAttribute("categories", categories); 
		m.addAttribute("products", products);
		m.addAttribute("loginSession",loginSession);
		
		return "index";
		
	}
}

