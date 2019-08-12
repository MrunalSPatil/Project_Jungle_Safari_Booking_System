package admin_login;

public class tp_details {

	int no_of_days,no_of_seats_available,c_rate,a_rate,admin_id,discount;
	String reporting_place;
	
	String sdate,reporting_time;
	
	public String getSdate() {
		return sdate;
	}
	public String getReporting_time() {
		return reporting_time;
	}
	public void setReporting_time(String reporting_time) {
		this.reporting_time = reporting_time;
	}
	public void setSdate(String sdate) {
		this.sdate = sdate;
	}
	public int getDiscount() {
		return discount;
	}
	public void setDiscount(int discount) {
		this.discount = discount;
	}
	public String getReporting_place() {
		return reporting_place;
	}
	public void setReporting_place(String reporting_place) {
		this.reporting_place = reporting_place;
	}
	public int getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(int admin_id) {
		this.admin_id = admin_id;
	}
	String pname,details;
	public int getNo_of_days() {
		return no_of_days;
	}
	public void setNo_of_days(int no_of_days) {
		this.no_of_days = no_of_days;
	}
	public int getNo_of_seats_available() {
		return no_of_seats_available;
	}
	public void setNo_of_seats_available(int no_of_seats_available) {
		this.no_of_seats_available = no_of_seats_available;
	}
	public int getC_rate() {
		return c_rate;
	}
	public void setC_rate(int c_rate) {
		this.c_rate = c_rate;
	}
	public int getA_rate() {
		return a_rate;
	}
	public void setA_rate(int a_rate) {
		this.a_rate = a_rate;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	
}
