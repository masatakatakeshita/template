
package com.internousdev.template.action;

import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.template.dao.BuyItemDAO;
import com.internousdev.template.dto.BuyItemDTO;
import com.opensymphony.xwork2.ActionSupport;

public class BuyItemAction extends ActionSupport implements SessionAware{


	public BuyItemDAO buyItemDAO = new BuyItemDAO();


	/**
	 * アイテム購入個数
	 */
	public int count;

	/**
	 * 支払い方法
	 */
	public String pay;

	/**
	 * 処理結果
	 */
	public String result;

	/**
	 * 商品id
	 */
	public int id;

	/**
	 * 商品名
	 */
	public String itemName;

	/**
	 * 価格
	 */
	public String itemPrice;

	/**
	 * 画像
	 */
	public String itemImage;

	/**
	 * リスト
	 */
	public ArrayList<BuyItemDTO> itemList=new ArrayList<BuyItemDTO>();

	/**
	 * セッション情報
	 */
	private Map<String, Object> session;


	/**
	 * 商品情報取得メソッド
	 *
	 * @author internous
	 */
	 public String execute(){
	        String result=ERROR;
	        BuyItemDAO dao =new  BuyItemDAO();

	        itemList=dao.select(id);

	        if(itemList.size()>0){
	        	session.put("id", id);
	        	session.put("price", itemList.get(0).getItemPrice());
	            result=SUCCESS;
	        }

	        return result;
	        }




	public ArrayList<BuyItemDTO> getItemList() {
	    return itemList;
	}

	public void setItemList(ArrayList<BuyItemDTO> itemList) {
		this.itemList = itemList;
	}



	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}



	public String getPay() {
		return pay;
	}

	public void setPay(String pay) {
		this.pay = pay;
	}



	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}



	public String getItemPrice() {
		return itemPrice;
	}

	public void setItemPrice(String itemPrice) {
		this.itemPrice = itemPrice;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}



	public String getItemImage(){
		return itemImage;
	}

	public void setItemImage(String itemImage){
		this.itemImage = itemImage;
	}



	public void setSession(Map<String, Object> session){
		this.session = session;
	}



}
