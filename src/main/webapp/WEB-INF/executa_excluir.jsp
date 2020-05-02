

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.CadastroDAO"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try{
                CadastroDAO cadd = new CadastroDAO(); 
                cadd.excluir(Integer.parseInt(request.getParameter("login")))
            }catch()(Exception erro){
                throw new RuntimeException("Erro 9"+erro);
            
            }

        %>    
    </body>
</html>
