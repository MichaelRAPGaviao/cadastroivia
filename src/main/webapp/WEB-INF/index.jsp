<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.CadastroDAO"%>
<%@page import="model.Cadastro"%>
<%@page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="index.jsp" method="post">
            <label>Nome:</label><br/>
            
            <input type="text" name="nome"></br>
            
            <button type="submit">
                OK
            </button>
        </form>
        
        <%
            try{
                out.print("<table>");
                out.print("<tr>");
                out.print("<th>Login</th><th>Nome</th><th>Email</th><th>DDD</th><th>Numero</th><th>Telefone</th><th>Editar</th><th>Excluir</th>");
                CadastroDAO cadd - new CadastroDAO();
                if(request.getParameter("Nome") == "" || request.getParameter("Nome")== null){
                    Arraylist<Cadastro> lista = cadd.listarTodos();
                    for(int num = 0;num < lista.size(); num++){
                       out.print("<tr>");
                       out.print("<td>"+lista.get(num).getLogin()+"</td>");
                       out.print("<td>"+lista.get(num).getNome()+"</td>");
                       out.print("<td>"+lista.get(num).getEmail()+"</td>");
                       out.print("<td>"+lista.get(num).getDDD()+"</td>");
                       out.print("<td>"+lista.get(num).getNumero()+"</td>");
                       out.print("<td>"+lista.get(num).getTelefone()+"</td>");
                       out.print("<td><a href='alterar.jsp?login="++lista.get(num).getLogin()+'&nome='+lista.get(num).getNome()+'&email='+lista.get(num).getEmail()+'&DDD='+lista.get(num).getDDD()+'&numero='+lista.get(num).getNumero()+'&Telefone='+lista.get(num).getTelefone()+">CONFIRME</td>");
                       out.print("<td><a href='excluir.jsp?login="++lista.get(num).getLogin()+'&nome='+lista.get(num).getNome()+'&email='+lista.get(num).getEmail()+'&DDD='+lista.get(num).getDDD()+'&numero='+lista.get(num).getNumero()+'&Telefone='+lista.get(num).getTelefone()+">CONFIRME</td>");
                       out.print("</tr>");
                    }    
                }else
                             Arraylist<Cadastro> lista = cadd.listarTodosNome(request.getParameter("nome"));
                    for(int num = 0;num < lista.size(); num++){
                       out.print("<tr>");
                       out.print("<td>"+lista.get(num).getLogin()+"</td>");
                       out.print("<td>"+lista.get(num).getNome()+"</td>");
                       out.print("<td>"+lista.get(num).getEmail()+"</td>");
                       out.print("<td>"+lista.get(num).getDDD()+"</td>");
                       out.print("<td>"+lista.get(num).getNumero()+"</td>");
                       out.print("<td>"+lista.get(num).getTelefone()+"</td>");
                       out.print("<td><a href='alterar.jsp?login="++lista.get(num).getLogin()+'&nome='+lista.get(num).getNome()+'&email='+lista.get(num).getEmail()+'&DDD='+lista.get(num).getDDD()+'&numero='+lista.get(num).getNumero()+'&Telefone='+lista.get(num).getTelefone()+">CONFIRME</td>");
                       out.print("<td><a href='excluir.jsp?login="++lista.get(num).getLogin()+'&nome='+lista.get(num).getNome()+'&email='+lista.get(num).getEmail()+'&DDD='+lista.get(num).getDDD()+'&numero='+lista.get(num).getNumero()+'&Telefone='+lista.get(num).getTelefone()+">CONFIRME</td>");
                       out.print("</tr>");
                    }
                
                
                out.print("</tr>");        
                out.print("</table>");
            
            }catch()(Exception erro){
                throw new RuntimeException("Erro 10"+ erro);
                
            }
            }
        %>    
    </body>
</html>
