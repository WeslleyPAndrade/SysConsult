<!DOCTYPE html>
<html lang="pt-br">
<head>
  <title>SysConsult</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="./css/principal.css">
  <link rel="stylesheet" href="./css/menu_lateral.css">
  <link rel="stylesheet" href="./css/general.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script src="https://github.com/jquery/jquery-ui/blob/master/ui/i18n/datepicker-pt-BR.js"></script>
  <script>
    $( function() {
      $( ".datepicker" ).datepicker(
        {
          dateFormat:'dd/mm/yy',
          dayNames: ['Domingo','Segunda','Terça','Quarta','Quinta','Sexta','Sábado','Domingo'],
          dayNamesMin: ['D','S','T','Q','Q','S','S','D'],
          dayNamesShort: ['Dom','Seg','Ter','Qua','Qui','Sex','Sáb','Dom'],
          monthNames: ['Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro'],
          monthNamesShort: ['Jan','Fev','Mar','Abr','Mai','Jun','Jul','Ago','Set','Out','Nov','Dez'],
          closeText: "Close"
        }
      );
    } );

    
  </script>

</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href=<%if session("usuario") <> session.sessionid then %>"index.asp"<%else%> "painel.asp"<% end if %>>SysConsult</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <% if session("logado") <> session.SessionID then %>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="frm_login.asp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
      <%
          else
      %>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="../logout.asp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
      </ul>
      <% end if  %>
    </div>
  </div>
</nav>