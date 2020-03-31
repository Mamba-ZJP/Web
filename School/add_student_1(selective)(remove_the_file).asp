<%
    newNum  = request.form("num1")
    newName = request.form("name1")
    newNorm = request.form("norm1")
    newExam = request.form("exam1")
    location = request.form("location")
    
    hasLocation = 0
    isRepeat = 0

    if location = newNum then
        response.write "<script language = javascript>"
        response.write "alert('学号不能一样');"
        response.write "history.back();"
        response.write "</script>"
    end if

    set fb = Server.CreateObject("Scripting.FileSystemObject")
    set readfile = fb.opentextfile("E:\Code\Web\College\operate the student information\stu.txt")

    while not readfile.atendofstream
        s = readfile.readline
        arr = split(s," ")
        if arr(0) = location then
            hasLocation = 1
        end if
        if newNum = arr(0) then
            isRepeat = 1
        end if
    wend
    readfile.close

    if hasLocation = 0 then
        response.write "<script language = javascript>"
        response.write "alert('无法找到插入位置');"
        response.write "history.back();"
        response.write "</script>"
    elseif isRepeat = 1 then
        response.write "<script language = javascript>"
        response.write "alert('学号已经存在数据库中');"
        response.write "history.back();"
        response.write "</script>"
    end if
   
    newInformation = newNum&" "&newName&" "&newNorm&" "&newExam
    set writefile = fb.createtextfile("E:\Code\Web\College\operate the student information\temp.txt")
    set readfile = fb.opentextfile("E:\Code\Web\College\operate the student information\stu.txt")
    do while not readfile.atendofstream
        s = readfile.readline
        arr = split(s," ")
        writefile.writeline s
        if arr(0) = location then
            writefile.writeline newInformation
        end if
    loop
    writefile.close
    readfile.close

    target = "E:\Code\Web\College\operate the student information\stu.txt"
    fb.deletefile target
    fb.copyfile "E:\Code\Web\College\operate the student information\temp.txt",target
    fb.deletefile "E:\Code\Web\College\operate the student information\temp.txt"

    set readfile = fb.opentextfile("E:\Code\Web\College\operate the student information\stu.txt")
    %>
    <center>
        新的学生信息
        <table border = 1>
            <tr>
                <td align=center>学号</td>
                <td align=center>姓名</td>
                <td align=center> 平时</td>
                <td align=center>期末</td>
            </tr>
            <%
            while not readfile.atendofstream
                s = readfile.readline
                arr = split(s," ")
            %>
            <tr>
                <td align=center><% response.write arr(0) %></td>
                <td align=center><% response.write arr(1) %></td>
                <td align=center><% response.write arr(2) %></td>
                <td align=center><% response.write arr(3)%></td>
            </tr>
            <%
            wend 
            %>
        </table>
    </center>
    



