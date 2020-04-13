<%
    updateNum = request.form("num")
    n = session("n")
    i = 0
    for i = 0 to n - 1
        if session("num")(i) = updateNum then
            exit for
        end if
    next

    if i >= n then
        response.write "<script language = javascript>"
        response.write "alert('??????????');"
        response.write "history.back();"
        response.write "</script>"
    end if
%>
<center>
    information
    <table border = 1>
        <form name = "form" method="POST" action="update3.asp">
            <tr>
                <td align="center">num</td>
                <td align="center">name</td>
                <td align="center">norm</td>
                <td align="center">exam</td>
            </tr>
            <tr>
                <td align="center"><% = session("num")(i)%></td>
                <td align="center"><% = session("name")(i)%></td>
                <td align="center"><% = session("norm")(i)%></td>
                <td align="center"><% = session("exam")(i)%></td>
            </tr>
            <tr>
                <td align="center">num</td>
                <td align="center">name</td>
                <td align="center">norm</td>
                <td align="center">exam</td>
            </tr>
            <tr>
                <td align="center"><input type = "text" name = "num"></td>
                <td align="center"><input type = "text" name = "name"></td>
                <td align="center"><input type = "text" name = "norm"></td>
                <td align="center"><input type = "text" name = "exam"></td>
            </tr>
        </form>
    </table>
</center>
