<%
    location="dbq="&server.mappath("data.mdb")
    pamter2="driver={microsoft access driver (*.mdb)}"
    set db=server.createobject("adodb.connection")
    db.open location&";"&pamter2
%>
