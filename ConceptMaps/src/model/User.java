package model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "user")
public class User {
	@Id
	private String user_id;
	private String name;
	private Date dateBirth;
	private boolean female;
	private String passwork; 
	
	@OneToMany
	private Role role;
	
	public User(String iD_Email, String name, Date dateBirth, boolean female,
			String passwork, Role role) {
		super();
		user_id = iD_Email;
		this.name = name;
		this.dateBirth = dateBirth;
		this.female = female;
		this.passwork = passwork;
		this.role = role;
	}
	
	public User() {
		super();
	}

	public String getID_Email() {
		return user_id;
	}
	public void setID_Email(String iD_Email) {
		user_id = iD_Email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getDateBirth() {
		return dateBirth;
	}
	public void setDateBirth(Date dateBirth) {
		this.dateBirth = dateBirth;
	}
	public boolean isFemale() {
		return female;
	}
	public void setFemale(boolean female) {
		this.female = female;
	}
	public String getPasswork() {
		return passwork;
	}
	public void setPasswork(String passwork) {
		this.passwork = passwork;
	}
	
	public Role getRole() {
		return role;
	}
	public void setRole(Role role) {
		this.role = role;
	}
	//private ConCeptMaps [] mapsList;
	
}
