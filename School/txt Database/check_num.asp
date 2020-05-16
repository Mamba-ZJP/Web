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
    function check_information(){
        if(document.form1.num.value == ""){
            alert("学号不能为空"); return false;
        }
        else if(document.form1.num.value.length != 9){
            alert("学号必须是九位"); return false;
        }
        else if(!isNum(document.form1.num.value)){
            alert("学号必须是数字"); return false;
        }
       
       
        return true;
    }

</script>
