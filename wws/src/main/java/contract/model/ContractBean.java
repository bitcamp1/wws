package contract.model;

import java.io.Serializable;
import java.util.Date;

public class ContractBean implements Serializable{
	private static final long serialVersionUID = 1L;
	private int ctrIdx;
	private String joinType;
	private int joinFee; 
	private int usim;
	private int installPrice;
	private int iMonth;
	private String joinNm;
	private Date rgstDate;
	
	
	
	public int getCtrIdx() {
		return ctrIdx;
	}
	public void setCtrIdx(int ctrIdx) {
		this.ctrIdx = ctrIdx;
	}
	public String getJoinType() {
		return joinType;
	}
	public void setJoinType(String joinType) {
		this.joinType = joinType;
	}
	public int getJoinFee() {
		return joinFee;
	}
	public void setJoinFee(int joinFee) {
		this.joinFee = joinFee;
	}
	public int getUsim() {
		return usim;
	}
	public void setUsim(int usim) {
		this.usim = usim;
	}
	public int getInstallPrice() {
		return installPrice;
	}
	public void setInstallPrice(int installPrice) {
		this.installPrice = installPrice;
	}
	public int getiMonth() {
		return iMonth;
	}
	public void setiMonth(int iMonth) {
		this.iMonth = iMonth;
	}
	
	public String getJoinNm() {
		return joinNm;
	}
	public void setJoinNm(String joinNm) {
		this.joinNm = joinNm;
	}
	public Date getRgstDate() {
		return rgstDate;
	}
	public void setRgstDate(Date rgstDate) {
		this.rgstDate = rgstDate;
	}
	
	
	
	
	
	
	
	
	
}
