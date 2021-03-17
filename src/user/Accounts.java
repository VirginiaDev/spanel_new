package user;

public class Accounts {
	private int id;
	private String parentAccountId;
	private String systemId;
	private String password;
	private String txCount;
	private String rxCount;
	private String txRxCount;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getParentAccountId() {
		return parentAccountId;
	}
	public void setParentAccountId(String parentAccountId) {
		this.parentAccountId = parentAccountId;
	}
	public String getSystemId() {
		return systemId;
	}
	public void setSystemId(String systemId) {
		this.systemId = systemId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getTxCount() {
		return txCount;
	}
	public void setTxCount(String txCount) {
		this.txCount = txCount;
	}
	public String getRxCount() {
		return rxCount;
	}
	public void setRxCount(String rxCount) {
		this.rxCount = rxCount;
	}
	public String getTxRxCount() {
		return txRxCount;
	}
	public void setTxRxCount(String txRxCount) {
		this.txRxCount = txRxCount;
	}
	
	

}
