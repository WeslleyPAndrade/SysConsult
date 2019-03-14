<!--#includes file="./includes/verifica_login.asp"-->
<!--#includes file="./includes/banco.asp"-->
<!--#includes file="./includes/header.asp"-->

<div class="container-fluid text-center">    
  <div class="row content">
    <!--#include file="./includes/menu.asp"-->
    <div class="col-sm-8 text-left "> 
      <div class="panel panel-default col-md-12 paddings">
        <div class="panel-heading">Agendamento</div>
        <form method="post" action="agendamento.asp" >
        <div class="form-group">
            <%
              if not (isnull(session("consultaMarcada"))) and session("consultaMarcada") = 0 then
              session.contents.remove("consultaMarcada")
            %>
            <div class="alert alert-success" role="alert">
              <p>Consulta marcada com sucesso!</p>
            </div>

            <%elseif  not (isnull(session("consultaMarcada"))) and session("consultaMarcada") = 1 then
              session.contents.remove("consultaMarcada")
            %>
                <div class="alert alert-warning" role="alert">
                <p>É preciso que seja selecionado um médico</p>
              </div>
            <%elseif  not (isnull(session("consultaMarcada"))) and session("consultaMarcada") = 2 then
              session.contents.remove("consultaMarcada")
            %>
              <div class="alert alert-warning" role="alert">
                <p>É preciso definir uma data!</p>
              </div>
            <%else%>

            <%end if%>
            <%
                strSQL = "select id, nome, area_atuacao from medicos"
                set medicos = conn.execute(strSQL)
            %>
            <label for="nome-medico">Médico</label>
            <select class="form-control" name="medico">
              <option value="0">Selecione</option>
              <%do while not medicos.eof %>
              <option value="<%= medicos("id") %>"><%= medicos("nome")%> | <%= medicos("area_atuacao")%></option>
              <%
                medicos.MoveNext()
                loop
              %>
            </select>
        </div>
        <div class="form-group">
            <label for="data">Data</label>
            <div class="input-group date">
              <input type="text" class="form-control datepicker" id="data" placeholder="01/01/<%=year(now)%>" name="data" ReadOnly="true">
            </div>
        </div>
        <input type="submit" class="btn text-right" value="Agendar">
        </form>
        </div>
      </div>
    </div>
  </div>
</div>

<footer class="container-fluid text-center">
  <p>Criado por Weslley Andrade</p>
</footer>