<!--#include file = "conn.asp"-->
<%
    num = request.form("num")
    
    sqlstr = "select * from st where num = '"&num&"' "
    set a = db.execute(sqlstr)
    if not a.eof then
        sqlstr = "delete * from st where num = '"&num&"' "
        db.execute sqlstr
%>
<script language = javascript>
    alert("你已经成功删除!");
    history.back();
</script>
<% else %>
<script language = javascript>
    alert("记录不存在!");
    history.back();
</script>
<%end if%>
