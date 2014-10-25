<%-- 
    Document   : header
    Created on : 2014/8/18, 上午 09:22:47
    Author     : programer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="content">
	<table class="logo">
		<tr class="logo">
			<td class="logo">
				<img src="<%=request.getContextPath()%>/image/PCGIAP_logo.jpg" alt="logo" style="width:150px;float:left"/>
				<div style="margin-top:60px;font-family:Verdana;font-size:1.2em">
                                    UCOM IT Education Center
                                <span style="margin-top:60px;font-family:Verdana;font-size:0.7em;color: brown">${param.title}</span>
                                </div>
			</td>	
		</tr>
	</table>
	<p class="nav">
		<a class="nav" href="<%=request.getContextPath()%>/.">首頁</a> | 
		<a class="nav" href="<%=request.getContextPath()%>/ntn.view">九九乘法表</a>  |  
		<a class="nav" href="<%=request.getContextPath()%>/dump.view">DumpServlet</a>  |  
		<a class="nav" href="<%=request.getContextPath()%>/customer/createAccount.jsp">新增客戶資料</a>  | 
                
		<a class="nav" href="<%=request.getContextPath()%>/ntn.jsp">JSP九九乘法表</a>  |  
                <%if(request.isUserInRole("mis")){%>
                    <a class="nav" href="<%=request.getContextPath()%>/admin/adminCenter.jsp">管理中心</a>  
                <%}%>
                <%if(request.isUserInRole("mis")){%>
                    <a class="nav" href="<%=request.getContextPath()%>/admin/testQuery.jsp">查詢</a>    
                <%}%>
                <%if(request.getRemoteUser()==null){%>
                     <a class="nav" href="<%=request.getContextPath()%>/login/processLogin.jsp">登入</a>
                <%}else{%>
                    | <a class="nav" href="<%=request.getContextPath()%>/login/logout.jsp">登出</a>
                <%}%>
        </p>

