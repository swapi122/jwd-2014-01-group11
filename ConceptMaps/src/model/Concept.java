package model;

import javax.persistence.AssociationOverride;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Table;

@Entity
@Table(name = "comcept")
@AssociationOverride(name = "pk.conceptmaps", joinColumns = @JoinColumn(name = "Maps_ID"))
public class Concept {
	@Id
	private String ID;
	private String nameNode;
	private String color;
	private int height;
	private int width;
	private int left;
	private int right;
	
	public Concept(String iD, String nameNode, String color, int height,
			int width, int left, int right) {
		super();
		ID = iD;
		this.nameNode = nameNode;
		this.color = color;
		this.height = height;
		this.width = width;
		this.left = left;
		this.right = right;
	}
	
	/**
	 * 
	 */
	public Concept() {
		super();
		// TODO Auto-generated constructor stub
	}


	public String getID() {
		return ID;
	}

	public void setID(String iD) {
		ID = iD;
	}

	public String getNameNode() {
		return nameNode;
	}

	public void setNameNode(String nameNode) {
		this.nameNode = nameNode;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public int getWidth() {
		return width;
	}

	public void setWidth(int width) {
		this.width = width;
	}

	public int getLeft() {
		return left;
	}

	public void setLeft(int left) {
		this.left = left;
	}

	public int getRight() {
		return right;
	}

	public void setRight(int right) {
		this.right = right;
	}
}
