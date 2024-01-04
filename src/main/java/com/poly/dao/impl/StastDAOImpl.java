package com.poly.dao.impl;

import java.util.ArrayList;
import java.util.List;

import com.poly.dao.AbstractDAO;
import com.poly.dao.StastDAO;
import com.poly.dto.VideoLikedInfo;

public class StastDAOImpl extends AbstractDAO<Object[]> implements StastDAO{

	
	
	

	@Override
	public List<VideoLikedInfo> fiVideoLikedInfos() {
		String sql = "select v.id,v.title,v.href,sum(cast(h.isLike as integer)) as totalLike "
				+ "  from Video v left join History h on v.id = h.video "
				+ "  where v.isActive = 1 "
				+ "  group by v.id, v.title,v.href "
				+ "  order by sum(cast(h.isLike as integer)) desc ";
		List<Object[]> objects = super.findManyByNativeQuery(sql);
		List<VideoLikedInfo> result = new ArrayList<>();
		objects.forEach(object -> {
			VideoLikedInfo videoLikedInfo = setDataVideoLikedInfo(object);
			result.add(videoLikedInfo);
		});
		return result;
	}
	private VideoLikedInfo setDataVideoLikedInfo(Object[] object) {
		VideoLikedInfo videoLikedInfo = new VideoLikedInfo();
		videoLikedInfo.setVideoId((Integer)object[0]);
		videoLikedInfo.setTitle((String)object[1]);
		videoLikedInfo.setHref((String)object[2]);
		videoLikedInfo.setTotalLike(object[3] == null ? 0 : ((Long) object[3]).intValue());
		return videoLikedInfo;
	}


}
