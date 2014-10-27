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
 * Assignment generated by hbm2java
 */
@Entity
@Table(name = "assignment", catalog = "conceptmapsdb")
public class Assignment implements java.io.Serializable {

	private String idAssignment;
	private Conceptmaps conceptmaps;
	private User user;
	private String name;
	private Date startTime;
	private Date deadLine;
	private Set<MemberAssignment> memberAssignments = new HashSet<MemberAssignment>(
			0);

	public Assignment() {
	}

	public Assignment(String idAssignment) {
		this.idAssignment = idAssignment;
	}

	public Assignment(String idAssignment, Conceptmaps conceptmaps, User user,
			String name, Date startTime, Date deadLine,
			Set<MemberAssignment> memberAssignments) {
		this.idAssignment = idAssignment;
		this.conceptmaps = conceptmaps;
		this.user = user;
		this.name = name;
		this.startTime = startTime;
		this.deadLine = deadLine;
		this.memberAssignments = memberAssignments;
	}

	@Id
	@Column(name = "idAssignment", unique = true, nullable = false, length = 20)
	public String getIdAssignment() {
		return this.idAssignment;
	}

	public void setIdAssignment(String idAssignment) {
		this.idAssignment = idAssignment;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "IDconceptMaps")
	public Conceptmaps getConceptmaps() {
		return this.conceptmaps;
	}

	public void setConceptmaps(Conceptmaps conceptmaps) {
		this.conceptmaps = conceptmaps;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "owner")
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

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "startTime", length = 19)
	public Date getStartTime() {
		return this.startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "deadLine", length = 19)
	public Date getDeadLine() {
		return this.deadLine;
	}

	public void setDeadLine(Date deadLine) {
		this.deadLine = deadLine;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "assignment")
	public Set<MemberAssignment> getMemberAssignments() {
		return this.memberAssignments;
	}

	public void setMemberAssignments(Set<MemberAssignment> memberAssignments) {
		this.memberAssignments = memberAssignments;
	}

}
