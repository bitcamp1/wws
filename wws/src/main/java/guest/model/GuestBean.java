package guest.model;

import java.io.Serializable;
import java.util.Date;

public class GuestBean implements Serializable{
	private static final long serialVersionUID = 1L;
	private int gstIdx;
	private String name;
	private String phone;
	private String birth;
	private String gender;
	private String info;
	private String provide;
	private Date rgstDate;
	
	
	

	public int getGstIdx() {
		return gstIdx;
	}
	public void setGstIdx(int gstIdx) {
		this.gstIdx = gstIdx;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public String getProvide() {
		return provide;
	}
	public void setProvide(String provide) {
		this.provide = provide;
	}
	public Date getRgstDate() {
		return rgstDate;
	}
	public void setRgstDate(Date rgstDate) {
		this.rgstDate = rgstDate;
	}
	
	
	
	
}
