package member;

import java.util.Date;

public class MemberDTO {
	private String id;
	private String password;
	private String name;
	private Date birth;
	private String gender;
	private String email;
	private Date regdate;
	
	
	public MemberDTO() {
		
	}
	public MemberDTO(String id, String password, String name, Date birth, String gender, String email, Date regdate) {
		this.id = id;
		this.password = password;
		this.name = name;
		this.birth = birth;
		this.gender = gender;
		this.email = email;
		this.regdate = regdate;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	
	
}
