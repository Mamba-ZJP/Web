<script language = vbscript>
sub sb_onclick()
    if form.num.value = "" then
        msgbox "删除位置不能为空"
        form.num.focus
    elseif not isnumeric(form.num.value) then
        msgbox "删除位置必须是数字"
        form.num.focus
    elseif len(form.num.value)<>9 then
        msgbox "插入位置必须是9位"
        form.num.focus
    end if
end sub
</script>

<center>
    删除学生信息
    <table border = 1>
        <form name = "form" method = "post" action = "delete_session2.asp">
            <tr>
                <td align="center">删除学生信息的学号</td>
                <td><input type = "text" name = "num"></td>
                <td align="center"><input type = "submit" name = "sb" value = "删除"></td>
            </tr>
        </form>
    </table>
</center>
