<!--#include file = "check_input.asp"-->

<center>
    添加新的学生信息
    <table border = 1>
        <form name = "form1" method = "POST"  action = "insert_record.asp" onsubmit="javascript:return check_information();">
            <tr>
                <td align="center">学号</td>
                <td align="center">姓名</td>
                <td align="center">平时成绩</td>
                <td align="center">考试成绩</td>
                
            </tr>
            <tr>
                <td><input type = "text" name = "num"></td>
                <td><input type = "text" name = "name"></td>
                <td><input type = "text" name = "norm"></td>
                <td><input type = "text" name = "exam"></td>
            </tr>
            
            <tr>
            <td colspan = "4" align="center"><input type = "submit" name = "sb"value = "插入"></td>
            </tr>
        </form>
    </table>
</center>
