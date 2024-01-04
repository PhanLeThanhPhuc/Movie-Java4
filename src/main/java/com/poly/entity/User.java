package com.poly.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedStoredProcedureQueries;
import javax.persistence.NamedStoredProcedureQuery;
import javax.persistence.StoredProcedureParameter;
import javax.persistence.Table;

import com.poly.constant.NamedStored;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NamedStoredProcedureQueries({
	@NamedStoredProcedureQuery( name = NamedStored.FIND_USERS_LIKED_VIDEO_BY_VIDEO_HREF, 
		procedureName = "sp_selectUserLikedVideoByVideoHref", 
		resultClasses = {User.class}, 
		parameters = @StoredProcedureParameter(name = "videoHref", type = String.class))
})

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name="`user`")
public class User {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	@Column(name = "username")
	private String username;
	@Column(name = "password")
	private String password;
	@Column(name = "email")
	private String email;
	@Column(name = "isAdmin")
	private Boolean isAdmin;
	@Column(name = "isActive")
	private Boolean isActive;
}
