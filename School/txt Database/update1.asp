<!--#include file = "check_num.asp"-->
<center>
    输入待更新的学生的学号
    <table border= 1>
        <form name = "form1" method = "post" action = "update2.asp" onsubmit="javascript:return check_information();">
            <tr>
                <td>学号</td>
                <td><input type = "text" name = "num"></td>
                <td><input type = "submit" name = "sb" value = "更新"></td>
            </tr>
        </form>
    </table>
</center>
