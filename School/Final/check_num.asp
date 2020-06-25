<script language = "Javascript">
    function check_information(){
        if(document.form1.num.value == ""){
            alert("学号不能为空"); return false;
        }
        else if(document.form1.num.value.length != 9){
            alert("编号必须是九位"); return false;
        }
       
        return true;
    }

</script>
