

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inserir</title>
    </head>
    <body>
        
        <form action="executa_inserir.jsp" method="post">
            
            <label>Login:</label><br/>
            <input type="text" name="login"/><br/>
            
            <label>Nome:</label><br/>
            <input type="text" name="nome"/><br/>
            
             <label>Email:</label><br/>
            <input type="text" name="email"/><br/>
            
            <label>DDD:</label><br/>
            <input type="text" name="ddd"/><br/>
            
            <label>Numero:</label><br/>
            <input type="text" name="numero"/><br/>
            
            <label>Telefone:</label><br/>
            <input type="text" name="telefone"/><br/>
            
            <button type="submit">
                OK    
            </button>
    </body>
</html>
