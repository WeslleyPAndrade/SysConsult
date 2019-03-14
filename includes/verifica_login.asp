<%
if session("logado") <> Session.SessionID then
    response.redirect("../index.asp")
    response.end
end if
%>