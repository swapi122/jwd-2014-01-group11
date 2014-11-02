package conceptmaps.model;

// Generated Nov 2, 2014 7:15:49 PM by Hibernate Tools 4.3.1

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * Share generated by hbm2java
 */
@Entity
@Table(name = "share", catalog = "conceptmapsdb")
public class Share implements java.io.Serializable {

	private String idshare;
	private Conceptmaps conceptmaps;
	private User user;

	public Share() {
	}

	public Share(String idshare) {
		this.idshare = idshare;
	}

	public Share(String idshare, Conceptmaps conceptmaps, User user) {
		this.idshare = idshare;
		this.conceptmaps = conceptmaps;
		this.user = user;
	}

	@Id
	@Column(name = "idshare", unique = true, nullable = false, length = 20)
	public String getIdshare() {
		return this.idshare;
	}

	public void setIdshare(String idshare) {
		this.idshare = idshare;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "idConceptMaps")
	public Conceptmaps getConceptmaps() {
		return this.conceptmaps;
	}

	public void setConceptmaps(Conceptmaps conceptmaps) {
		this.conceptmaps = conceptmaps;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "idmember")
	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

}
