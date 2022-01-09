package apply;

public class Member {
	private int id;
	 private String userName;
    private String userid;
    private String leave;
    private String date;
    private String days;
    private String assign;
    
    public Member(int id, String userName, String userid, String leave, 
    		String date, String days, String assign) {
	this.id = id;
	this.userName = userName;
	this.userid = userid;
	this.leave = leave;
	this.date = date;
	this.days = days;
	this. assign =  assign;
    }

    public int getId() {
        return id;
    }

    public String getUserName() {
        return userName;
    }

    public String getuserid() {
        return userid;
    }

    public String getleave() {
        return leave;
    }

    public String getdate() {
        return date;
    }

    public String getdays() {
        return days;
    } 
    public String getassign() {
        return assign;
    } 
}



