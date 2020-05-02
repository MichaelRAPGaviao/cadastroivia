

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Cadastro"%>
<%@page import="dao.CadastroDAO"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Executando o inserir</title>
    </head>
    <body>
        
        <%
            try{
                Cadastro cad = new Cadastro();
                CadastroDAO cadd = new CadastroDAO();
                if(request.getParameter("nome").equals("") || request.getParameter("email").equals("")){
                    response.sendRedirect("index.jsp")
                }else
                    cad.setDDD(request.getParameter("DDD"));
                    cad.setNumero(request.getParameter("Numero"));
                    cadd.inserir(cad);
                    response.sendRedirect("index.jsp")
                }
            }catch(Exception erro){
                throw new RuntimeException("Erro 7"+erro);
            }
        %>    
        
    </body>
</html>
