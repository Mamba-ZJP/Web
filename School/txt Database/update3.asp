<!--#include file = "show.txt"-->
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
        if newNum = num(i) then
            %>
            <script language = javascript>
                alert("错改成别人的学号了");
                history.back();
            </script>
            <%
        end if
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

    show_session
%>
