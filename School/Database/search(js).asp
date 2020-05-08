  
<script language = javascript>
    function isNum(str){
       if(str[0] == '+'){
           for(i = 0;i < str.length - 1;++i) str[i] = str[i + 1];
           return true;
       }
       if(str[0] == '-' ){ i = 1;}
       else {i = 0;}
        for(;i < str.length;++i){
            if(str[i] < '0' || str[i] > '9') return false;
        }
        return true;
    }
    
    function check_socre(str){
        n = s.length;
        //检查是否为0
        if(n == 1 && s[0] == '0') return true;

        //检查前缀是否为0
        if(s[0] == '0') return false;

        //只有一个符号
        if(n == 1 && (s[0] == '+' || s[0] == '-')) return false;

        //只有符号和0
        if((s[0] == '+' || s[0] == '-') && s[1] == '0') return false;

        //第一位既不是符号 也不是数字
        if(s[0] != '+' && s[0] != '-' && !(s[0] >= '0' && s[0] <= '9')) return false;
        
        //依次检查
        for(i = 1;i < n;++i)
            if(s[i] < '0' || s[i] > '9') return false;
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
        
        else if(document.form1.b.value.length > 4 || document.form1.b.value.length < 2){
            alert("姓名不能大于4个汉字或者小于2个汉字"); return false;
        }
        else if(document.form1.c.value == ""){
            alert("平时成绩不能为空"); return false;
        }
        else if(!check_socre(document.form1.c.value)){
            alert("平时成绩必须是数字"); return false;
        }
        else if(Number(document.form1.c.value) < 0 || Number(document.form1.c.value) > 100){
            alert("平时成绩必须在0~100内"); return false;
        }
        else if(document.form1.d.value == ""){
            alert("期末成绩不能为空"); return false;
        }
        else if(!check_socre(document.form1.d.value)){
            alert("期末成绩必须是数字"); return false;
        }
        else if(Number(document.form1.d.value) < 0 || Number(document.form1.d.value) > 100){
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
