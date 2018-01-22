package com.progresstracker.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Range;

@Entity
@Table(name="users")
public class UserProfile  {

	@Id 
	@NotEmpty(message = "Username can not be empty")
	private String username;
	@NotEmpty(message = "Password can not be empty")
	private String password;
	@NotEmpty
	@Email(message = "Email can not be empty")
	private String email;
	@NotEmpty(message = "Name can not be empty")
	private String name;
	@NotEmpty(message = "Surname can not be empty")
	private String surname;
	@NotEmpty(message = "Sex can not be empty")
	private String sex;
	@Range(min = 15, max = 100, message = "Age must be between 15 and 100")
	private int age;
	@Range(min = 150, max = 220, message = "Height must be between 150 and 220")
	private int height;
	@Range(min = 40, max = 300, message = "Weight must be between 40 and 300")
	private int weight;
	@NotEmpty(message = "Somatotype can not be empty")
	private String somatotype;
	@Range(min = 0, max = 5, message = "Lifestyle must be between 0 and 5")
	private int lifestyle;
	@NotEmpty(message = "Goal can not be empty")
	private String goal;
	private boolean enabled;
	
	@OneToMany(mappedBy = "user", cascade=CascadeType.ALL)
	private List<Authority> authorities;

	public List<Authority> getAuthorities() {
		return authorities;
	}

	public void setAuthorities(List<Authority> authorities) {
		this.authorities = authorities;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public int getWeight() {
		return weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}

	public String getSomatotype() {
		return somatotype;
	}

	public void setSomatotype(String somatotype) {
		this.somatotype = somatotype;
	}

	public int getLifestyle() {
		return lifestyle;
	}

	public void setLifestyle(int lifestyle) {
		this.lifestyle = lifestyle;
	}

	public String getGoal() {
		return goal;
	}

	public void setGoal(String goal) {
		this.goal = goal;
	}

	
}
