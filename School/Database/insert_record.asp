<!--#include file = "conn.asp"-->
<%
    num = request.form("a")
    name = request.form("b")
    norm = request.form("c")
    exam = request.form("d")

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
    elseif name = "" then
        response.write "<script language = javascript>"
        response.write "alert('姓名不能为空');"
        response.write "history.back();"
        response.write "</script>"
    elseif norm = "" then
        response.write "<script language = javascript>"
        response.write "alert('平时成绩不能为空');"
        response.write "history.back();"
        response.write "</script>"
    elseif not isnumeric(norm) then
        response.write "<script language = javascript>"
        response.write "alert('成绩必须是数字');"
        response.write "history.back();"
        response.write "</script>"
    elseif cint(norm) > 100 or cint(norm) < 0 then
        response.write "<script language = javascript>"
        response.write "alert('成绩必须在0到100之间');"
        response.write "history.back();"
        response.write "</script>"
    elseif exam = "" then
        response.write "<script language = javascript>"
        response.write "alert('期末成绩不能为空');"
        response.write "history.back();"
        response.write "</script>"
    elseif not isnumeric(exam) then
    response.write "<script language = javascript>"
        response.write "alert('成绩必须是数字');"
        response.write "history.back();"
        response.write "</script>"
    elseif  cint(exam) > 100 or cint(exam) < 0 then
        response.write "<script language = javascript>"
        response.write "alert('成绩必须在0到100之间');"
        response.write "history.back();"
        response.write "</script>"
    end if

    set rs = server.createobject("adodb.recordset")
    sqlstr = "select * from st"
    rs.open sqlstr,db,0,2
    rs.addnew
    on error resume next
    rs(0) = cstr(num)
    rs(1) = cstr(name)
    rs(2) = cint(norm)
    rs(3) = cint(exam)
    rs(4) = int(0.4*rs(2) + 0.6*rs(3))
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
