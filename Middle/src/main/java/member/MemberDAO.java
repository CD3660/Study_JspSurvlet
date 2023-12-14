package member;

import common.MybatisConnection;

public class MemberDAO extends MybatisConnection{

	public MemberDAO() {
		super(DataResource.HANUL);
	}

	public MemberVO login(MemberVO vo) {
		vo = sql.selectOne("me.login", vo);
		return vo;
	}
}
