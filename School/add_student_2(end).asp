<%
fnum=request.form("num")
fname=request.form("name")
fnorm=request.form("norm")
fexam=request.form("exam")

set fb=createobject("scripting.filesystemobject")
set fp=fb.opentextfile("E:\Code\Web\College\homework\stu.txt")


do while not fp.atendofstream
  s=fp.readline
  b=split(s," ")
  if  b(0) = fnum  then
    exit do
  end if
loop

if fp.atendofstream then
   fp.close
   set fp = fb.opentextfile("E:\Code\Web\College\homework\stu.txt",8) //8 means append the information in the end of file
   fp.writeline fnum&" "&fname&" "&fnorm&" "&fexam
   fp.close
else 
  response.write "<script language = javascript>"
  response.write "alert( 'The number cannot be the same');"
  response.write "</script>" 
end if
%>
