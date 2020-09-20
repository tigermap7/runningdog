package com.kh.runningdog.member.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.runningdog.member.model.vo.Member;
import com.kh.runningdog.member.model.vo.LeaveMember;
import com.kh.runningdog.member.model.vo.MemberPage;

@Repository("MemberDao")
public class MemberDao {
	
	@Autowired
	private SqlSessionTemplate session;
	
	public MemberDao() {}



	//사용자
	public Member selectMember(String userId) {
		return session.selectOne("memberMapper.selectMember", userId);
	}
	
	public Member selectLogin(Member member) {
		return session.selectOne("memberMapper.selectLogin", member);
	}
	
	public Member selectUserIdCheck(Member member) {
		return session.selectOne("memberMapper.selectUserIdCheck", member);
	}
	
	public Member selectNicknameCheck(Member member) {
		return session.selectOne("memberMapper.selectNicknameCheck", member);
	}
	
	public Member selectPhoneCheck(Member member) {
		return session.selectOne("memberMapper.selectPhoneCheck", member);
	}

	public Member selectUserIdCheck(String userId) {
		return session.selectOne("memberMapper.selectUserIdCheck", userId);
	}
	
	public Member selectNicknameCheck(String nickname) {
		return session.selectOne("memberMapper.selectNicknameCheck", nickname);
	}

	public Member selectPhoneCheck(String phone) {
		return session.selectOne("memberMapper.selectPhoneCheck", phone);
	}

	public Member selectUserIdPhoneCheck(Member member) {
		return session.selectOne("memberMapper.selectUserIdPhoneCheck", member);
	}

	public Member selectUserPwdCheck(Member member) {
		return session.selectOne("memberMapper.selectUserPwdCheck", member);
	}

	public int updateMemberPwd(Member member) {
		return session.update("memberMapper.updateMemberPwd", member);
	}

	public int updatemyinfo(Member member) {
		return session.update("memberMapper.updatemyinfo", member);
	}


	
	
	//공용
	public int insertMember(Member member) {
		return session.insert("memberMapper.insertMember", member);
	}
	
	public int updateMember(Member member) {
		return session.update("memberMapper.updateMember", member);
	}
	
	public int insertLeaveMember(Member member) {
		return session.insert("memberMapper.insertLeaveMember", member);
	}
	
	public int deleteMember(String userId) {
		return session.delete("memberMapper.deleteMember", userId);
	}

	
	
	//관리자
	public ArrayList<Member> selectMemberList(MemberPage memberPage) {
		List<Member> list = session.selectList("memberMapper.selectMemberList", memberPage);
		return (ArrayList<Member>)list;
	}
	
	public int selectMemberCount(MemberPage memberSerch) {
		return session.selectOne("memberMapper.selectMemberCount", memberSerch);
	}
	
	public Member selectUserOne(int uniqueNum) {
		return session.selectOne("memberMapper.selectUserOne", uniqueNum);
	}
	
	public int adminInsertMember(Member member) {
		return session.insert("memberMapper.adminInsertMember", member);
	}
	
	public int adminUpdateMember(Member member) {
		return session.update("memberMapper.adminUpdateMember", member);
	}
	
	public int adminDeleteMember(Member selectUser) {
		return session.update("memberMapper.adminDeleteMember", selectUser);
	}

	public ArrayList<Member> selectMemberLeaveList(MemberPage memberPage) {
		List<Member> list = session.selectList("leaveMemberMapper.selectMemberLeaveList", memberPage);
		return (ArrayList<Member>)list;
	}

	public int selectMemberLeaveCount(MemberPage memberSerch) {
		return session.selectOne("leaveMemberMapper.selectMemberLeaveCount", memberSerch);
	}

	public LeaveMember selectLeaveUserOne(int leaveUniqueNum) {
		return session.selectOne("leaveMemberMapper.selectLeaveUserOne", leaveUniqueNum);
	}




	public ArrayList<Member> selectNicknameCheckList(Member member) {
		List<Member> list = session.selectList("memberMapper.selectNicknameCheckList", member);
		return (ArrayList<Member>)list;
	}
	public int selectNicknameCount(Member member) {
		return session.selectOne("memberMapper.selectNicknameCount", member);
	}







	
}
