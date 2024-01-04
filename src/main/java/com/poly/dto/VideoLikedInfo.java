package com.poly.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class VideoLikedInfo {

	private Integer videoId;
	private String title;
	private String href;
	private Integer totalLike;
}
