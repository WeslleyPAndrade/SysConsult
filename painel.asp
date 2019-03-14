<!--#include file="./includes/verifica_login.asp"-->
<!--#include file="./includes/banco.asp"-->
<!--#include file="./includes/utils.asp"-->
<!--#include file="./includes/header.asp"-->
  
<div class="container-fluid text-center">    
  <div class="row content">
    <!--#include file="./includes/menu.asp"-->
    <div class="col-sm-8 text-justify "> 
      <div class="panel panel-default">
        <div class="panel-heading">Consultas</div>
        <table class="table table-bordered">
            <thead>  
              <tr>
                <td>Paciente</td>
                <td>Medico</td>
                <td>Especialidade</td>                
                <td>Data</td>
                <td>Status</td>
              </tr>
            </thead>  
            <tbody>
              <%
                strSQL= "select m.nome as nome_medico,p.nome as nome_paciente,m.area_atuacao as especialidade,c.id as id, c.data as data_consulta, c.status as status_consulta from consultas as c"  
                strSQL= strSQL&" join medicos as m ON m.id = c.id_medico"
                strSQL= strSQL&" join pacientes as p ON p.id = c.id_paciente"

                set Lista = conn.execute(strSQL)

                do while not Lista.eof
              %>
              <tr>
                <td><%= Lista("nome_paciente") %></td>
                <td><%= Lista("nome_medico") %></td>
                <td><%= Lista("especialidade") %></td>
                <td><%= converte_data_exibir(Lista("data_consulta")) %></td>
                <td><%= Lista("status_consulta") %></td>
                <td><a href="alterar_consulta.asp?consulta=<%=Lista("id")%>" class="glyphicon glyphicon-pencil"></a></td>
                <td><a href="cancelar_consulta.asp?consulta=<%=Lista("id")%>" class="glyphicon glyphicon-trash"></a></td>
              </tr>
              <%
                Lista.MoveNext()
                Loop
              %>
            </tbody>
        </table>
        </div>
      </div>
    </div>
  </div>
</div>

<footer class="container-fluid text-center">
  <p>Criado por Weslley Andrade</p>
</footer>

</body>
</html>
