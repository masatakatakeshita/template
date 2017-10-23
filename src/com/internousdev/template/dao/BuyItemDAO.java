package com.internousdev.template.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.template.dto.BuyItemDTO;
import com.internousdev.template.util.DBConnector;

public class BuyItemDAO {

	private DBConnector dbConnector = new DBConnector();

	private Connection connection = dbConnector.getConnection();

	private BuyItemDTO buyItemDTO = new BuyItemDTO();

	/**
	 * 商品情報取得メソッド
	 *
	 * @return BuyItemDTO
	 */
	    ArrayList<BuyItemDTO> itemList=new ArrayList<BuyItemDTO>();
	    public ArrayList<BuyItemDTO> select(int id) {

		String sql = "select * from item_info_transaction where id=?";


		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, id);
			ResultSet resultSet = preparedStatement.executeQuery();

			while(resultSet.next()) {
				buyItemDTO.setId(resultSet.getInt("id"));
				buyItemDTO.setItemName(resultSet.getString("item_name"));
				buyItemDTO.setItemPrice(resultSet.getString("item_price"));
				buyItemDTO.setItemImage(resultSet.getString("item_image"));


				itemList.add(buyItemDTO);
			}

		} catch (SQLException e ) {
			e.printStackTrace();
		} finally {
			try{
				connection.close();
		}catch(SQLException e){
			e.printStackTrace();
			}
	}
		return itemList;
	}


}
