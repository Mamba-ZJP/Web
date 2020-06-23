<!--#include file = "conn.asp"-->
<%
    num = request.form("num")
    1_A_Vol = request.form("1_A_Vol")
    1_A_Com = request.form("1_A_Com")

    1_B_Vol = request.form("1_B_Vol")
    1_B_Com = request.form("1_B_Com")

    1_C_Vol = request.form("1_C_Vol")
    1_C_Com = request.form("1_C_Com")


    2_A_Vol = request.form("2_A_Vol")
    2_A_Com = request.form("2_A_Com")

    2_B_Vol = request.form("2_B_Vol")
    2_B_Com = request.form("2_B_Com")
    
    2_C_Vol = request.form("2_C_Vol")
    2_C_Com = request.form("2_C_Com")


    set rs = server.createobject("adodb.recordset")
    sqlstr = "select * from st"
    rs.open sqlstr,db,0,2
    rs.addnew
    on error resume next
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
    if db.errors.count=0 then
%>
<script language = javascript>
    alert("插入成功");
    history.back();
</script>
<% else %>
<script language = javascript>
    alert("插入失败");
    history.back();
</script>
<% end if %>
