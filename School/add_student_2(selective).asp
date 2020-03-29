
<%
   location  = request.form("location")
   fnum1  = request.form("num1")
   fname1 = request.form("name1")
   fnorm1 = request.form("norm1")
   fexam1 = request.form("exam1")
   command = request.form("sb")

    if fnum = fnum1 then
        response.write "<script language = javascript>"
        response.write "alert('����ѧ�Ų�����ͬ');"
        response.write "</script>"
    end if
        set fb=Server.CreateObject("Scripting.FileSystemObject")
        set a=fb.opentextfile("E:\Code\Web\College\operate the student information\stu.txt")

        dim num(1000),name(1000),norm(1000),exam(1000),score(1000)     
        cn = 0
        haslocation = 0
        isRepeat = 0
        s = a.readline

        while not a.atendofstream
            b=split(s," ")
            if  b(0) = location then
                haslocation = 1
                if command = "��λ��ǰ����" then
                    cn = cn + 1
                    num(cn) = fnum1
                    name(cn) = fname1
                    norm(cn) = cint(fnorm1)
                    exam(cn) = cint(fexam1)
                    score(cn) = int(norm(cn) * 0.4 + exam(cn) * 0.6)
                    cn = cn + 1
                    num(cn) = b(0)
                    name(cn) = b(1)
                    norm(cn) = cint(b(2))
                    exam(cn) = cint(b(3))
                    score(cn) = int(norm(cn) * 0.4 + exam(cn) * 0.6)
                else
                    cn = cn + 1
                    num(cn) = b(0)
                    name(cn) = b(1)
                    norm(cn) = cint(b(2))
                    exam(cn) = cint(b(3))
                    score(cn) = int(norm(cn) * 0.4 + exam(cn) * 0.6)
                    cn = cn + 1
                    num(cn) = fnum1
                    name(cn) = fname1
                    norm(cn) = cint(fnorm1)
                    exam(cn) = cint(fexam1)
                    score(cn) = int(norm(cn) * 0.4 + exam(cn) * 0.6)
                end if
            else 
                cn = cn + 1
                num(cn) = b(0)
                name(cn) = b(1)
                norm(cn) = cint(b(2))
                exam(cn) = cint(b(3))
                score(cn) = int(norm(cn) * 0.4 + exam(cn) * 0.6)
            end if
            
            if b(0) = fnum1 then
                isRepeat = 1
            end if
            s = a.readline
        wend

        a.close
        if  haslocation = 0 then 
            response.write "<script language = javascript>"
            response.write "alert('û�ҵ�����λ��');"
            response.write "</script>"
        else if isRepeat = 1 then
            response.write "<script language = javascript>"
            response.write "alert('ѧ���Ѿ�����');"
            response.write "</script>"
        else 
            set fb=Server.CreateObject("Scripting.FileSystemObject")
            set a=fb.opentextfile("E:\Code\Web\College\operate the student information\stu.txt",2)
            for j = 1 to cn
                a.writeline num(j)&" "&name(j)&" "&norm(j)&" "&exam(j)&" "&score(j)
            next
            a.close
            %>
            <center>
                �µ�ѧ����Ϣ
                <table border= 1>
                    <tr>
                        <td align=center>ѧ��</td>
                        <td align=center>����</td>
                        <td align=center> ƽʱ�ɼ�</td>
                        <td align=center>���Գɼ�</td>
                        <td align=center>�����ɼ�</td>
                    </tr>
                    <%for i = 1 to cn + 1%>
                    <tr>
                        <td align=center><% response.write num(i) %></td>
                        <td align=center><% response.write name(i) %></td>
                        <td align=center><% response.write norm(i) %></td>
                        <td align=center><% response.write exam(i) %></td>
                        <td align=center><% response.write score(i) %></td>
                    </tr>
                    <%next end if end if%>  
                </table>
            </center>
    
     
