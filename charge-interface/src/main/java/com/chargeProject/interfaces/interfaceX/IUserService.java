package com.chargeProject.interfaces.interfaceX;

import com.chargeProject.interfaces.entity.Result;
import com.chargeProject.interfaces.vo.User;
import com.shikonghulian.logicalhat.Param;

import java.util.List;

public interface IUserService{
	public String insert(@Param("uname") String uname);

	public User getUserById(@Param("id") Integer id);

	public String deleteById(@Param("id") Integer id);

	public String update(@Param("id") Integer id, @Param("uname") String uname);

	public List<User> getUsers();

	public String getString(@Param("a") String a, @Param("b") String b);

	public Result getTest();
}
