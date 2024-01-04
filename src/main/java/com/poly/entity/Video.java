package com.poly.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "video")
public class Video {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	@Column(name = "title")
	private String title;
	@Column(name = "href")
	private String href;
	@Column(name = "posster")
	private String posster;
	@Column(name = "`views`")
	private Integer views; 	
	@Column(name = "shares")
	private Integer shares;
	@Column(name = "desscription")
	private String desscription;
	@Column(name = "isActive")
	private Boolean isActive;
}
