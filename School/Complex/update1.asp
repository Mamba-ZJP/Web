<%
    updateNum = request.form("num")
    n = session("n")
    session("updateNum") = updateNum
    i = 0
    for i = 0 to n - 1
        if session("num")(i) = updateNum then
            exit for
        end if
    next

    if i >= n then
        response.write "<script language = javascript>"
        response.write "alert('学号不存在');"
        response.write "history.back();"
        response.write "</script>"
    end if
%>
<center>
    学生记录
    <table border = 1>
        <form name = "form" method="POST" action="update2.asp">
            <tr>
                <td align="center">原学号</td>
                <td align="center">原姓名</td>
                <td align="center">原平时成绩</td>
                <td align="center">原期末成绩</td>
            </tr>
            <tr>
                <td align="center"><% = session("num")(i)%></td>
                <td align="center"><% = session("name")(i)%></td>
                <td align="center"><% = session("norm")(i)%></td>
                <td align="center"><% = session("exam")(i)%></td>
            </tr>
            <tr>
                <td align="center">新学号</td>
                <td align="center">新姓名</td>
                <td align="center">新平时成绩</td>
                <td align="center">新期末成绩</td>
            </tr>
            <tr>
                <td align="center"><input type = "text" name = "num"></td>
                <td align="center"><input type = "text" name = "name"></td>
                <td align="center"><input type = "text" name = "norm"></td>
                <td align="center"><input type = "text" name = "exam"></td>
            </tr>
            <tr>
                <td colspan="4" align="center"><input type = "submit" value = "更新"></td>
            </tr>
        </form>
    </table>
</center>
