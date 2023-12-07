package member;

public interface MemberService {
	/** 파라메터 MemberVO를 입력받아 회원가입 처리 
	 * 회원가입 로직 구현시 아이디 중복체크를 비동기로 한다.*/
	int member_join(MemberVO vo);

	/** 아이디 중복체크 확인 후 가능 유무 반환 */
	boolean member_idCheck(String user_id);
	
	/** 아이디 비밀번호 일치하는 멤버vo를 반환 */
	MemberVO member_login(MemberVO vo);
	
	void member_update(MemberVO vo);
	void member_delete(MemberVO vo);
	/** 아직 진행 x */
	void findPassword(MemberVO vo);
	
}
