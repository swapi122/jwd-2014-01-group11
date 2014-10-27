package conceptmaps.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "concept")
public class Concepts {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "name")
	private String name;

	public int getId() {
		return id;
	}

	public Concepts() {
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getClassConcept() {
		return classConcept;
	}

	public void setClassConcept(String classConcept) {
		this.classConcept = classConcept;
	}

	public String getNodeDataArray() {
		return nodeDataArray;
	}

	public void setNodeDataArray(String nodeDataArray) {
		this.nodeDataArray = nodeDataArray;
	}

	public String getLinkDataArray() {
		return linkDataArray;
	}

	public void setLinkDataArray(String linkDataArray) {
		this.linkDataArray = linkDataArray;
	}

	@Column(name = "class")
	private String classConcept;
	
	@Column(name = "nodeDataArray")
	private String nodeDataArray;
	
	@Column(name = "linkDataArray")
	private String linkDataArray;
}
