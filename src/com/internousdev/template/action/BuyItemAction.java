
package com.internousdev.template.action;

import java.util.ArrayList;

import com.internousdev.template.dao.BuyItemDAO;
import com.internousdev.template.dto.BuyItemDTO;
import com.opensymphony.xwork2.ActionSupport;

public class BuyItemAction extends ActionSupport  {

	/**
	 * アイテム情報を取得
	 */


	/**
	 * アイテム購入個数
	 */
	public int count;

	/**
	 * 支払い方法
	 */
	public String pay;

	/**
	 * アイテム情報を格納
	 */

	/**
	 * 処理結果
	 */
	public String result;


	public int id;

	public String itemName;

	public String itemPrice;

	public String itemImage;


	 public ArrayList<BuyItemDTO> itemList=new ArrayList<BuyItemDTO>();


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
	            result=SUCCESS;
	        }


	        return result;
	        }




	    public ArrayList<BuyItemDTO> getPetList() {
			return itemList;
		}


		public void setPetList(ArrayList<BuyItemDTO> itemList) {
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

}
