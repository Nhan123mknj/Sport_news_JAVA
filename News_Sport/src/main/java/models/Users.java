package models;

public class Users {
	private int id;
	private String username;
	private String password;
	private int enable;
	private String fullname;
	private String email;
	private String telephone;
	private int role;
	
	public Users() {
		super();
		// TODO Auto-generated constructor stub
	}

	

	public Users(int id, String username, String password, int enable, String fullname, String email, String telephone,
			int role) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.enable = enable;
		this.fullname = fullname;
		this.email = email;
		this.telephone = telephone;
		this.role = role;
	}



	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public int getEnable() {
		return enable;
	}
	public void setEnable(int enable) {
		this.enable = enable;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	
	public int getRole() {
		return role;
	}



	public void setRole(int role) {
		this.role = role;
	}



	@Override
	public String toString() {
		return "Users [id=" + id + ", username=" + username + ", email=" + email + ", password=" + password
				+ ", enable=" + enable + ", fullname=" + fullname + ", telephone=" + telephone + "]";
	}

}
