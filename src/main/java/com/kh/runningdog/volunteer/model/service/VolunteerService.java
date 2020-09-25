package com.kh.runningdog.volunteer.model.service;

import java.util.ArrayList;
import java.util.List;

import com.kh.runningdog.volunteer.model.vo.Volunteer;
import com.kh.runningdog.volunteer.model.vo.Vreply;

public interface VolunteerService {
	int selectListCount(Volunteer volunteer);
	ArrayList<Volunteer> selectList(Volunteer volunteer);
	Volunteer selectVolunteer(int volno);
	int insertVolunteer(Volunteer volunteer);
	int updateVolunteer(Volunteer volunteer);
	int deleteVolunteer(Volunteer volunteer);
	int deleteVolunteerAdmin(String[] checkRow);
	ArrayList<Vreply> selectVreplyList(int volno);
	int insertVreply(Vreply vreply);
	int updateVreply(Vreply vreply);
	int deleteVreply(int vreply_no);
	int getListCountVreply(int volno);
	int selectVolunteerPre(Volunteer volunteer);
	int selectVolunteerNext(Volunteer volunteer);
	Vreply selectVreply(int vreply_no);
	int insertVreplyLevel(Vreply vreply);
}
