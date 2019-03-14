<%
  if session("logado") = Session.SessionID then
    response.redirect("painel.asp")
  end if
%>
<!--#include file="./includes/header.asp"-->
  
<div class="container-fluid text-center ">    
  <div class="row content">
    <div class="col-sm-8 col-sm-push-2 text-justify "> 
      
      <figure>
        <img class="img-responsive" src="./img/consult.jpeg">
        <figcaption class="img-responsive"><h1 class="text-center ">Bem vindo ao SysConsult</h1></figcaption>
      </figure>
    </div>
    
  </div>
</div>

<footer class="container-fluid text-center">
  <p>Criado por Weslley Andrade</p>
</footer>

</body>
</html>
