package model;

import java.sql.Date;

import javax.persistence.Embeddable;

@Embeddable
public class SharePk {
	
	private User user;
	
	private ConCeptMaps conceptmaps;
	
	// role: 0 = view
	// role: 1 = homework
	private int role;
	
	private Date startTime;
	private Date endTime;
	
	// Relationship create by shared committer
	private int [][] Relation;
	
	// Trang thai lam bai
	private boolean complete;
	private int score;
	/**
	 * @param user
	 * @param conceptmaps
	 * @param role
	 * @param startTime
	 * @param endTime
	 * @param relation
	 * @param complete
	 * @param score
	 */
	public SharePk(User user, ConCeptMaps conceptmaps, int role,
			Date startTime, Date endTime, int[][] relation, boolean complete,
			int score) {
		super();
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
	public SharePk() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
