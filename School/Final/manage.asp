<!--#include file = "conn.asp"-->
<%
set rs = server.createobject("adodb.recordset")
strsql = "select * from data"
rs.open strsql,db,1
%>

<div align = "center">
    <font size = "8" color = red>
        <b>�����¼</b>
    </font>
    <table border = "1">
        <tr>
            <td align="center">���</td>
            <td align="center">Ʒ��1Ƥ���к����������ĺ���</td>
            <td align="center">Ʒ��1Ƥ���к����������ۺ�����</td>
            <td align="center">Ʒ��1�ͣ������к����ʺ���</td>
            <td align="center">Ʒ��1�ͣ������к������ۺ�����</td>
            <td align="center">Ʒ��1�ϰ����к����ʵĺ���</td>
            <td align="center">Ʒ��1�ϰ����к������ۺ�����</td>

            <td align="center">Ʒ��2Ƥ���к����������ĺ���</td>
            <td align="center">Ʒ��2Ƥ���к����������ۺ�����</td>
            <td align="center">Ʒ��2�ͣ������к����ʺ���</td>
            <td align="center">Ʒ��2�ͣ������к������ۺ�����</td>
            <td align="center">Ʒ��2�ϰ����к����ʵĺ���</td>
            <td align="center">Ʒ��2�ϰ����к������ۺ�����</td>
             <td align="center" width = "50">ɾ��</td> 
            <td align="center" width = "50">�޸�</td>
        </tr>
        <%
            if not rs.bof and not rs.eof then
                if request.querystring("page_no") = "" then 
                    page_no = 1
                else
                    page_no = cint(request.querystring("page_no"))
                end if

                rs.pagesize = 1
                rs.absolutepage = page_no

                i = rs.pagesize
                while  not rs.eof and i > 0
                    i = i - 1
        %>
        <center>
            <tr align="center">
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
                    <td><a href="manage_delete.asp?link_num=<%=rs(0)%>"> &nbsp;ɾ��&nbsp;</a></td>
                    <td><a href="manage_update.asp?link_num=<%=rs(0)%>"> &nbsp;�޸�&nbsp;</a></td>
            </tr>
            <%
                rs.movenext
                wend
            %>
        </center>
    </table>
    <%
        response.write "��ѡ������ҳ:"
        for i = 1 to rs.pagecount
            if i = page_no then
                response.write i & "&nbsp"
            else
                response.write "<a href='manage.asp?page_no="&i&"' >"&i&"</a>&nbsp"
            end if
        next

        else
            response.write "��¼Ϊ��"
        end if
    %>
