<!--#include file = "conn.asp"-->

    num = cstr(request.form("num"))
    sqlstr = "select * from st where num = '"&num&"' "
    set rs = db.execute(sqlstr)
  
    if rs.eof then
%>
<script language = javascript>
    alert("记录不存在");
    history.back();
</script>

<% else session("num") = rs(0) %>

<center>
更新记录
    <table border = 1>
        <form name = "form1" method = "POST" action="update2.asp" >
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
            <tr>
                <td><input type = text name = "num" value = <%=rs(0)%> ></td>
                <td><input type = text name = "1_A_Vol" value = <%=rs(1)%> ></td>
                <td><input type = text name = "1_A_Com" value = <%=rs(2)%> ></td>
                <td><input type = text name = "1_B_Vol" value = <%=rs(3)%> ></td>
                <td><input type = text name = "1_B_Com" value = <%=rs(4)%> ></td>
                <td><input type = text name = "1_C_Vol" value = <%=rs(5)%> ></td>
                <td><input type = text name = "1_C_Vol" value = <%=rs(6)%> ></td>

                <td><input type = text name = "1_A_Vol" value = <%=rs(7)%> ></td>
                <td><input type = text name = "1_A_Com" value = <%=rs(8)%> ></td>
                <td><input type = text name = "1_B_Vol" value = <%=rs(9)%> ></td>
                <td><input type = text name = "1_B_Com" value = <%=rs(10)%> ></td>
                <td><input type = text name = "1_C_Vol" value = <%=rs(11)%> ></td>
                <td><input type = text name = "1_C_Vol" value = <%=rs(12)%> ></td>
            </tr>
            <tr>
                <td colspan="4" align=center><input type = "submit" name = "s" value = "提交"></td>
            </tr>
       </form>
    </table>
</center>

<%end if%>
