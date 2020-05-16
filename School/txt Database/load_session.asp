<!--#include file = "load_session.txt"-->
<%
    load_session "stu.txt"
    if session("n") = "" then
    %>
        <script language = "javascript">
        alert("载入信息失败");
        </script>
    <% 
    else 
    %>
        <script language = "javascript">
        alert("载入信息成功");
        </script>
    <%
    end if
%>
