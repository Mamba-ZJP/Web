<!--#include file = "conn.asp"-->
<%
    pass = session("num")
    set rs = server.createobject("adodb.recordset")
    sqlstr = "select * from st where num = '"&pass&"' "
    rs.open sqlstr,db,0,2
    rs(0) = cstr(request.form("a"))
    rs(1) = cstr(request.form("b"))
    rs(2) = cint(request.form("c"))
    rs(3) = cint(request.form("d"))
    rs(4) = int(rs(2) * 0.4 + rs(3) * 0.6)
    rs.update
    if db.errors.count<>0 then
%>
<script language = javascript>
    alert("repeat");
    history.back();
</script>
<% else %>
<script language = javascript>
    alert("success");
    history.back();
</script>
<% end if%>
