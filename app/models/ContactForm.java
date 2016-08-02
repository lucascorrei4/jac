package models;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

import org.hibernate.annotations.GenericGenerator;

import play.data.binding.As;
import play.data.validation.Email;
import play.data.validation.MaxSize;
import play.data.validation.Phone;
import play.data.validation.Required;
import play.db.jpa.Model;
import util.Utils;

@Entity
public class ContactForm extends Model {
	@Required
	public String name;

	@Required
	public String subject;

	@Email
	@Required
	public String email;

	@Lob
	@Required
	@MaxSize(10000)
	public String description;

	@Temporal(TemporalType.TIMESTAMP) 
	@As("yyyy-MM-dd HH:mm:ss")
	public Date postedAt = new Date();
	
	@Transient
	public String formattedDate = Utils.formatDate(postedAt);

	public String toString() {
		return subject;
	}
	
	public ContactForm(String name, String subject, String email, String description) {
		super();
		this.name = name;
		this.subject = subject;
		this.email = email;
		this.description = description;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getPostedAt() {
		if (postedAt == null) {
			postedAt = new Date();
		}
		return postedAt;
	}

	public void setPostedAt(Date postedAt) {
		this.postedAt = postedAt;
	}

	public String getFormattedDate() {
		return formattedDate;
	}

	public void setFormattedDate(String formattedDate) {
		this.formattedDate = formattedDate;
	}

}
