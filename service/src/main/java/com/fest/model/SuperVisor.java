package com.fest.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Component
@Entity(name="Supervisor")
public class SuperVisor {

	public SuperVisor() {
		// TODO Auto-generated constructor stub
	}

	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="supervisor_id")
	private int superId;
	
	@Column(name="supervisor_name")
	private String superName;
	
	@Column(name="designation")
	private String superDesignation;
	
	@Column(name="department")
	private String superDepartment;
	
    @Column(name="email")
	private String superEmail;

	public SuperVisor(String superName, String superDesignation, String superDepartment, String superEmail) {
		super();
		this.superName = superName;
		this.superDesignation = superDesignation;
		this.superDepartment = superDepartment;
		this.superEmail = superEmail;
	}

	public SuperVisor(int superId, String superName, String superDesignation, String superDepartment,
			String superEmail) {
		super();
		this.superId = superId;
		this.superName = superName;
		this.superDesignation = superDesignation;
		this.superDepartment = superDepartment;
		this.superEmail = superEmail;
	}

	public int getSuperId() {
		return superId;
	}

	public void setSuperId(int superId) {
		this.superId = superId;
	}

	public String getSuperName() {
		return superName;
	}

	public void setSuperName(String superName) {
		this.superName = superName;
	}

	public String getSuperDesignation() {
		return superDesignation;
	}

	public void setSuperDesignation(String superDesignation) {
		this.superDesignation = superDesignation;
	}

	public String getSuperDepartment() {
		return superDepartment;
	}

	public void setSuperDepartment(String superDepartment) {
		this.superDepartment = superDepartment;
	}

	public String getSuperEmail() {
		return superEmail;
	}

	public void setSuperEmail(String superEmail) {
		this.superEmail = superEmail;
	}

	@Override
	public String toString() {
		return "SuperVisor [superId=" + superId + ", superName=" + superName + ", superDesignation=" + superDesignation
				+ ", superDepartment=" + superDepartment + ", superEmail=" + superEmail + "]";
	}

}
