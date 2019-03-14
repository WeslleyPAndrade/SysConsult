<!--#include file="./includes/banco.asp"-->
<%
    'Recebe usuarios da tela de login
    usuario = replace(trim(request("usuario")),"'","")
    senha = replace(trim(request("senha")),"'","")



    'realiza consulta de verificação para ver se o usuario está cadastrado
    strSQL = "select * from usuarios where usuario = '"&usuario&"' and senha = HASHBYTES('MD5','"&senha&"')"

    'response.write (strSQL)
    set busca = conn.execute(strSQL)

    if not busca.eof then
        session("usuario") = busca("id")
        session("logado") = Session.SessionID
        response.redirect "painel.asp"
        response.end
    else
            response.redirect "frm_login.asp"  
    end if
%>

