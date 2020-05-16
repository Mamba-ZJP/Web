<%
    searchNum = request.form("num")
    n = session("n")
  
    i = 0
    for i = 0 to n - 1
        if searchNum = session("num")(i) then
            exit for
        end if
    next

    if i >= n then
    %>
        <script language = javascript>
            alert("该学号不存在");
            history.back();
        </script>
    <%
       
    else
        s = session("num")(i)&" "&session("name")(i)&" "&session("norm")(i)&" "&session("exam")(i)
        %>
        <center>
            查找的学生信息如下
            <table border= 1>
                <tr>
                    <td align=center>学号</td>
                    <td align=center>姓名</td>
                    <td align=center>平时成绩</td>
                    <td align=center>考试成绩</td>
                    
                </tr>
        
                <tr>
                    <td align=center><% = session("num")(i) %></td>
                    <td align=center><% = session("name")(i) %></td>
                    <td align=center><% = session("norm")(i) %></td>
                    <td align=center><% = session("exam")(i) %></td>
                  
                </tr>
                
            </table>
        </center>
        <%
    end if
%>
