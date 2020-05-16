<%

    dim fb,fp
    set fb = server.createobject("scripting.filesystemobject")
    set fp = fb.opentextfile("stu.txt",2)
    n = session("n")
    if n <> "" then
        for i = 0 to n - 1
            fp.writeline session("num")(i)&" "&session("name")(i)&" "&session("norm")(i)&" "&session("exam")(i)
        next
    end if

%>
<script language = javascript>
    alert("你已经保存了记录");
    window.close();
</script>
