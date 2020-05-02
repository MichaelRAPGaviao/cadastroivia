

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar</title>
    </head>
    <body>
        
        <form action="executa_alterar.jsp" method="post">
            
            <label>Login:</label><br/>
            <input type="text" name="login" value="<%=request.getParameter("login")%>"/><br/>
            
            <label>Nome:</label><br/>
            <input type="text" name="nome" value="<%=request.getParameter("nome")%>"/><br/>
            
             <label>Email:</label><br/>
            <input type="text" name="email" value="<%=request.getParameter("email")%>"/><br/>
            
            <label>DDD:</label><br/>
            <input type="text" name="ddd" value="<%=request.getParameter("ddd")%>"/><br/>
            
            <label>Numero:</label><br/>
            <input type="text" name="numero" value="<%=request.getParameter("numero")%>"/><br/>
            
            <label>Telefone:</label><br/>
            <input type="text" name="telefone" value="<%=request.getParameter("telefone")%>"/><br/>
            
            <button type="submit">
                OK    
            </button>
    </body>
</html>

