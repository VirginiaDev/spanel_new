package user;

public class Message {

	private int id;
	private int gatewayId;
	private String userName;
	private String campaignName;
	private String senderId;
	private String contacts;
	private String message;
	private String timeZone;
	private String status;
	private String submissionDate;
	private String reportStatus;
	private String errorCode;
	private String messageId;
	private String trafficId;
	
	
	public String getMessageId() {
		return messageId;
	}
	public void setMessageId(String messageId) {
		this.messageId = messageId;
	}
	public String getTrafficId() {
		return trafficId;
	}
	public void setTrafficId(String trafficId) {
		this.trafficId = trafficId;
	}
	public String getReportStatus() {
		return reportStatus;
	}
	public void setReportStatus(String reportStatus) {
		this.reportStatus = reportStatus;
	}
	public String getErrorCode() {
		return errorCode;
	}
	public void setErrorCode(String errorCode) {
		this.errorCode = errorCode;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getCampaignName() {
		return campaignName;
	}
	public void setCampaignName(String campaignName) {
		this.campaignName = campaignName;
	}
	public String getSenderId() {
		return senderId;
	}
	public void setSenderId(String senderId) {
		this.senderId = senderId;
	}
	public String getContacts() {
		return contacts;
	}
	public void setContacts(String contacts) {
		this.contacts = contacts;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getTimeZone() {
		return timeZone;
	}
	public void setTimeZone(String timeZone) {
		this.timeZone = timeZone;
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
	public int getGatewayId() {
		return gatewayId;
	}
	public void setGatewayId(int gatewayId) {
		this.gatewayId = gatewayId;
	}

	
	
}
