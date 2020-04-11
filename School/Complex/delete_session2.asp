<!--#include file = "load_session.txt"-->
<%
    response.write "fuck"
    if session("n") = "" then
        load_session "stu.txt"
    end if

    delNum = request.form("num")
    num(1000),name(1000),norm(1000),exam(1000),hasThisStudent = 0

    n = session("n")
    for i = 0 to n - 1
        num(i) = session("num")(i)
        name(i) = session("name")(i)
        norm(i) = session("norm")(i)
        exam(i) = session("exam")(i)
        if num(i) = delNum then
            hasThisStudent = 1
            while i <= n - 2
                num(i) = session("num")(i + 1)
                name(i) = session("name")(i + 1)
                norm(i) = session("norm")(i + 1)
                exam(i) = session("exam")(i + 1)
                i = i + 1
            wend 
            exit for
        end if
    next
    
    if hasThisStudent = 0 then
        response.write "<script language = javascript>"
        response.write "alert('no found');"
        response.write "history.back();"
        response.write "</script>"
    end if
    
    session("n") = n - 1
    session("num") = num
    session("name") = name
    session("norm") = norm
    session("exam") = exam
           
%>
<center>
    <table border= 1>
        <tr>
            <td align=center>???</td>
            <td align=center>????</td>
            <td align=center> ?????</td>
            <td align=center>??????</td>
        </tr>
        <%for i = 0 to n - 2%>
        <tr>
            <td align=center><% = num(i) %></td>
            <td align=center><% = name(i) %></td>
            <td align=center><% = norm(i) %></td>
            <td align=center><% = exam(i) %></td>
        </tr>
        <%next%>  
    </table>
</center>
