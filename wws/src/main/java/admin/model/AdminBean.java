package admin.model;

import java.io.Serializable;
import java.util.Date;



public class AdminBean implements Serializable{
	private static final long serialVersionUID = 1L;
	private int admIdx;
	private String id ;
	private String pwd;
	private String name;
	private String phone;
	private String email;
	private int auth;
	private Date rgstDate;
	
	
	
	public int getAdmIdx() {
		return admIdx;
	}
	public void setAdmIdx(int admIdx) {
		this.admIdx = admIdx;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public void setAuth(int auth) {
		this.auth = auth;
	}
	public int getAuth() {
		return auth;
	}
	public Date getRgstDate() {
		return rgstDate;
	}
	public void setRgstDate(Date rgstDate) {
		this.rgstDate = rgstDate;
	}
	

}
