/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import model.Cadastro;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class CadastroDAO {
    
    private Connection conn;
    private PreparedStatement stmt;
    private Statement st;
    private ResultSet rs;
    private ArrayList<Cadastro> lista = new ArrayList<>();   
    
    public CadastroDAO(){
        conn = new ConnectionFactory().getConexao();
    }
    
    public void inserir(Cadastro cadastro){
        String sql = "INSERT INTO cadastro (login, nome, email, ddd, numero, telefone) VALUES (?,?,?,?,?,?)";
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, cadastro.getLogin());
            stmt.setString(2, cadastro.getNome());
            stmt.setString(3, cadastro.getEmail());
            stmt.setInt(4, cadastro.getDdd());
            stmt.setString(5, cadastro.getNumero());
            stmt.setString(6, cadastro.getTelefone());
            stmt.execute();
            stmt.close();
            
        }catch(Exception erro){
            throw new RuntimeException("Erro 2"+erro);
        }
    }
    
        public void alterar(Cadastro cadastro){
        String sql = "UPDATE cadastro SET nome = ?, email = ?, ddd = ?, numero = ?, telefone = ? WHERE login = ?) VALUES (?,?,?,?,?,?)";
        try{
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, cadastro.getLogin());
            stmt.setString(2, cadastro.getNome());
            stmt.setString(3, cadastro.getEmail());
            stmt.setInt(4, cadastro.getDdd());
            stmt.setString(5, cadastro.getNumero());
            stmt.setString(6, cadastro.getTelefone());
            stmt.execute();
            stmt.close();
            
        
        }catch(Exception erro){
            throw new RuntimeException("Erro 3"+erro);
        }
    }
        
            public void excluir(int valor){
        String sql = "DELETE FROM cadastro WHERE login = "+valor;
        try{
            st = conn.createStatement();
            st.execute(sql);
            st.close();
            
        
        }catch(Exception erro){
            throw new RuntimeException("Erro 4"+erro);
        }
    }
            
    public ArrayList<Cadastro> listarTodos(){
        String sql = "SELECT * FROM cadastro";
        try{
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while(rs.next()){
                Cadastro cadastro = new Cadastro();
                cadastro.getLogin(rs.getString("login"));
                cadastro.getNome(rs.getString("nome"));
                cadastro.getEmail(rs.getString("email"));
                cadastro.getDdd(rs.getInt("ddd"));
                cadastro.getNumero(rs.getString("numero"));
                cadastro.getTelefone(rs.getString("telefone"));
                lista.add(cadastro);
                
            }    
        }catch(Exception erro){
            throw new RuntimeException("Erro 5"+erro);
        }
        return lista;
    }
    
        public ArrayList<Cadastro> listarTodosNome(String valor){
        String sql = "SELECT * FROM cadastro WHERE nome LIKE '%'+valor+'%'";
        try{
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while(rs.next()){
                Cadastro cadastro = new Cadastro();
                cadastro.getLogin(rs.getString("login"));
                cadastro.getNome(rs.getString("nome"));
                cadastro.getEmail(rs.getString("email"));
                cadastro.getDdd(rs.getInt("ddd"));
                cadastro.getNumero(rs.getString("numero"));
                cadastro.getTelefone(rs.getString("telefone"));
                lista.add(cadastro);
                
            }    
        }catch(Exception erro){
            throw new RuntimeException("Erro 6"+erro);
        }
        return lista;
    }
    
    
}
