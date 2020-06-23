<!--#include file = "conn.asp"-->

<%
    sqlstr = "select * from data"
    set rs = db.execute(sqlstr)
%>
<center>
调查记录如下
    <table border = 1>
        <tr>
            <td align="center">编号</td>
            <td align="center">品种1皮壳中含油料粒量的含量</td>
            <td align="center">品种1皮壳中含油料粒量综合评价</td>
            <td align="center">品种1油（皂）脚中含油率含量</td>
            <td align="center">品种1油（皂）脚中含油率综合评价</td>
            <td align="center">品种1废白土中含油率的含量</td>
            <td align="center">品种1废白土中含油率综合评价</td>

            <td align="center">品种2皮壳中含油料粒量的含量</td>
            <td align="center">品种2皮壳中含油料粒量综合评价</td>
            <td align="center">品种2油（皂）脚中含油率含量</td>
            <td align="center">品种2油（皂）脚中含油率综合评价</td>
            <td align="center">品种2废白土中含油率的含量</td>
            <td align="center">品种2废白土中含油率综合评价</td>
        </tr>
        <%do while not rs.eof%>
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
        <% 
            rs.movenext 
            loop
        %>
    </table>
</center>
