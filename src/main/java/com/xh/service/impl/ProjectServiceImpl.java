/**
 * 
 */
package com.xh.service.impl;

import java.sql.SQLException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.interceptor.TransactionAspectSupport;

import com.xh.base.BaseController;
import com.xh.base.BaseService;
import com.xh.dao.KbProjectMapper;
import com.xh.dao.KbProjectTableMapper;
import com.xh.entity.KbProject;
import com.xh.service.IProjectService;
import com.xh.uitl.Result;

/**
 * @author 陈专懂
 * @date 2018年6月21日下午3:45:15
 * @version 1.0
 */
@Service("ProjectServiceImpl")
public class ProjectServiceImpl extends BaseService implements IProjectService {
	private static final Logger log = LoggerFactory.getLogger(UserServiceImpl.class); // 日志对象

	@Autowired 
	private KbProjectMapper projectMapper; //项目基础表
	@Autowired 
	private KbProjectTableMapper projectTableMapper; //项目表关联表
	
	
	/**
	 * 
	 * @Title: createProjectList  
	 * @Description: 创建数据库表（kb_project(n)）
	 * @author 陈专懂 
	 * @return void 
	 * @date 2018年6月21日  
	 * @version 1.0
	 */
	@Transactional(rollbackFor = { Exception.class })
	public Result<Object> createProjectList(KbProject kbproject){
		if (null == kbproject) {
			return rtnFailResult(Result.ERROR_4000, "文件表数据为空");
		}
		try {
			// 判断文件是否存在
			if (projectTableMapper.isExistProjectTable(kbproject.getProjectLevel()) || projectTableMapper.isExistProjectDataTable(kbproject.getProjectName())) {
				return rtnFailResult(Result.ERROR_4000, "改文件层级已存在或文件表名重复");
			}
			int flag=projectTableMapper.createProjectTable(kbproject);
			if(flag>=0){
				return rtnSuccessResult("项目表创建成功");
			}else{
				TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();// 手动回滚
				return rtnFailResult(Result.ERROR_4000, "文件表新增失败");
			}
		} catch (SQLException e) {
			log.error("新增项目表信息及项目表接口异常,异常原因:【" + e.toString() + "】");
			TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();// 手动回滚
			return rtnErrorResult(Result.ERROR_6000, "新增表文件数据接口异常,请联系系统管理员");
		}
		
		
		
		

		
		
	}
}