<!--#include file = "conn.asp"-->
<%
set rs = server.createobject("adodb.recordset")
strsql = "select * from data"
rs.open strsql,db,1
%>

<div align = "center">
    <font size = "8" color = red>
        <b>调查记录</b>
    </font>
    <table border = "1">
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
                    
            </tr>
            <%
                rs.movenext
                wend
            %>
        </center>
    </table>
    <%
        response.write "请选择数据页:"
        for i = 1 to rs.pagecount
            if i = page_no then
                response.write i & "&nbsp"
            else
                response.write "<a href='show_page.asp?page_no="&i&"' >"&i&"</a>&nbsp"
            end if
        next

        else
            response.write "记录为空"
        end if
    %>
