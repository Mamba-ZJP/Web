<%

set x1App = CreateObject("Excel.Application")
strsource = server.MapPath("book.xlsx")
set x1book = x1App.WorkBooks.Open(strsource)
set x1sheet = x1book.Worksheets(1)
i = 1
response.write "<center>"
response.write "<table border = '1'>"

%>
<%
while x1sheet.cells(i,1) <> ""
    response.write "<tr>"
    response.write "<td align='center'>" & x1sheet.Cells(i,1) & "</td>"

    response.write "<td align='center'>" & x1sheet.Cells(i,2) & "</td>"
    response.write "<td align='center'>" & x1sheet.Cells(i,3) & "</td>"
    response.write "<td align='center'>" & x1sheet.Cells(i,4) & "</td>"
    response.write "<td align='center'>" & x1sheet.Cells(i,5) & "</td>"
    response.write "<td align='center'>" & x1sheet.Cells(i,6) & "</td>"
    response.write "<td align='center'>" & x1sheet.Cells(i,7) & "</td>"
    
    response.write "<td align='center'>" & x1sheet.Cells(i,8) & "</td>"
    response.write "<td align='center'>" & x1sheet.Cells(i,9) & "</td>"
    response.write "<td align='center'>" & x1sheet.Cells(i,10) & "</td>"
    response.write "<td align='center'>" & x1sheet.Cells(i,11) & "</td>"
    response.write "<td align='center'>" & x1sheet.Cells(i,12) & "</td>"
    response.write "<td align='center'>" & x1sheet.Cells(i,13) & "</td>"
    response.write "</tr>"
    i = i + 1
wend

response.write "</table>"
response.write "</center>"

set x1sheet = nothing
set x1book = nothing
x1App.quit

%>
