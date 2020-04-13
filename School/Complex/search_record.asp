<%
    searchNum = request.form("num")
    n = session("n")
    response.write n
    i = 0
    for i = 0 to n - 1
        if searchNum = session("num")(i) then
            response.write i
            exit for
        end if
    next

    if i >= n then
    response.write "<script language = javascript>"
        response.write "alert('2b');"
        response.write "history.back();"
        response.write "</script>"
    else
        s = session("num")(i)&" "&session("name")(i)&" "&session("norm")(i)&" "&session("exam")(i)
        %>
        <script language = javascript>
            alert("<%=s%>");
            history.back();
        </script>
        <%
    end if
%>
