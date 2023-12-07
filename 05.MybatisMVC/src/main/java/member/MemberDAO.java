package member;

import common.MybatisConnection;

public class MemberDAO extends MybatisConnection implements MemberService {

	public MemberDAO() {
		super(DataResource.HANUL);
	}

	@Override
	public int member_join(MemberVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean member_idCheck(String user_id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public MemberVO member_login(MemberVO vo) {
		vo = sql.selectOne("me.login", vo);
		return vo;
	}

	@Override
	public void member_update(MemberVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void member_delete(MemberVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void findPassword(MemberVO vo) {
		// TODO Auto-generated method stub
		
	}
	
}
