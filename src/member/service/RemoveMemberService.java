package member.service;

import java.sql.Connection;
import java.sql.SQLException;

import auth.service.User;
import jdbc.ConnectionProvider;
import jdbc.JdbcUtil;
import member.dao.MemberDao;
import member.model.Member;

public class RemoveMemberService  {
	
	private MemberDao memberDao = new MemberDao();
	public Object requset;
	
	public void removeMember(User user, String password, Member passReq, String id) {
		// 0. 커넥션 얻기
		
		// 1. dao의 selectById로 member객체 얻기
		//    1.1 member없으면 MemberNotFoundException 발생
		
		// 2. password와 member.password가 같은 지 확인
		//    2.1 다르면 InvalidPasswordException 발생
		
		// 3. delete() 실행
		Connection con = null;
		try {
			con = ConnectionProvider.getConnection();
			con.setAutoCommit(false); // DB커넥션을 구하고, 트랜잭션을 시작
			
			Member m = memberDao.selectById(con, passReq.getId()); //MemberDao의 selectById()를 이용해서 joinReq.getId()에 해당하는 회원 데이터를 구한다
			
			if (m !=  null) {
				JdbcUtil.rollback(con);
				throw new MemberNotFoundException();
			}//가입하려는 id에 해당하는 데이터가 이미 존재한다면, 트랜잭션을 롤백하고 DuplicateIdException발생시킴
			
			Member member = new Member();
			member.setPassword(passReq.getPassword());
	
			memberDao.delete(con, id);//joinReq를 이용해서 Member객체를 생성하고, MemberDao의 insert()를 실행해서 회원 데이터를 테이블에 삽입
			
			con.commit();// 트랜잭션 커밋
		} catch (SQLException e) {
			JdbcUtil.rollback(con);
			throw new InvalidPasswordException(); //처리도중 SQLException이 발생하면 트랜잭션을 롤백 , RuntimeException을 발생시킴
		} finally {
			JdbcUtil.close(con); //커넥션 종료
		}
}
	}
