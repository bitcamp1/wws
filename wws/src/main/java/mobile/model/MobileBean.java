package mobile.model;



import java.io.Serializable;
import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import customer.model.CustomerBean;


public class MobileBean implements Serializable {
	private static final long serialVersionUID = 1L;
	private int mbIdx;
	private String company;
	private String mobile;
	private String model;
	private int mbPrice;
	private String mImg;
	private String dImg;
	private String mainImgIdx;
	private String dtlImgIdx;
	private MultipartFile mainImg;
	private MultipartFile dtlImg;
	private String custId;
	private CustomerBean csBean;
	private String dtlUrl;
	
	private Date rgstDate;
	
	public int getMbIdx() {
		return mbIdx;
	}
	public void setMbIdx(int mbIdx) {
		this.mbIdx = mbIdx;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	
	
	public int getMbPrice() {
		return mbPrice;
	}
	public void setMbPrice(int mbPrice) {
		this.mbPrice = mbPrice;
	}
	public Date getRgstDate() {
		return rgstDate;
	}
	public void setRgstDate(Date rgstDate) {
		this.rgstDate = rgstDate;
	}
	public String getMainImgIdx() {
		return mainImgIdx;
	}
	public void setMainImgIdx(String mainImgIdx) {
		this.mainImgIdx = mainImgIdx;
	}
	public String getDtlImgIdx() {
		return dtlImgIdx;
	}
	public void setDtlImgIdx(String dtlImgIdx) {
		this.dtlImgIdx = dtlImgIdx;
	}
	public MultipartFile getMainImg() {
		return mainImg;
	}
	public void setMainImg(MultipartFile mainImg) {
		this.mainImg = mainImg;
	}
	public MultipartFile getDtlImg() {
		return dtlImg;
	}
	public void setDtlImg(MultipartFile dtlImg) {
		this.dtlImg = dtlImg;
	}
	public String getmImg() {
		return mImg;
	}
	public void setmImg(String mImg) {
		this.mImg = mImg;
	}
	public String getdImg() {
		return dImg;
	}
	public void setdImg(String dImg) {
		this.dImg = dImg;
	}
	public String getCustId() {
		return custId;
	}
	public void setCustId(String custId) {
		this.custId = custId;
	}
	public CustomerBean getCsBean() {
		return csBean;
	}
	public void setCsBean(CustomerBean csBean) {
		this.csBean = csBean;
	}
	public String getDtlUrl() {
		return dtlUrl;
	}
	public void setDtlUrl(String dtlUrl) {
		this.dtlUrl = dtlUrl;
	}
	
	
	
	
	
	
	
	
	
}
