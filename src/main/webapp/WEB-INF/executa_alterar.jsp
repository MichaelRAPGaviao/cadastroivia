

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Cadastro"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
            try{
                Cadastro cad = new Cadastro();
                CadastroDAO cadd = new CadastroDAO();
                if(request.getParameter("nome").equals("") || request.getParameter("email").equals("")){
                    response.sendRedirect("index.jsp")
                }else
                    cad.setLogin(request.getParameter("Login"));
                    cad.setNome(request.getParameter("Nome"));
                    cad.setEmail(request.getParameter("Email"));
                    cad.setDDD(request.getParameter("DDD"));
                    cad.setNumero(request.getParameter("Numero"));
                    cadd.alterar(cad);
                    response.sendRedirect("index.jsp")
                }
            }catch(Exception erro){
                throw new RuntimeException("Erro 8"+erro);
            }
        %>    
        
    </body>
</html>
