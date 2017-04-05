package com.chargeProject.provider.serviceImpl;

import com.chargeProject.interfaces.entity.Result;
import com.chargeProject.interfaces.interfaceX.IUserService;
import com.chargeProject.interfaces.vo.User;
import com.chargeProject.provider.dao.IUserDao;
import com.chargeProject.provider.exception.CoreException;
import com.shikonghulian.logicalhat.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class UserServiceImpl implements IUserService {
	@Autowired
	private IUserDao userDao;

	public String insert(@Param("uname") String uname) {
		if(uname == null || uname.length() <=0){
			throw CoreException.of(CoreException.PARAMETER_INVALID);
		}
		User user = new User();
		user.setUname(uname);
		userDao.insert(user);
		return "插入成功";
	}

	public User getUserById(@Param("id") Integer id) {
		if(id == null || id <=0){
			throw CoreException.of(CoreException.PARAMETER_INVALID);
		}
		User user = userDao.getUserById(id);
		if(user == null){
			throw CoreException.of(CoreException.RESOURCE_NO_FOUND);
		}
		return user;
	}

	@Override
	public String deleteById(@Param("id") Integer id) {
		if(id == null || id <=0){
			throw CoreException.of(CoreException.PARAMETER_INVALID);
		}
		userDao.deleteById(id);
		return "删除成功";
	}

	@Override
	public String update(@Param("id") Integer id, @Param("uname") String uname) {
		if(id == null || id <=0){
			throw CoreException.of(CoreException.PARAMETER_INVALID);
		}

		User user = new User();
		user.setId(id);
		user.setUname(uname);
		userDao.update(user);
		return "修改成功";
	}

	public List<User> getUsers() {
		return userDao.getUsers();
	}

	@Override
	public String getString(@Param("param1") String a, @Param("param2") String b) {
		System.out.println("a+b:"+a+b);
		return a+b;
	}

	@Override
	public Result getTest() {
//		System.out.println("test");
		return new Result(0,"请求成功");
	}

}
