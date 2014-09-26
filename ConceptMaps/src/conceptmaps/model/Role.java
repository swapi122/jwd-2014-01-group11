package conceptmaps.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Role {
	@Id
	private String Role_ID;
	private String Name;
	private int role;
	
	public Role(String iD, String name, int role) {
		super();
		Role_ID = iD;
		Name = name;
		this.role = role;
	}

	/**
	 * 
	 */
	public Role() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getID() {
		return Role_ID;
	}

	public void setID(String iD) {
		Role_ID = iD;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public int getRole() {
		return role;
	}

	public void setRole(int role) {
		this.role = role;
	}
	
}
