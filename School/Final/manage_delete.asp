<!--#include file = "conn.asp"-->
<%
    num = request.querystring("link_num")
    
    sqlstr = "select * from data where num = '"&num&"' "
    set a = db.execute(sqlstr)
    if not a.eof then
        sqlstr = "delete * from data where num = '"&num&"' "
        db.execute sqlstr
%>
<script language = javascript>
    alert("���Ѿ��ɹ�ɾ��!");
    history.back();
</script>
<% else %>
<script language = javascript>
    alert("��¼������!");
    history.back();
</script>
<%end if%>