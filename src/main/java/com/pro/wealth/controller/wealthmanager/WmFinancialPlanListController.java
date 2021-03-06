package com.pro.wealth.controller.wealthmanager;

import java.util.List;

import com.pro.wealth.model.WcCustomer;
import com.pro.wealth.service.CustomerService;
import com.pro.wealth.service.GoalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
public class WmFinancialPlanListController {

    @Autowired
    GoalService goalService;

    @Autowired
    CustomerService customerService;

    @RequestMapping(value="/WmFinancialPlanList/selectCustomer", method = RequestMethod.GET)
    public String selectCustomer(ModelMap model, HttpServletRequest request, @RequestParam int customerId){

        String customerName = "";
        WcCustomer wcCustomer = customerService.find(customerId);
        if (wcCustomer != null) {
            customerName = wcCustomer.getFirstName() + " " + wcCustomer.getLastName();
        }

        request.getSession().setAttribute("customerId", customerId);
        request.getSession().setAttribute("customerName", customerName);
        request.getSession().setAttribute("customerDisplayText", "Selected Customer : " + customerName);

        return commonSteps(model, customerId);
    }


    @RequestMapping(value="/WmFinancialPlanList/deleteGoal", method = RequestMethod.GET)
    public String deleteGoal(ModelMap model, @RequestParam int goalId, HttpServletRequest request){

        int customerId = (int) request.getSession().getAttribute("customerId");

        goalService.delete(goalId);

        return commonSteps(model, customerId);
    }

    @RequestMapping(value="/WmFinancialPlanList", method = RequestMethod.GET)
    public String load(ModelMap model, HttpServletRequest request){
        System.out.println("1 -------- customerId : " );

        int customerId = (int) request.getSession().getAttribute("customerId");
        System.out.println("2 -------- customerId : " + customerId);

        return commonSteps(model, customerId);
    }

    public String commonSteps(ModelMap model, @RequestParam int customerId){

        List list = (List) goalService.findInfoListByCustomerId(customerId);
        model.addAttribute("mainData", list);
        return "wm/wm_fp_list";
    }
}

