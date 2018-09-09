package com.chargeProject.provider.test;

import com.chargeProject.interfaces.entity.Result;
import com.chargeProject.interfaces.interfaceX.IUserService;
import com.chargeProject.interfaces.vo.User;
import net.sf.json.JSONObject;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by moses on 17/3/30.
 */
public class TestUserService extends BaseTestService {
    @Autowired
    private IUserService iUserService;

    @Test
    public void getTest() {
        Result result = iUserService.getTest();
        System.out.println(JSONObject.fromObject(result));
        JSONObject content = JSONObject.fromObject(result.getContent());
        Assert.assertEquals(result.getCode(), 0);
        Assert.assertEquals(result.getMessage(), "请求成功");
        //检验content中是否包含id字段
        Assert.assertEquals(content.containsKey("id"), true);
    }
    @Test
    public void getUserById(){
        User user=iUserService.getUserById(1);
        System.out.println(user);
    }

}