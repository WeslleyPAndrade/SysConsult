<%
function converte_data_banco(data)

    dia = mid(data,1,2)
    mes = mid(data,4,2)
    ano = mid(data,7,4)

    converte_data_banco = mes&"-"&dia&"-"&ano
    

end function

function converte_data_exibir(data)

    dia = mid(data,9,2)
    mes = mid(data,6,2)
    ano = mid(data,1,4)

    converte_data_exibir = dia&"/"&mes&"/"&ano

end function


%>