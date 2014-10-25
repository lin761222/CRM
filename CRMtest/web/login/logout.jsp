<%
    request.logout();
    response.sendRedirect(request.getContextPath());
%>