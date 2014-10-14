package conceptmaps.model;

// Generated Oct 14, 2014 9:03:20 PM by Hibernate Tools 4.3.1

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
 * MemberAssignment generated by hbm2java
 */
@Entity
@Table(name = "member_assignment", catalog = "conceptmapsdb")
public class MemberAssignment implements java.io.Serializable {

	private String idmemberAssignment;
	private Assignment assignment;
	private User user;
	private Integer code;
	private Date endDate;
	private Set<Relationship> relationships = new HashSet<Relationship>(0);

	public MemberAssignment() {
	}

	public MemberAssignment(String idmemberAssignment) {
		this.idmemberAssignment = idmemberAssignment;
	}

	public MemberAssignment(String idmemberAssignment, Assignment assignment,
			User user, Integer code, Date endDate,
			Set<Relationship> relationships) {
		this.idmemberAssignment = idmemberAssignment;
		this.assignment = assignment;
		this.user = user;
		this.code = code;
		this.endDate = endDate;
		this.relationships = relationships;
	}

	@Id
	@Column(name = "idmember_Assignment", unique = true, nullable = false, length = 20)
	public String getIdmemberAssignment() {
		return this.idmemberAssignment;
	}

	public void setIdmemberAssignment(String idmemberAssignment) {
		this.idmemberAssignment = idmemberAssignment;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "idAssignment")
	public Assignment getAssignment() {
		return this.assignment;
	}

	public void setAssignment(Assignment assignment) {
		this.assignment = assignment;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "idUser")
	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Column(name = "code")
	public Integer getCode() {
		return this.code;
	}

	public void setCode(Integer code) {
		this.code = code;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "endDate", length = 19)
	public Date getEndDate() {
		return this.endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "memberAssignment")
	public Set<Relationship> getRelationships() {
		return this.relationships;
	}

	public void setRelationships(Set<Relationship> relationships) {
		this.relationships = relationships;
	}

}
