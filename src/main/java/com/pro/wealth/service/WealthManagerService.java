package com.pro.wealth.service;

import com.pro.wealth.common.LogUtil;
import com.pro.wealth.model.WcCustomer;
import com.pro.wealth.model.WcWealthManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Service;

import java.util.List;


@Configuration
@Service
public class WealthManagerService {

    @Value("${prop.api.server.url.user}")
    private String url_user;

    @Autowired
    RestUtilService restUtilService;

    public List<WcWealthManager> findAll() {
        LogUtil.log("WealthManagerService  findAll Started ");

        String url = url_user + "/user/api/wealthmanager";

        LogUtil.log("WealthManagerService  findAll Started : url " + url);

        List<WcWealthManager> result = (List<WcWealthManager>) restUtilService.callGetForObjectList (url, WcWealthManager.class);

        LogUtil.log("WealthManagerService  findAll Completed : " + result);

        return result;
    }
}
