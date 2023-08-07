package user.model.dao;

import org.apache.ibatis.session.SqlSession;

import user.model.vo.User;

public class UserDAO {

	public int insertUser(SqlSession session, User user) {
		int result = session.insert("UserMapper.insertUser", user);
		return result;
	}

	public int updateUser(SqlSession session, User user) {
		int result = session.update("UserMapper.updateUser", user);
		return result;
	}

	public User selectCheckLogin(SqlSession session, User user) {
		User uOne = session.selectOne("UserMapper.selectCheckLogin", user);
		return uOne;
	}

	public User selectOneById(SqlSession session, String userId) {
		User uOne = session.selectOne("UserMapper.selectOneById", userId);
		return uOne;
	}


}
