<script language = vbscript>
    sub sb_onclick()
        if form.num.value = "" then
            msgbox "更新学号不能为空"
            form.num.focus
        elseif not isnumeric(form.num.value) then
            msgbox "更新学号必须是数字"
            form.num.focus
        elseif len(form.num.value)<>9 then
            msgbox "更新学号必须是9位"
            form.num.focus
        end if
            form.submit
    end sub
</script>

<title>update</title>
<center>
    <table border= 1>
        <form name = "form" method = "post" action = "update1.asp">
            <tr>
                <tr>input</tr>
                <tr><input type = "text" name = "num"></tr>
                <tr><input type = "submit" name = "sb" value = "update"></tr>
            </tr>
        </form>
    </table>
</center>
