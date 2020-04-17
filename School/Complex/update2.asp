<%
    newNum = request.form("num")
    newName = request.form("name")
    newNorm = request.form("norm")
    newExam = request.form("exam")
    updateNum = session("updateNum")
    n = session("n")
    
    dim num(1000),name(1000),norm(1000),exam(1000)
    pos = 0
    for i = 0 to n - 1
        num(i) = session("num")(i)
        name(i) = session("name")(i)
        norm(i) = session("norm")(i)
        exam(i) = session("exam")(i)
        if updateNum = num(i) then
            num(i) = newNum
            name(i) = newName
            norm(i) = newNorm
            exam(i) = newExam
            pos = i
        end if
    next

    session("num") = num
    session("name") = name
    session("norm") = norm
    session("exam") = exam
%>
<center>
    更新过后的学生信息
    <table border = 1>
        <tr>
            <td align="center">新学号</td>
            <td align="center">新姓名</td>
            <td align="center">新平时成绩</td>
            <td align="center">新期末成绩</td>
        </tr>
        <tr>
            <td align="center"><% = session("num")(pos)%></td>
            <td align="center"><% = session("name")(pos)%></td>
            <td align="center"><% = session("norm")(pos)%></td>
            <td align="center"><% = session("exam")(pos)%></td>
        </tr>
    </table>
</center>
