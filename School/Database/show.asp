<!--#include file = "conn.asp"-->
<%
    sqlstr = "select * from st"
    set rs = db.execute(sqlstr)
%>
<center>
    <table border="1">
        <tr>
            <td>学号</td>
            <td>姓名</td>
            <td>平时成绩</td>
            <td>考试成绩</td>
            <td>总评成绩</td>
        </tr>
        <%do while not rs.eof %>
        <tr>
            <td><%=rs(0)%></td>
            <td><%=rs(1)%></td>
            <td><%=rs(2)%></td>
            <td><%=rs(3)%></td>
            <td><%=rs(4)%></td>
        </tr>
        <%  rs.movenext
            loop
        %>
    </table>
</center>
