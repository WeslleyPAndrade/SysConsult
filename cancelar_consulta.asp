<!--#includes file="./includes/verifica_login.asp"-->
<!--#includes file="./includes/banco.asp"-->
<!--#include file="./includes/utils.asp"-->
<!--#includes file="./includes/header.asp"-->

<div class="container-fluid text-center">    
  <div class="row content">
    <!--#include file="./includes/menu.asp"-->
    <div class="col-sm-8 text-left "> 
      <div class="panel panel-default col-md-12 paddings">
        <div class="panel-heading">Remover Consulta</div>
        <form method="post" action="cfm_cancelamento.asp" >
        <div class="form-group paddings">
          <div class="panel panel-default">
            <div class="panel-heading alert-warning">
                <h3 class="panel-title">Realmente deseja cancelar a consulta</h3>
            </div>
            <div class="panel-body">
                <%
                  strSQL= "select m.nome as nome_medico,p.nome as nome_paciente,m.area_atuacao as especialidade,c.id as id, c.data as data_consulta, c.status as status_consulta from consultas as c"  
                  strSQL= strSQL&" join medicos as m ON m.id = c.id_medico"
                  strSQL= strSQL&" join pacientes as p ON p.id = c.id_paciente where c.id = "&request.querystring("consulta")
                  set consulta = conn.execute(strSQL)
                %>
                <input type="hidden" name="consulta" value="<%=request.querystring("consulta")%>">
                <table class="col-md-offset-4">
                <tr>
                  <td class="borda paddings">Médico</td>
                  <td class="borda paddings"><%=consulta("nome_medico") %></td>
                </tr>
                <tr>
                  <td class="borda paddings">Especialidade</td>
                  <td class="borda paddings"><%=consulta("especialidade") %></td>
                </tr>
                <tr>
                  <td class="borda paddings">Data</td>
                  <td class="borda paddings"><%=converte_data_exibir(consulta("data_consulta")) %></td>
                </tr>
                </table>
            </div>
            <div class="btn-group paddings col-md-offset-4" role="group">
              <a class="btn text-right btn-default" href="painel.asp">Voltar</a>
              <input type="submit" class="btn text-right btn-default" value="Cancelar Consulta">
            </div>
          </div>
        </div>
        </form>
        </div>
      </div>
    </div>
  </div>
</div>

<footer class="container-fluid text-center">
  <p>Criado por Weslley Andrade</p>
</footer>