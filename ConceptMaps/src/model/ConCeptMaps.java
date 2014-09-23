package model;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "conceptmaps")
public class ConCeptMaps {
	@Id
	private String Maps_ID;
	private String Name;
	private Date dateCreate;
	
	@OneToMany
	private Concept [] nodeList;
	private int [][] Relation;
	
	@ManyToOne
	private User owner;

	/**
	 * @param iD
	 * @param name
	 * @param dateCreate
	 * @param nodeList
	 * @param relation
	 * @param owner
	 */
	public ConCeptMaps(String iD, String name, Date dateCreate,
			Concept[] nodeList, int[][] relation, User owner) {
		super();
		Maps_ID = iD;
		Name = name;
		this.dateCreate = dateCreate;
		this.nodeList = nodeList;
		Relation = relation;
		this.owner = owner;
	}

	/**
	 * 
	 */
	public ConCeptMaps() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getID() {
		return Maps_ID;
	}

	public void setID(String iD) {
		Maps_ID = iD;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public Date getDateCreate() {
		return dateCreate;
	}

	public void setDateCreate(Date dateCreate) {
		this.dateCreate = dateCreate;
	}

	@ManyToOne
	public Concept[] getNodeList() {
		return nodeList;
	}

	public void setNodeList(Concept[] nodeList) {
		this.nodeList = nodeList;
	}

	public int[][] getRelation() {
		return Relation;
	}

	public void setRelation(int[][] relation) {
		Relation = relation;
	}

	public User getOwner() {
		return owner;
	}

	public void setOwner(User owner) {
		this.owner = owner;
	}
	
}
