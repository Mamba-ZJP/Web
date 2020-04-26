<!--#include file = "conn.asp"-->
<%
    num = request.form("a")
    if num = "" then
        response.write "<script language = javascript>"
        response.write "alert('学号不能为空');"
        response.write "history.back();"
        response.write "</script>"
    elseif not isnumeric(num) then
        response.write "<script language = javascript>"
        response.write "alert('学号必须是数字');"
        response.write "history.back();"
        response.write "</script>"
    elseif len(num)<>9 then
        response.write "<script language = javascript>"
        response.write "alert('学号必须是九位');"
        response.write "history.back();"
        response.write "</script>"
    end if

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
    alert("不存在!");
    history.back();
</script>
<%end if%>
