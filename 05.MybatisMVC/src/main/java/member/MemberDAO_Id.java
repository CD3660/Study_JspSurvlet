package member;

import common.MybatisConnection;

public class MemberDAO_Id extends MybatisConnection implements MemberService{

	public MemberDAO_Id() {
		super(DataResource.HANUL);
	}

	@Override
	public int member_join(MemberVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int member_idCheck(String user_id) {
		String check = sql.selectOne("me.idcheck", user_id);
		if(check==null) {
			return 0;
		} else {
			return 1;			
		}
	}

	@Override
	public MemberVO member_login(MemberVO vo) {
		// TODO Auto-generated method stub
		return null;
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
