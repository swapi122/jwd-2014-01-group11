package conceptmaps.model;

// Generated Oct 15, 2014 7:24:51 PM by Hibernate Tools 4.3.1

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Role generated by hbm2java
 */
@Entity
@Table(name = "role", catalog = "conceptmapsdb")
public class Role implements java.io.Serializable {

	private int idRole;
	private String roleName;
	private String notes;
	private Set<User> users = new HashSet<User>(0);

	public Role() {
	}

	public Role(int idRole) {
		this.idRole = idRole;
	}

	public Role(int idRole, String roleName, String notes, Set<User> users) {
		this.idRole = idRole;
		this.roleName = roleName;
		this.notes = notes;
		this.users = users;
	}

	@Id
	@Column(name = "idRole", unique = true, nullable = false)
	public int getIdRole() {
		return this.idRole;
	}

	public void setIdRole(int idRole) {
		this.idRole = idRole;
	}

	@Column(name = "roleName", length = 45)
	public String getRoleName() {
		return this.roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	@Column(name = "notes", length = 45)
	public String getNotes() {
		return this.notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "role")
	public Set<User> getUsers() {
		return this.users;
	}

	public void setUsers(Set<User> users) {
		this.users = users;
	}

}
