<!--#include file = "conn.asp"-->
<%
    num = cstr(request.form("num"))
    sqlstr = "select * from data where num = '"&num&"' "
    set rs = db.execute(sqlstr)
  
    if rs.eof then
%>
<script language = javascript>
    alert("fail");
    history.back();
</script>

<% else session("num") = rs(0) %>

<center>
    更新记录
        <table border = 1>
            <form name = "form1" method = "POST" action="update2.asp" >
                <tr>
                    <td align="center">编号</td>
                    <td align="center"><input type = text name = "num" value = <%=rs(0)%> ></td>
                </tr>
                
                <tr>
                    <td align="center">品种1皮壳中含油料粒量的含量</td>
                    <td align="center"><input type = text name = "F_A_Vol" value = <%=rs(1)%> ></td>
                </tr>
                <tr>
                    <td align="center">品种1皮壳中含油料粒量综合评价</td>
                    <td align="center"><input type = text name = "F_A_Com" value = <%=rs(2)%> ></td>
                </tr>
                <tr>
                    <td align="center">品种1油（皂）脚中含油率含量</td>
                    <td align="center"><input type = text name = "F_B_Vol" value = <%=rs(3)%> ></td>
                </tr>
                <tr>
                    <td align="center">品种1油（皂）脚中含油率综合评价</td>
                    <td align="center"><input type = text name = "F_B_Com" value = <%=rs(4)%> ></td>
                </tr>
    
                <tr>
                    <td align="center">品种1废白土中含油率的含量</td>
                    <td align="center"><input type = text name = "F_C_Vol" value = <%=rs(5)%> ></td>
                </tr>
                <tr>
                    <td align="center">品种1废白土中含油率综合评价</td>
                    <td align="center"><input type = text name = "F_C_Com" value = <%=rs(6)%> ></td>
                </tr>
    
    
    
                <tr>
                    <td align="center">品种2皮壳中含油料粒量的含量</td>
                    <td align="center"><input type = text name = "S_A_Vol" value = <%=rs(7)%>></td>
                
                </tr>
                <tr>
                    <td align="center">品种2皮壳中含油料粒量综合评价</td>
                    <td align="center"><input type = text name = "S_A_Com" value = <%=rs(8)%> ></td>
                </tr>
                <tr>
                    <td align="center">品种2油（皂）脚中含油率含量</td>
                    <td align="center"><input type = text name = "S_B_Vol" value = <%=rs(9)%> ></td>
                </tr>
                <tr>
                    <td align="center">品种2油（皂）脚中含油率综合评价</td>
                    <td align="center"><input type = text name = "S_B_Com" value = <%=rs(10)%> ></td>
                </tr>
                <tr>
                    <td align="center">品种2废白土中含油率的含量</td>
                    <td align="center"><input type = text name = "S_C_Vol" value = <%=rs(11)%> ></td>
                </tr>
                <tr>
                    <td align="center">品种2废白土中含油率综合评价</td>
                    <td align="center"><input type = text name = "S_C_Com" value = <%=rs(12)%> ></td>
                </tr>               
          
            <tr>
                <td colspan="2" align=center><input type = "submit" name = "s" value = "����"></td>
            </tr>
       </form>
    </table>
</center>

<%end if%>
