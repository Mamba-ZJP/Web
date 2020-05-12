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
        if(s[0] == '+' || s[0] == '-'){
            if(n == 1) return false;
            if(n == 2){
                if(s[1] < '0' || s[1] > '9') return false;
                else return true;
            }
            else if(n > 2){
                if(s[1] <= '0' || s[1] > '9') return false;
                for(i = 0;i < n;++i){
                    if(s[i] < '0' || s[i] > '9') return false;
                }
                return true;
            }

        }else{
            if(n >= 2 && s[0] == '0') return false;
            for(i = 0;i < n;++i){
                if(s[i] < '0' || s[i] > '9') return false;
            }
            return true;
        }
    }
    function isChinese(s){
        n = s.length;
        for(i = 0;i < n;++i){
            if(s.charCodeAt(i) < 128) return false;
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
