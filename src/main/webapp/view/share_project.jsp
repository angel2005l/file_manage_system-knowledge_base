<%@ include file="/view/base/base.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- saved from url=(0103)https://tower.im/projects/8f766bfdbe614633b7170027e8165a55/lists/fcf031d5c79a43768df1daacd52f00de/show/ -->
<html lang="zh-cmn-Hans">

<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<title>知识库-项目分享</title>
<meta name="renderer" content="webkit">
<link rel="stylesheet" media="all" href="assets/css/xh_application.css">
<link rel="stylesheet" href="assets/css/xh.css" />
<script src="assets/js/analytics.js"></script>

<script src="assets/js/xh_application.js"></script>
</head>
<body class="" style="cursor: auto;">
	<div class="wrapper">
		<div class="header">
			<div class="header-container">
				<h1 class="logo">
					<a class="header-team-name js-show-focus-driver"
						href="javascript:;">新海科技集团</a>
				</h1>
			</div>
		</div>

		<div class="container workspace simple-stack simple-stack-transition">
			<div class="page page-1 simple-pjax">
				<div class="page-inner" id="page-todolist">
					<div class="todos-all">
						<div class="todolists-wrap">
							<div class="todolists">
								<div class="todolist">
									<ul class="todos todos-uncompleted ui-sortable">
										<li class="todo running">
											<div class="todo-wrap">
												<h3>
													<span class="todo-content"> <span
														class="content-linkable"> <a class="todo-rest">分享项目：【${shareProject.projectName }】</a>
													</span>
													</span>
												</h3>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<div class="comment-actions ">
						<c:forEach  var="shareFile" items="${shareFiles }">
							<div class="comment">
								<div class="comment-main">
									<div class="comment-content editor-style">
										<p>文件描述：${shareFile.file_info }</p>
									</div>
									<div class="attachments-preview gallery-wrap">
										<div class="attachment-list">
											<div class="images"></div>
											<div class="others">
												<div class="attachment">
													<div class="attachment-thumb">
														<img
															src="assets/img/<tag:enum className="FileTypeImgEnum">${shareFile.file_type }</tag:enum>">
													</div>
													<div class="attachment-info">
														<div class="name">
															<a class="link-download"><span class="-rest">${shareFile.file_name }</span></a>
														</div>
														<div class="tags"></div>
														<div class="control-dir no-dir">
															<c:choose>
																<c:when test="${b.file_status eq 'record' }">
																	<a class="link-change-dir displayBtn"
																		onclick="display('${b.file_ode }','${b.file_name }'">预览</a>
																</c:when>
																<c:when test="${b.file_status eq 'locked' }">
																	<a class="link-change-dir" >已锁定</a>
																</c:when>
															</c:choose>
															<%-- 	<c:if test="${shareFile.file_permission eq 'download' }">
															<a
																onclick="downloadFile('${shareFile.file_code }','${shareFile.file_level }')"
																class="link-change-dir">下载</a>
														</c:if> --%>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							</c:forEach>
						</div>
					</div>

				</div>

			</div>
		</div>
	</div>
	<div class="footer">© 商务智能部</div>
	<form id="displayForm" action="build/generic/web/viewer.html"
		method="get" target="_blank">
		<input id="displayValues" type="hidden" name="file" />
	</form>
	<script type="text/javascript">
	function display(code, name) {
		var str = "${pageContext.request.contextPath }/file/disPdf.do?file_info="
				+ code + "," + name;
		$("#displayValues").val(str);
		$("#displayForm").submit();
	}
	</script>
</body>

</html>