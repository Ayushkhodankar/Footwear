package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="raiseticket")
public class Issue {
	@Id
	@GeneratedValue
	private int rid;
	@Column
	private String categoryname, issuetitle, issuedesc, comment, status,username;
	
	
	public Issue(int rid, String categoryname, String issuetitle, String issuedesc, String comment, String status) {
		super();
		this.rid = rid;
		this.categoryname = categoryname;
		this.issuetitle = issuetitle;
		this.issuedesc = issuedesc;
		this.comment = comment;
		this.status = status;
	}

	

	public Issue(String categoryname, String issuetitle, String issuedesc) {
		super();
		this.categoryname = categoryname;
		this.issuetitle = issuetitle;
		this.issuedesc = issuedesc;
	}



	public Issue(String categoryname, String issuetitle, String issuedesc, String comment, String status) {
		super();
		this.categoryname = categoryname;
		this.issuetitle = issuetitle;
		this.issuedesc = issuedesc;
		this.comment = comment;
		this.status = status;
	}



	public Issue() {
		
	}



	public Issue(String categoryname, String issuetitle, String issuedesc, String comment, String status,
			String username) {
		super();
		this.categoryname = categoryname;
		this.issuetitle = issuetitle;
		this.issuedesc = issuedesc;
		this.comment = comment;
		this.status = status;
		this.username = username;
	}



	



	


	public String getUsername() {
		return username;
	}



	public Issue(int rid, String categoryname, String issuetitle, String issuedesc, String comment, String status,
			String username) {
		super();
		this.rid = rid;
		this.categoryname = categoryname;
		this.issuetitle = issuetitle;
		this.issuedesc = issuedesc;
		this.comment = comment;
		this.status = status;
		this.username = username;
	}



	public void setUsername(String username) {
		this.username = username;
	}



	public int getRid() {
		return rid;
	}



	public void setRid(int rid) {
		this.rid = rid;
	}



	public String getCategoryname() {
		return categoryname;
	}



	public void setCategoryname(String categoryname) {
		this.categoryname = categoryname;
	}



	public String getIssuetitle() {
		return issuetitle;
	}



	public void setIssuetitle(String issuetitle) {
		this.issuetitle = issuetitle;
	}



	public String getIssuedesc() {
		return issuedesc;
	}



	public void setIssuedesc(String issuedesc) {
		this.issuedesc = issuedesc;
	}



	public String getComment() {
		return comment;
	}



	public void setComment(String comment) {
		this.comment = comment;
	}



	public String getStatus() {
		return status;
	}



	public void setStatus(String status) {
		this.status = status;
	}


	
	
	

	
	
}
