package user;

public class Sessions {
	
	private int id;
	private String systemId;
	private String remoteIpAdress;
	private String remotePort;
	private String localIp;
	private String localPort;
	private String bindType;
	private String status;
	private String submissionDate;
	private String session;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSystemId() {
		return systemId;
	}
	public void setSystemId(String systemId) {
		this.systemId = systemId;
	}
	public String getRemoteIpAdress() {
		return remoteIpAdress;
	}
	public void setRemoteIpAdress(String remoteIpAdress) {
		this.remoteIpAdress = remoteIpAdress;
	}
	public String getRemotePort() {
		return remotePort;
	}
	public void setRemotePort(String remotePort) {
		this.remotePort = remotePort;
	}
	public String getLocalIp() {
		return localIp;
	}
	public void setLocalIp(String localIp) {
		this.localIp = localIp;
	}
	public String getLocalPort() {
		return localPort;
	}
	public void setLocalPort(String localPort) {
		this.localPort = localPort;
	}
	public String getBindType() {
		return bindType;
	}
	public void setBindType(String bindType) {
		this.bindType = bindType;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getSubmissionDate() {
		return submissionDate;
	}
	public void setSubmissionDate(String submissionDate) {
		this.submissionDate = submissionDate;
	}
	public String getSession() {
		return session;
	}
	public void setSession(String session) {
		this.session = session;
	}
	

}
