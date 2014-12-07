package tariff.model;

import java.io.Serializable;
import java.util.Date;

public class TariffBean implements Serializable{
	private static final long serialVersionUID = 1L;
	private int tffIdx;
	private String tariff;
	private int tffPrice;
	private String tffId;
	private String letter;
	private String data;
	private String mvoip;
	private int discount;
	private int tffMonth; // 약정개월수
	private Date rgstDate;
	public int getTffIdx() {
		return tffIdx;
	}
	public void setTffIdx(int tffIdx) {
		this.tffIdx = tffIdx;
	}
	public String getTariff() {
		return tariff;
	}
	public void setTariff(String tariff) {
		this.tariff = tariff;
	}
	
	
	public int getTffPrice() {
		return tffPrice;
	}
	public void setTffPrice(int tffPrice) {
		this.tffPrice = tffPrice;
	}
	public String getTffId() {
		return tffId;
	}
	public void setTffId(String tffId) {
		this.tffId = tffId;
	}
	public String getLetter() {
		return letter;
	}
	public void setLetter(String letter) {
		this.letter = letter;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public String getMvoip() {
		return mvoip;
	}
	public void setMvoip(String mvoip) {
		this.mvoip = mvoip;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	public Date getRgstDate() {
		return rgstDate;
	}
	
	public int getTffMonth() {
		return tffMonth;
	}
	public void setTffMonth(int tffMonth) {
		this.tffMonth = tffMonth;
	}
	public void setRgstDate(Date rgstDate) {
		this.rgstDate = rgstDate;
	}
	
	
	
	
}
