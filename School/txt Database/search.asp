<!--#include file = "check_num.asp"-->
<center>
    查找学生信息
    <table border = 1>
        <form name = "form1" method = "post" action="search_record.asp" onsubmit="javascript:return check_information();">
            <tr>
                <td>学号</td>
                <td><input type = "text" name = "num"></td>
                <td><input type = "submit" name = "sb" value = "查找"></td>
            </tr>
        </form>
    </table>
</center>
