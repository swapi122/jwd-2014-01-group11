package conceptmaps.model;

// Generated Oct 15, 2014 7:24:51 PM by Hibernate Tools 4.3.1

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Conceptmaps generated by hbm2java
 */
@Entity
@Table(name = "conceptmaps", catalog = "conceptmapsdb")
public class Conceptmaps implements java.io.Serializable {

	private String idConceptMaps;
	private User user;
	private String name;
	private Date dateCreate;
	private Set<Relationship> relationships = new HashSet<Relationship>(0);
	private Set<Share> shares = new HashSet<Share>(0);
	private Set<Assignment> assignments = new HashSet<Assignment>(0);

	public Conceptmaps() {
	}

	public Conceptmaps(String idConceptMaps, User user) {
		this.idConceptMaps = idConceptMaps;
		this.user = user;
	}

	public Conceptmaps(String idConceptMaps, User user, String name,
			Date dateCreate, Set<Relationship> relationships,
			Set<Share> shares, Set<Assignment> assignments) {
		this.idConceptMaps = idConceptMaps;
		this.user = user;
		this.name = name;
		this.dateCreate = dateCreate;
		this.relationships = relationships;
		this.shares = shares;
		this.assignments = assignments;
	}

	@Id
	@Column(name = "idConceptMaps", unique = true, nullable = false, length = 20)
	public String getIdConceptMaps() {
		return this.idConceptMaps;
	}

	public void setIdConceptMaps(String idConceptMaps) {
		this.idConceptMaps = idConceptMaps;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "owner", nullable = false)
	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Column(name = "name", length = 45)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "dateCreate", length = 10)
	public Date getDateCreate() {
		return this.dateCreate;
	}

	public void setDateCreate(Date dateCreate) {
		this.dateCreate = dateCreate;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "conceptmaps")
	public Set<Relationship> getRelationships() {
		return this.relationships;
	}

	public void setRelationships(Set<Relationship> relationships) {
		this.relationships = relationships;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "conceptmaps")
	public Set<Share> getShares() {
		return this.shares;
	}

	public void setShares(Set<Share> shares) {
		this.shares = shares;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "conceptmaps")
	public Set<Assignment> getAssignments() {
		return this.assignments;
	}

	public void setAssignments(Set<Assignment> assignments) {
		this.assignments = assignments;
	}

}
