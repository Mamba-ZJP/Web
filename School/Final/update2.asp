<!--#include file = "conn.asp"-->
<%
    pass = session("num")
    set rs = server.createobject("adodb.recordset")
    sqlstr = "select * from data where num = '"&pass&"' "
    rs.open sqlstr,db,0,2
    rs(0) = cstr(num)
    rs(1) = cint(F_A_Vol)
    rs(2) = cstr(F_A_Com)
    rs(3) = cint(F_B_Vol)
    rs(4) = cstr(F_B_Com)
    rs(5) = cint(F_C_Vol)
    rs(6) = cstr(F_C_Com)

    rs(7) = cint(S_A_Vol)
    rs(8) = cstr(S_A_Com)
    rs(9) = cint(S_B_Vol)
    rs(10) = cstr(S_B_Com)
    rs(11) = cint(S_C_Vol)
    rs(12) = cstr(S_C_Com)
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
