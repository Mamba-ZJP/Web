<!--#include file = "conn.asp"-->
<%
    num = cstr(request.form("num"))
    sqlstr = "select * from data where num = '"&num&"' "
    set rs = db.execute(sqlstr)
    
    if not rs.eof then
%>
<center>
寻找的记录如下
    <table border = 1>
        <tr>
            <td>编号</td>
            <td>品种1皮壳中含油料粒量的含量</td>
            <td>品种1皮壳中含油料粒量综合评价</td>

            <td>品种1油（皂）脚中含油率含量</td>
            <td>品种1油（皂）脚中含油率综合评价</td>

            <td>品种1废白土中含油率的含量</td>
            <td>品种1废白土中含油率综合评价</td>

            <td>品种2皮壳中含油料粒量的含量</td>
            <td>品种2皮壳中含油料粒量综合评价</td>

            <td>品种2油（皂）脚中含油率含量</td>
            <td>品种2油（皂）脚中含油率综合评价</td>

            <td>品种2废白土中含油率的含量</td>
            <td>品种2废白土中含油率综合评价</td>
        </tr>
        <tr>
            <td><%=rs(0)%></td>

            <td><%=rs(1)%></td>
            <td><%=rs(2)%></td>
            <td><%=rs(3)%></td>
            <td><%=rs(4)%></td>
            <td><%=rs(5)%></td>
            <td><%=rs(6)%></td>
            <td><%=rs(7)%></td>
            <td><%=rs(8)%></td>
            <td><%=rs(9)%></td>
            <td><%=rs(10)%></td>
            <td><%=rs(11)%></td>
            <td><%=rs(12)%></td>
            
        </tr>
    </table>
</center>
<%
 else
%>
    <script language = javascript>
        alert("编号不存在");
        history.back();
    </script>
<%end if%>
