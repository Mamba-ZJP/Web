<!--#include file = "conn.asp"-->
<%
    pass = session("num")
    set rs = server.createobject("adodb.recordset")
    sqlstr = "select * from st where num = '"&pass&"' "
    rs.open sqlstr,db,0,2
    rs(0) = cstr(num)
    rs(1) = cint(1_A_Vol)
    rs(2) = cstr(1_A_Com)
    rs(3) = cint(1_B_Vol)
    rs(4) = cstr(1_B_Com)
    rs(5) = cint(1_C_Vol)
    rs(6) = cstr(1_C_Com)

    rs(7) = cint(2_A_Vol)
    rs(8) = cstr(2_A_Com)
    rs(9) = cint(2_B_Vol)
    rs(10) = cstr(2_B_Com)
    rs(11) = cint(2_C_Vol)
    rs(12) = cstr(2_C_Com)
    rs.update
    if db.errors.count<>0 then
%>
<script language = javascript>
    alert("编号重复");
    history.back();
</script>
<% else %>
<script language = javascript>
    alert("修改成功");
    history.back();
</script>
<% end if%>
