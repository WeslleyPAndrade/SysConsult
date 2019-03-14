<!--#includes file="./includes/verifica_login.asp"-->
<!--#includes file="./includes/banco.asp"-->
<%

    strSQL = "delete from consultas where id = "&request("consulta")
    conn.execute(strSQL)

    response.redirect("painel.asp")
%>