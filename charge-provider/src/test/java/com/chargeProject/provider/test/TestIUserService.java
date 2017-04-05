package com.chargeProject.provider.test;

import com.chargeProject.interfaces.interfaceX.IUserService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by moses on 17/3/30.
 */

public class TestIUserService extends BaseTestService{
    @Autowired
    private IUserService iUserService;
    @Test
    public void getTest() {
        System.out.println(iUserService.getTest());
    }

    @Test
    public void testInsert() {
        System.out.println(iUserService.insert("unitTest"));
    }
}