package com.chargeProject.provider.controller;

import com.chargeProject.interfaces.interfaceX.IUserService;
import com.chargeProject.interfaces.vo.User;
import com.chargeProject.provider.entity.Result;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;

@RestController
public class UserController {
	@Resource
	private IUserService userService;

	@ApiOperation(value="增加用户", notes="增加用户")
	@ApiImplicitParam(paramType="query", name = "uname", value = "用户名", required = true, dataType = "String")
	@RequestMapping(value = "/user", method = {RequestMethod.POST})
	public Result insertUser(String uname) {
		userService.insert(uname);
		return Result.success();
	}

	@ApiOperation(value="获取用户", notes="获取用户")
	@ApiImplicitParam(paramType="query", name = "id", value = "用户ID", required = true, dataType = "Integer")
	@RequestMapping(value = "/user", method = {RequestMethod.GET})
	public Result getUserById(Integer id) {
		Result result = Result.success();
		User user = userService.getUserById(id);
		result.setMessage("成功");
		result.setContent(user);
		return result;
	}
}
