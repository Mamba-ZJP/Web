<!--#include file = "conn.asp"-->
<!--#include file = "check_input.asp"-->
<%
    num = cstr(request.form("a"))
    sqlstr = "select * from st where num = '"&num&"' "
    set rs = db.execute(sqlstr)
  
    if rs.eof then
%>
<script language = javascript>
    alert("don't exsit");
    history.back();
</script>

<% else session("num") = rs(0) %>

<center>
    <table border = 1>
        <form name = "form1" method = "POST" action="update2.asp" onsubmit="javascript:return check_information();">
            <tr>
                <td align="center">num</td>
                <td align="center">name</td>
                <td align="center">norm</td>
                <td align="center">exam</td>
            </tr>
            <tr>
                <td><input type = text name = "a" value = <%=rs(0)%> ></td>
                <td><input type = text name = "b" value = <%=rs(1)%> ></td>
                <td><input type = text name = "c" value = <%=rs(2)%> ></td>
                <td><input type = text name = "d" value = <%=rs(3)%> ></td>
            </tr>
            <tr>
                <td colspan="4" align=center><input type = "submit" name = "s" value = "submit"></td>
            </tr>
       </form>
    </table>
</center>

<%end if%>
