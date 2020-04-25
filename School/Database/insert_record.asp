<!--#include file = "conn.asp"-->
<%
    set rs = server.createobject("adodb.recordset")
    sqlstr = "select * from st"
    rs.open sqlstr,db,0,2
    rs.addnew
    on error resume next
    rs(0) = cstr(request.form("a"))
    rs(1) = cstr(request.form("b"))
    rs(2) = cint(request.form("c"))
    rs(3) = cint(request.form("d"))
    rs(4) = int(0.4*rs(2) + 0.6*rs(3))
    rs.update
    if db.errors.count=0 then
%>
<script language = javascript>
    alert("insert succeed");
    history.back();
</script>
<% else %>
<script language = javascript>
    alert("insert fail");
    history.back();
</script>
<% end if %>
