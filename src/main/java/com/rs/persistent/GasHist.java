package com.rs.persistent;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.IdType;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;

/**
 *
 * 
 *
 */
@TableName("gas_hist")
public class GasHist implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/**  */
	@TableId(type = IdType.UUID)
	private String id;

	/**  */
	@TableField(value = "card_id")
	private String cardId;

	/**  */
	private String name;

	/**  */
	private String date;

	/**  */
	private String liter;

	/**  */
	private String totalPrice;

	/**  */
	private String score;

	/**  */
	private String time;

	/**  */
	private String gasNumber;

	/**  */
	private String type;

	/**  */
	private String place;

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCardId() {
		return this.cardId;
	}

	public void setCardId(String cardId) {
		this.cardId = cardId;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDate() {
		return this.date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getLiter() {
		return this.liter;
	}

	public void setLiter(String liter) {
		this.liter = liter;
	}

	public String getTotalPrice() {
		return this.totalPrice;
	}

	public void setTotalPrice(String totalPrice) {
		this.totalPrice = totalPrice;
	}

	public String getScore() {
		return this.score;
	}

	public void setScore(String score) {
		this.score = score;
	}

	public String getTime() {
		return this.time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getGasNumber() {
		return this.gasNumber;
	}

	public void setGasNumber(String gasNumber) {
		this.gasNumber = gasNumber;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getPlace() {
		return this.place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

}
