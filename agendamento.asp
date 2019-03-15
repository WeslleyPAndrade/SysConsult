<!--#include file="./includes/verifica_login.asp"-->
<!--#include file="./includes/banco.asp"-->
<!--#include file="./includes/utils.asp"-->
<%

if (request("medico") <> 0) then

    if (not isnull(request("data"))) and (request("data") <> "") then
        set paciente = conn.execute("select id,email from pacientes where id_usuario = "&session("usuario"))
        medico = request("medico")
        'data = converte_data_banco(request("data"))
        data = request("data")

        strInsert = "Set Nocount on insert into consultas (id_paciente,id_medico,data,status) values ("&paciente("id")&","&medico&",CONVERT (DATE, '"&data&"',103),'Agendado') select @@identity as codigo Set Nocount off"

        codigo_consulta = conn.execute(strInsert)

        Set Mail = Server.CreateObject("Persits.MailSender")

        

        

        if not isnull(paciente("email")) or paciente("email") <> "" then
            Mail.addAddress = paciente("email")
            Mail.body = "<html><body>"&_
                "<table class="col-md-offset-4">"&_
                "<tr>"&_
                  "<td class="borda paddings">M�dico</td>"&_
                  "<td class="borda paddings"><%=codigo_consulta("nome_medico") %></td>"&_
                "</tr>"&_
                "<tr>"&_
                  "<td class="borda paddings">Especialidade</td>"&_
                  "<td class="borda paddings"><%=codigo_consulta("especialidade") %></td>"&_
                "</tr>"&_
                "<tr>"&_
                  "<td class="borda paddings">Data</td>"&_
                  "<td class="borda paddings"><%=converte_data_exibir(codigo_consulta("data_consulta")) %></td>"&_
                "</tr>"&_
                "</table>"&_
                "</body></html>"
            On Error Resume Next
            Mail.send
            if Err <> "" then
                response.write "Erro, n�o pode completar a opera��o"
            else
                response.write "Consulta Marcada"
        end if

        
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