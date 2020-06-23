<!--#include file = "conn.asp"-->
<%
    num = request.form("num")
    F_A_Vol = request.form("F_A_Vol")
    F_A_Com = request.form("F_A_Com")

    F_B_Vol = request.form("F_B_Vol")
    F_B_Com = request.form("F_B_Com")

    F_C_Vol = request.form("F_C_Vol")
    F_C_Com = request.form("F_C_Com")


    S_A_Vol = request.form("S_A_Vol")
    S_A_Com = request.form("S_A_Com")

    S_B_Vol = request.form("S_B_Vol")
    S_B_Com = request.form("S_B_Com")
    
    S_C_Vol = request.form("S_C_Vol")
    S_C_Com = request.form("S_C_Com")


    set rs = server.createobject("adodb.recordset")
    sqlstr = "select * from data"
    rs.open sqlstr,db,0,2
    rs.addnew
    on error resume next
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
    if db.errors.count=0 then
%>
<script language = javascript>
    alert("succeed");
    history.back();
</script>
<% else %>
<script language = javascript>
    alert("fail");
    history.back();
</script>
<% end if %>
