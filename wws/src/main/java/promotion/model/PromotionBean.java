package promotion.model;

import java.io.Serializable;
import java.util.Date;

public class PromotionBean implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private int promIdx;
	private String title;
	private String goods;
	private String message;
	private Date rgstDate;
	
	public int getPromIdx() {
		return promIdx;
	}
	public void setPromIdx(int promIdx) {
		this.promIdx = promIdx;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getGoods() {
		return goods;
	}
	public void setGoods(String goods) {
		this.goods = goods;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Date getRgstDate() {
		return rgstDate;
	}
	public void setRgstDate(Date rgstDate) {
		this.rgstDate = rgstDate;
	}

}
