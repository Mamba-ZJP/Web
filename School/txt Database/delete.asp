<!--#include file = "check_num.asp"-->
    
    <center>
        删除学生信息
        <table border = 1>
            <form name = "form1" method = "post" action = "delete_record.asp"  onsubmit="javascript:return check_information();">
                <tr>
                    <td align="center">学号</td>
                    <td><input type = "text" name = "num"></td>
                    <td align="center"><input type = "submit" name = "sb" value = "删除"></td>
                </tr>
            </form>
        </table>
    </center>
