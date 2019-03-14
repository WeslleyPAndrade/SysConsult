<%
  response.Charset="ISO-8859-1"
%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
  <title>Login</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="css/login.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<form method="POST" action="login.asp" class="form-signin">
    <div class="form-group">
        <label for="usuario">Usuario</label>
        <input class="form-control" type="text" placeholder="Digite o nome de Usuário" name="usuario" required>
        <br>
        <label for="senha">Senha</label>
        <input class="form-control" type="password" placeholder="Digite sua senha" name="senha" required>

    <input class="btn btn-lg btn-primary btn-block" type="submit" value="Login">

    </div>

</form>
</body>
</html>