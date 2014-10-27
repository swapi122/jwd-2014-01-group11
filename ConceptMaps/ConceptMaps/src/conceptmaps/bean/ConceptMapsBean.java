package conceptmaps.bean;

import java.io.Serializable;

public class ConceptMapsBean implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String classConcept;

	public String getClassConcept() {
		return classConcept;
	}

	public void setClassConcept(String classConcept) {
		this.classConcept = classConcept;
	}

	public ConceptMapsBean() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ConceptMapsBean(String classConcept, String nodeDataArray,
			String linkDataArray) {
		super();
		this.classConcept = classConcept;
		this.nodeDataArray = nodeDataArray;
		this.linkDataArray = linkDataArray;
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

	private String nodeDataArray;
	private String linkDataArray;
}
