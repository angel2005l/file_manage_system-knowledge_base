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

<title>知识库-文件分享</title>
<meta name="renderer" content="webkit">
<link rel="stylesheet" media="all" href="assets/css/xh_application.css">
<link rel="stylesheet" href="assets/css/xh.css" />
<script src="assets/js/analytics.js"></script>

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
			<div class="page page-0 simple-pjax">
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
														class="content-linkable"> <a class="todo-rest">项目：【${shareProject.projectName }】的分享文件</a>
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
							<div class="comment">
								<div class="comment-main">
									<div class="comment-content editor-style">
										<p>文件描述：${shareFile.fileInfo }</p>
									</div>
									<div class="attachments-preview gallery-wrap">
										<div class="attachment-list">
											<div class="images"></div>
											<div class="others">
												<div class="attachment">
													<div class="attachment-thumb">
														<img class="tempImg" src="assets/img/<tag:enum className="FileTypeImgEnum">${shareFile.fileType }</tag:enum>">
													</div>
													<div class="attachment-info">
														<div class="name">
															<a class="link-download"><span class="-rest">${shareFile.fileName }</span></a>
														</div>
														<div class="tags"></div>
														<div class="control-dir no-dir">
															<a class="link-change-dir displayBtn" data-info="${shareFile.fileType },${shareFile.fileCode },${shareFile.fileName }">预览</a>
															<%-- 	<c:if test="${b.file_permission eq 'download' }">
															<a
																onclick="downloadFile('${b.file_code }','${b.file_level }')"
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
	<script type="text/javascript" src="assets/js/layer.js"></script>
	<script type="text/javascript" src="assets/js/viewer.js"></script>
	<script type="text/javascript" src="view/js/share_file.js"></script>
</body>

</html>