
<!--#include file = "load_session.txt"-->
<%
    load_session "student.txt"
    if session("n") = "" then
    %>
        <script language = "javascript">
        alert("failed");
        </script>
    <% 
    else 
    %>
        <script language = "javascript">
        alert("success");
        </script>
    <%
    end if
%>
