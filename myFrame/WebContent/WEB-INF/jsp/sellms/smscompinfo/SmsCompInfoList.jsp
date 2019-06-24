<%@ page language="java" pageEncoding="UTF-8"%>
<script type="text/javascript" 
	src="${pageContext.request.contextPath}/js/sellms/smscompinfo/SmsCompInfo.js">
</script>

<script type="text/javascript">
	$(function() {
		smscompinfoDataGrid("${pageContext.request.contextPath}","${accessButtons.data}","${accessButtons.type}");
	});
</script>
<div class="easyui-layout" fit="true" id="smscompinfo-mainBody">

	<div data-options="region:'north',title:'',border:false"
		style="overflow:hidden;padding:10px;" align="left" split="true">
		<form id="smscompinfoSearchForm">
			<div class="searchmore">
				<label>关键字:</label>
				<input class="imf_intxt" id="keyWord" style="width:180px;" name="keyWord" type="text"/>
				<span class="imf_more"><input id="smscompinfoBtnSearch" type="button" value="搜索" class="imf_searchmore"/></span>						
				<span class="imf_all"><input id="smscompinfoBtnClean" type="button" value="显示全部" class="imf_showall"/></span>
			</div>
		</form>
	</div>
	
	<div data-options="region:'center',border:false" style="padding:5px;">
		<table id="smscompinfo-data-list"></table>
	</div>
	<div id="smscompinfo-edit-win" class="imf_pop" style="width:440px;">
		<div class="imf_pop_title"><strong>公司信息表信息列表</strong><span class="imf_pop_closed" onClick="popClosed('smscompinfo-edit-win')">关闭</span></div>
		<form id="smscompinfoEditForm" class="ui-form" method="post">
			<input type="hidden" name="xfId">
			<input type="hidden" name="recordDate">
			<input type="hidden" name="recordUser">
			<div class="imf_pop_con">
			<ul>
				<li>
					<strong>主键</strong>
					<span>
						<input  id="PK_ID" name="PK_ID" maxlength="100" class="imf_intxt easyui-validatebox" type="text" >
					</span>
				</li>
				<li>
					<strong>行业分类</strong>
					<span>
						<input  id="BUSI_TYPE" name="BUSI_TYPE" maxlength="100" class="imf_intxt easyui-validatebox" type="text" >
					</span>
				</li>
				<li>
					<strong>公司名称</strong>
					<span>
						<input  id="COMP_NAME" name="COMP_NAME" maxlength="100" class="imf_intxt easyui-validatebox" type="text" >
					</span>
				</li>
				<li>
					<strong>公司法人</strong>
					<span>
						<input  id="COMP_LEGAL" name="COMP_LEGAL" maxlength="100" class="imf_intxt easyui-validatebox" type="text" >
					</span>
				</li>
				<li>
					<strong>注册资金</strong>
					<span>
						<input  id="COMP_MONEY" name="COMP_MONEY" maxlength="100" class="imf_intxt easyui-validatebox" type="text" >
					</span>
				</li>
				<li>
					<strong>成立日期</strong>
					<span>
						<input  id="COMP_DATE" name="COMP_DATE" maxlength="100" class="imf_intxt easyui-validatebox" type="text" >
					</span>
				</li>
				<li>
					<strong>联系电话</strong>
					<span>
						<input  id="TEL_NUMBER" name="TEL_NUMBER" maxlength="100" class="imf_intxt easyui-validatebox" type="text" >
					</span>
				</li>
				<li>
					<strong>手机号码</strong>
					<span>
						<input  id="MOBILE" name="MOBILE" maxlength="100" class="imf_intxt easyui-validatebox" type="text" >
					</span>
				</li>
				<li>
					<strong>公司地址</strong>
					<span>
						<input  id="COMP_ADD" name="COMP_ADD" maxlength="100" class="imf_intxt easyui-validatebox" type="text" >
					</span>
				</li>
				<li>
					<strong>公司官网</strong>
					<span>
						<input  id="COMP_WEB" name="COMP_WEB" maxlength="100" class="imf_intxt easyui-validatebox" type="text" >
					</span>
				</li>
			</ul>
			</div>
			<div class="imf_pop_btn">
				<span><input type="button" id="smscompinfo-save" value="保存" class="imf_pop_btn_save" onClick="smscompinfoSave('${pageContext.request.contextPath}')"/></span>
				<span><input type="button" id="smscompinfo-close" value="关闭" class="imf_pop_btn_closed" onClick="popClosed('smscompinfo-edit-win')"/></span>
			</div>
			<div class="imf_pop_error" id="smscompinfo-edit-error"><p></p></div>
			<div class="imf_pop_correct" id="smscompinfo-edit-info"><p></p></div>
		</form>
	</div>
		<div id="smscompinfo-import-win" class="imf_pop" style="width:440px;">
		<div class="imf_pop_title"><strong>批量导入数据窗口</strong><span class="imf_pop_closed" onClick="popClosed('smscompinfo-import-win')">关闭</span></div>
		<form id="smscompinfo-import-form" class="ui-form" method="post" enctype="multipart/form-data">
			<div class="imf_pop_con">
			<ul>
			<li><strong>模板下载：</strong><span><a id="smscompinfo-modelDownload-btn" href="${pageContext.request.contextPath}/smscompinfo/downloadCompExcel.do"></a></span></li>
			<li><strong>导入文件：</strong><span><input id="smscompinfo-file" name="file" type="file" class="imf_intxt"/></span></li>
			</ul>
			</div>
			<div class="imf_pop_btn">
				<span><input type="button" id="import-smscompinfo-save" value="导入" class="imf_pop_btn_save" onClick="importsmscompinfo('${pageContext.request.contextPath}')"/></span>
				<span><input type="button" id="import-smscompinfo-close" value="关闭" class="imf_pop_btn_closed" onClick="popClosed('smscompinfo-import-win')"/></span>
			</div>
			<div class="imf_pop_error" id="smscompinfo-import-error"><p></p></div>
			<div class="imf_pop_correct" id="smscompinfo-import-info"><p></p></div>
		</form>
	</div>
</div>

