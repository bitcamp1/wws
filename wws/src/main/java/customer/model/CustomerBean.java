package customer.model;

import java.io.Serializable;
import java.util.Date;


public class CustomerBean implements Serializable{
	private static final long serialVersionUID = 1L;
	private int custIdx;
	private String customer;
	private String bizNo;
	private String phone;
	private String manager;
	private String mgrTel;
	private String mgrCel;
	private String mgrEmail;
	private String partner;
	private String ptrTel;
	private String ptrCel;
	private String ptrEmail;
	private int posting;
	private Date rgstDate;
	private String custId;
	public int getCustIdx() {
		return custIdx;
	}
	public void setCustIdx(int custIdx) {
		this.custIdx = custIdx;
	}
	public String getCustomer() {
		return customer;
	}
	public void setCustomer(String customer) {
		this.customer = customer;
	}
	public String getBizNo() {
		return bizNo;
	}
	public void setBizNo(String bizNo) {
		this.bizNo = bizNo;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getManager() {
		return manager;
	}
	public void setManager(String manager) {
		this.manager = manager;
	}
	public String getMgrTel() {
		return mgrTel;
	}
	public void setMgrTel(String mgrTel) {
		this.mgrTel = mgrTel;
	}
	public String getMgrCel() {
		return mgrCel;
	}
	public void setMgrCel(String mgrCel) {
		this.mgrCel = mgrCel;
	}
	public String getMgrEmail() {
		return mgrEmail;
	}
	public void setMgrEmail(String mgrEmail) {
		this.mgrEmail = mgrEmail;
	}
	public String getPartner() {
		return partner;
	}
	public void setPartner(String partner) {
		this.partner = partner;
	}
	public String getPtrTel() {
		return ptrTel;
	}
	public void setPtrTel(String ptrTel) {
		this.ptrTel = ptrTel;
	}
	public String getPtrCel() {
		return ptrCel;
	}
	public void setPtrCel(String ptrCel) {
		this.ptrCel = ptrCel;
	}
	public String getPtrEmail() {
		return ptrEmail;
	}
	public void setPtrEmail(String ptrEmail) {
		this.ptrEmail = ptrEmail;
	}
	
	public int getPosting() {
		return posting;
	}
	public void setPosting(int posting) {
		this.posting = posting;
	}
	public Date getRgstDate() {
		return rgstDate;
	}
	public void setRgstDate(Date rgstDate) {
		this.rgstDate = rgstDate;
	}
	public String getCustId() {
		return custId;
	}
	public void setCustId(String custId) {
		this.custId = custId;
	}
	
	

	
}