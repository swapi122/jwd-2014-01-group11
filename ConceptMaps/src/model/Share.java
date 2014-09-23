package model;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "share")
public class Share {

	@Id
	private String share_id;
	
	@OneToMany
	private User user;

	@OneToMany
	private ConCeptMaps conceptmaps;

	// role: 0 = view
	// role: 1 = homework
	private int role;

	private Date startTime;
	private Date endTime;

	// Relationship create by shared committer
	private int[][] Relation;

	// Trang thai lam bai
	private boolean complete;
	private int score;
	/**
	 * @param share_id
	 * @param user
	 * @param conceptmaps
	 * @param role
	 * @param startTime
	 * @param endTime
	 * @param relation
	 * @param complete
	 * @param score
	 */
	public Share(String share_id, User user, ConCeptMaps conceptmaps, int role,
			Date startTime, Date endTime, int[][] relation, boolean complete,
			int score) {
		super();
		this.share_id = share_id;
		this.user = user;
		this.conceptmaps = conceptmaps;
		this.role = role;
		this.startTime = startTime;
		this.endTime = endTime;
		Relation = relation;
		this.complete = complete;
		this.score = score;
	}
	/**
	 * 
	 */
	public Share() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getShare_id() {
		return share_id;
	}
	public void setShare_id(String share_id) {
		this.share_id = share_id;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public ConCeptMaps getConceptmaps() {
		return conceptmaps;
	}
	public void setConceptmaps(ConCeptMaps conceptmaps) {
		this.conceptmaps = conceptmaps;
	}
	public int getRole() {
		return role;
	}
	public void setRole(int role) {
		this.role = role;
	}
	public Date getStartTime() {
		return startTime;
	}
	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}
	public Date getEndTime() {
		return endTime;
	}
	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}
	public int[][] getRelation() {
		return Relation;
	}
	public void setRelation(int[][] relation) {
		Relation = relation;
	}
	public boolean isComplete() {
		return complete;
	}
	public void setComplete(boolean complete) {
		this.complete = complete;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
}
