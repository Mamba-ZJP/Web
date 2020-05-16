<!--#include file = "check_input.asp"-->
<%
    updateNum = request.form("num")
    n = session("n")
    session("updateNum") = updateNum
    i = 0
    for i = 0 to n - 1
        if session("num")(i) = updateNum then
            exit for
        end if
    next

    if i >= n then
        %>
        <script language = javascript>
            alert("该学号不存在");
            history.back();
        </script>
        <%
    else
    %>

<center>
    学生记录
    <table border = 1>
        <form name = "form" method="POST" action="update3.asp" onsubmit="javascript:return check_information();">
            <tr>
                <td align="center">学号</td>
                <td align="center">姓名</td>
                <td align="center">平时成绩</td>
                <td align="center">期末成绩</td>
            </tr>
            <tr>
                <td align="center"><input type = "text" name = "num" value =<% = session("num")(i)%> > </td>
                <td align="center"><input type = "text" name = "name" value =<% = session("name")(i)%> ></td>
                <td align="center"><input type = "text" name = "norm" value =<% = session("norm")(i)%> ></td>
                <td align="center"><input type = "text" name = "exam" value =<% = session("exam")(i)%> ></td>
            </tr>
           
            <tr>
                <td colspan="4" align="center"><input type = "submit" value = "更新"></td>
            </tr>
        </form>
    </table>
</center>

<%
end if
%>
