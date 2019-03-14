<%
    set conn = server.createObject("adodb.connection")
    conn.CommandTimeout=800
    conn.ConnectionTimeout=800
    conn.Open "Provider=sqloledb;Data Source=PE-REC-VMTEC01;Initial Catalog=estudo;User Id=Contract2;Password=M@stertech2017;"
%>