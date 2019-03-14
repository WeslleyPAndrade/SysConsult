<!--#include file="./includes/verifica_login.asp"-->
<!--#include file="./includes/banco.asp"-->
<!--#include file="./includes/utils.asp"-->
<%

if (request("medico") <> 0) then

    if (not isnull(request("data"))) and (request("data") <> "") then
        
        medico = request("medico")
        'data = converte_data_banco(request("data"))
        data = request("data")

        strInsert = "update consultas set id_medico = "&medico&", data = CONVERT (DATE, '"&data&"',103) where id = "&request("consulta")

        conn.execute(strInsert)
        session("consultaMarcada") = 0
        response.redirect("frm_agendamentos.asp")
    else
        session("consultaMarcada") = 2
        response.redirect("frm_agendamentos.asp")
    end if
else
    session("consultaMarcada") = 1
    response.redirect("frm_agendamentos.asp")
end if
%>