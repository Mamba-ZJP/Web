<script language = vbscript>
    sub sb_onclick()
        if form.num.value = "" then
            msgbox "查找学号不能为空"
            form.num.focus
        elseif not isnumeric(form.num.value) then
            msgbox "查找学号必须是数字"
            form.num.focus
        elseif len(form.num.value)<>9 then
            msgbox "查找学号必须是9位"
            form.num.focus
        end if
            form.submit
    end sub
</script>

<center>
    <table border = 1>
        <form name = "form" method = "post" action="search_record.asp">
            <tr>
                <td><input type = "text" name = "num"></td>
                <td><input type = "submit" name = "sb" value = "search"></td>
            </tr>
        </form>
    </table>
</center>
