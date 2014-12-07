package tgate.model;

import java.io.Serializable;
import java.util.Date;

import contract.model.ContractBean;

import mobile.model.MobileBean;
import tariff.model.TariffBean;
import customer.model.CustomerBean;


public class TgateBean implements Serializable {
	private static final long serialVersionUID = 1L;

	private int tgIdx;
	private String tgUrl;
	int totalPrice;
	private String model;
	private int tffIdx;
	private String tffId;
	private String custId;
	private String joinType;
	private Date rgstDate;
	CustomerBean csBean;
	MobileBean mbBean;
	TariffBean tfBean;
	ContractBean ctBean;
	public int getTgIdx() {
		return tgIdx;
	}
	public void setTgIdx(int tgIdx) {
		this.tgIdx = tgIdx;
	}
	public String getTgUrl() {
		return tgUrl;
	}
	public void setTgUrl(String tgUrl) {
		this.tgUrl = tgUrl;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	
	public int getTffIdx() {
		return tffIdx;
	}
	public void setTffIdx(int tffIdx) {
		this.tffIdx = tffIdx;
	}
	public String getCustId() {
		return custId;
	}
	public void setCustId(String custId) {
		this.custId = custId;
	}
	public String getJoinType() {
		return joinType;
	}
	public void setJoinType(String joinType) {
		this.joinType = joinType;
	}
	public Date getRgstDate() {
		return rgstDate;
	}
	public void setRgstDate(Date rgstDate) {
		this.rgstDate = rgstDate;
	}
	public CustomerBean getCsBean() {
		return csBean;
	}
	public void setCsBean(CustomerBean csBean) {
		this.csBean = csBean;
	}
	public MobileBean getMbBean() {
		return mbBean;
	}
	public void setMbBean(MobileBean mbBean) {
		this.mbBean = mbBean;
	}
	public TariffBean getTfBean() {
		return tfBean;
	}
	public void setTfBean(TariffBean tfBean) {
		this.tfBean = tfBean;
	}
	public ContractBean getCtBean() {
		return ctBean;
	}
	public void setCtBean(ContractBean ctBean) {
		this.ctBean = ctBean;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	
	public String getTffId() {
		return tffId;
	}
	public void setTffId(String tffId) {
		this.tffId = tffId;
	}
	@Override
	public String toString() {
		return "TgateBean [tgIdx=" + tgIdx + ", tgUrl=" + tgUrl
				+ ", totalPrice=" + totalPrice + ", model=" + model
				+ ", tffIdx=" + tffIdx + ", tffId=" + tffId + ", custId="
				+ custId + ", joinType=" + joinType + ", rgstDate=" + rgstDate
				+ ", csBean=" + csBean + ", mbBean=" + mbBean + ", tfBean="
				+ tfBean + ", ctBean=" + ctBean + "]";
	}
	
	
	
	
}
