package com.xh.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xh.base.BaseController;
import com.xh.entity.KbUser;
import com.xh.service.IUserService;
import com.xh.uitl.Result;

@Controller
@RequestMapping("/user")
public class UserController extends BaseController {
	private static Logger log = LoggerFactory.getLogger(UserController.class);// 日志对象

	@Autowired
	@Qualifier("userServiceImpl")
	private IUserService userService;// 实例化用户服务类

	/**
	 * 
	 * @Title: login
	 * @Description: 员工登录入口方法
	 * @author 黄官易
	 * @param
	 * @return void
	 * @date 2018年6月19日
	 * @version 1.0
	 */
	@RequestMapping("/login.do")
	@ResponseBody
	public Result<KbUser> login(HttpServletRequest request, HttpSession session) {
		String userCode = request.getParameter("user_code");
		String userPassword = request.getParameter("user_password");
		try {
			Result<KbUser> loginResult = userService.login(userCode, userPassword);
			if (Result.SUCCESS_0 == loginResult.getCode()) {
				KbUser ku = loginResult.getData();
				session.setAttribute("user_code", ku.getUserCode());
				session.setAttribute("user_name", ku.getUserName());
				session.setAttribute("profession_code", ku.getProfessionalCode());
				session.setAttribute("user_dept_code", ku.getUserDeptCode());
				loginResult.setData(null);// 清理正常状态下携带的user对象
			}
			return loginResult;
		} catch (Exception e) {
			log.error("员工登陆业务方法异常,异常原因【" + e.toString() + "】");
			return rtnErrorResult(Result.ERROR_6000, "员工登陆异常,请联系管理员");
		}
	}
	
	
	
	
	

}
