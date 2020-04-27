<script language = javascript>
    function isNum(str){
        for(i = 0;i < str.length;++i){
            if(str[i] < '0' || str[i] > '9') return false;
        }
        return true;
    }
    function check_num(){
        if(document.form1.a.value == ""){
            alert("学号不能为空"); return false;
        }
        else if(document.form1.a.value.length != 9){
            alert("学号必须是九位"); return false;
        }
        else if(!isNum(document.form1.a.value)){
            alert("学号必须是数字"); return false;
        }
        else if(document.form1.b.value == ""){
            alert("姓名不能为空"); return false;
        }
        else if(document.form1.b.value.length > 4){
            alert("姓名不能过长"); return false;
        }
        else if(document.form1.c.value == ""){
            alert("平时成绩不能为空"); return false;
        }
        else if(!isNum(document.form1.c.value)){
            alert("平时成绩必须是数字"); return false;
        }
        else if(parseInt(document.form1.c.value) < 0 || parseInt(document.form1.c.value) > 100){
            alert("平时成绩必须在0~100内"); return false;
        }
        else if(document.form1.d.value == ""){
            alert("期末成绩不能为空"); return false;
        }
        else if(!isNum(document.form1.d.value)){
            alert("期末成绩必须是数字"); return false;
        }
        else if(parseInt(document.form1.d.value) < 0 || parseInt(document.form1.d.value) > 100){
            alert("期末成绩必须在0~100内"); return false;
        }
        return true;
    }
</script>

<center>
    输入查询的学生信息
    <table border = 1>
        <form name = "form1" method = "POST" action="search_record.asp" onsubmit="javascript:return check_num();">
            <tr>
                <td align="center">学号</td>
                <td><input type = "text" name = "a"></td>
            </tr>
            <tr>
                <td align="center">姓名</td>
                <td><input type = "text" name = "b"></td>
            </tr>
            <tr>
                <td align="center">平时成绩</td>
                <td><input type = "text" name = "c"></td>
            </tr>
            <tr>
                <td align="center">考试成绩</td>
                <td><input type = "text" name = "d"></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type = "submit" name = "b" value = "确认"></td>
            </tr>
        </form>
    </table>
</center>
