package user;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao {

	@Autowired
	SqlSessionTemplate sst;

	//로그인("namespace.id")
	public UserVo login(UserVo vo) {
		return sst.selectOne("user.login",vo);
	}

	//이메일 중복체크
	public int emailCheck(String email) {
		return sst.selectOne("user.emailCheck", email);
	}

}