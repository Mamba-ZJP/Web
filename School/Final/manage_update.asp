<!--#include file = "conn.asp"-->
<%
    num = request.querystring("link_num")
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
    ���¼�¼
        <table border = 1>
            <form name = "form1" method = "POST" action="update2.asp" >
                <tr>
                    <td align="center">���</td>
                    <td align="center"><input type = text name = "num" value = <%=rs(0)%> ></td>
                </tr>
                <tr>
                    <td align="center">Ʒ��1Ƥ���к����������ĺ���</td>
                    <td align="center"><input type = text name = "F_A_Vol" value = <%=rs(1)%> ></td>
                </tr>
                <tr>
                    <td align="center">Ʒ��1Ƥ���к����������ۺ�����</td>
                    <td align="center"><input type = text name = "F_A_Vol" value = <%=rs(1)%> ></td>
                </tr>
                <tr>
                    <td align="center">Ʒ��1�ͣ������к����ʺ���</td>
                    <td align="center"><input type = text name = "F_A_Com" value = <%=rs(2)%> ></td>
                </tr>
                <tr>
                    <td align="center">Ʒ��1�ͣ������к������ۺ�����</td>
                    <td align="center"><input type = text name = "F_B_Vol" value = <%=rs(3)%> ></td>
                </tr>
                <tr>
                    <td align="center">Ʒ��1�ϰ����к����ʵĺ���</td>
                    <td align="center"><input type = text name = "F_C_Vol" value = <%=rs(5)%> ></td>
                </tr>
                <tr>
                    <td align="center">Ʒ��1�ϰ����к������ۺ�����</td>
                    <td align="center"><input type = text name = "F_C_Com" value = <%=rs(6)%> ></td>
                </tr>
    
    
    
                <tr>
                    <td align="center">Ʒ��2Ƥ���к����������ĺ���</td>
                    <td align="center"><input type = text name = "S_A_Vol" value = <%=rs(7)%>></td>
                
                </tr>
                <tr>
                    <td align="center">Ʒ��2Ƥ���к����������ۺ�����</td>
                    <td align="center"><input type = text name = "S_A_Com" value = <%=rs(8)%> ></td>
                </tr>
                <tr>
                    <td align="center">Ʒ��2�ͣ������к����ʺ���</td>
                    <td align="center"><input type = text name = "S_B_Vol" value = <%=rs(9)%> ></td>
                </tr>
                <tr>
                    <td align="center">Ʒ��2�ͣ������к������ۺ�����</td>
                    <td align="center"><input type = text name = "S_B_Com" value = <%=rs(10)%> ></td>
                </tr>
                <tr>
                    <td align="center">Ʒ��2�ϰ����к����ʵĺ���</td>
                    <td align="center"><input type = text name = "S_C_Vol" value = <%=rs(11)%> ></td>
                </tr>
                <tr>
                    <td align="center">Ʒ��2�ϰ����к������ۺ�����</td>
                    <td align="center"><input type = text name = "S_C_Vol" value = <%=rs(12)%> ></td>
                </tr>
    
                
        
          
            <tr>
                <td colspan="2" align=center><input type = "submit" name = "s" value = "����"></td>
            </tr>
       </form>
    </table>
</center>

<%end if%>