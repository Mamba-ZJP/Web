<script language = vbscript>
sub name1_onclick()
if form1.num1.value = "" then
    msgbox "学号不能为空"
    form1.num1.focus
elseif not isnumeric(form1.num1.value) then
    msgbox "学号必须是数字"
    form1.num1.focus
else if len(form1.num1.value)<>9 then
    msgbox "学号必须是9位"
    form1.num1.focus
end if
end sub

sub norm1_onclick()
if form1.name1.value = "" then
    msgbox "姓名不能为空"
    form1.name1.focus
end if
end sub

sub exam1_onclick()
if form1.norm1.value = "" then
    msgbox "平时成绩不能为空"
    form1.norm1.focus
elseif cint(form1.norm1.value) < 0 or cint(form1.norm1.value) > 100 then
    msgbox "平时成绩必须是在0和100之间"
    form1.norm1.foucs
elseif not isnumeric(form1.norm1.value) then
    msgbox "成绩必须是数字"
    form1.norm1.focus
end if
end sub

sub location_onclick()
if form1.exam1.value = "" then
    msgbox "期末不能为空"
    form1.exam1.focus
elseif cint(form1.exam1.value) < 0 or cint(form1.exam1.value) > 100 then
    msgbox "期末成绩必须是在0和100之间"
    form1.exam1.foucs
elseif not isnumeric(form1.exam1.value) then
    msgbox "成绩必须是数字"
    form1.exam1.focus
end if
end sub

sub sb_onclick()
if form1.location.value = "" then
    msgbox "插入位置不能为空"
    form1.location.focus
elseif len(form1.location.value)<>9 then
    msgbox "插入位置必须是9位"
    form1.location.focus
elseif not isnumeric(form1.location.value) then
    msgbox "插入位置必须是数字"
    form1.location.focus
end if
end sub

</script>

<title>用网页插入学生信息</title>
<center>
    用网页插入学生信息
    <table border = 1>
        <form name="form1" method="post" action="add_student_2(random)(move_the_file).asp">
            <tr>
                <td align = center>学号</td>
                <td align = center> 姓名</td>
                <td align = center> 平时</td>
                <td align = center> 考试</td>
                <td align = center> 插入位置 </td>
            </tr>
            <tr>
                <td><input type = "text" name = "num1"></td>
                <td><input type = "text" name = "name1"></td>
                <td><input type = "text" name = "norm1"></td>
                <td><input type = "text" name = "exam1"></td>
                <td><input type = "text" name = "location"></td>
            </tr>
            <tr>
                <td colspan="5" align="center">
                    <input type = "submit" name = "sb" value = "在位置后插入">
                </td>
            </tr>
        </form>
    </table>
</center>
