package conceptmaps.model;

// Generated Nov 10, 2014 10:58:18 PM by Hibernate Tools 3.4.0.CR1

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * Message generated by hbm2java
 */
@Entity
@Table(name = "message", catalog = "conceptmapsdb")
public class Message implements java.io.Serializable {

	private String idMessage;
	private User user;
	private String title;
	private String message;

	public Message() {
	}

	public Message(String idMessage, User user) {
		this.idMessage = idMessage;
		this.user = user;
	}

	public Message(String idMessage, User user, String title, String message) {
		this.idMessage = idMessage;
		this.user = user;
		this.title = title;
		this.message = message;
	}

	@Id
	@Column(name = "idMessage", unique = true, nullable = false, length = 20)
	public String getIdMessage() {
		return this.idMessage;
	}

	public void setIdMessage(String idMessage) {
		this.idMessage = idMessage;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "idUser", nullable = false)
	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Column(name = "title", length = 65535)
	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Column(name = "message", length = 65535)
	public String getMessage() {
		return this.message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

}
