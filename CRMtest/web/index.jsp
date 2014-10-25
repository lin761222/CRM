<%-- 
    Document   : index
    Created on : 2014/8/18, 上午 09:20:55
    Author     : programer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=big5" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/style/usl213.css"/>
<title>首頁</title>
</head>
<body>
<!--start headeer-->
<jsp:include page="/WEB-INF/view/common/header.jsp">
    <jsp:param name="title" value="首頁"/>
</jsp:include>
<!--end header-->
<table class="news">
<tr><td>
<p>恆逸資訊於1996年7月成立。 
以提供專業技術教育訓練為始，培訓國內資訊專業人才為使命。隨著恆逸業務拓展，恆逸資訊教育訓練事業處成為單獨之事業部門，專注於電腦資訊專業技術人員培訓，著重實務學習及技術培訓訓練。
歷年來，恆逸更因懂得掌握市場最新技術，切合當下企業及專業人才需求，奠定了恆逸在培育中高階專業技術人員的發展方向。</p>		

<p>目前恆逸資訊教育訓練中心服務據點遍佈台北、新竹、高雄。
更是多家國際原廠授權技術教育訓練中心，包括Microsoft、Cisco 、Sun Java、Red hat Linux、Trend Micro、Rational、BSi、Crystal Decisions等</p>

<p>歷年來，恆逸資訊講師群的實力展現在各大型技術研討會上，在許多前瞻性的技術研討會上，擔任主講人重任，對於最新技術的引進與教育訓練，恆逸資訊不遺餘力。</p>


<p>每一位恆逸資訊的講師均為專職專任。恆逸讓講師在無慮的環境下，研究授課內容，並且依照各講師的專長及興趣給予最嚴格的訓練，以確保授課品質，並提高學員的上課滿意度。</p>


<p>恆逸資訊堅持每一位授課講師都必須通過原廠授權的嚴格認證，並且具有多年豐富業界經驗，真正具備解決技術問題的能力。授課內容理論與實務兼具，呈現給學員的絕對是智慧結晶。</p>		
</td></tr>
</table>
<!--start footer-->
<%@include  file="/WEB-INF/view/common/footer.jsp" %>
<!--end footer-->
</body>
</html>