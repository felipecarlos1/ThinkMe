/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.thinkme.dal;

import java.sql.*;

/**
 *
 * @author fcafe
 */
public class MóduloConexão {
    // método responsável por estabelecer conexão com o banco de dados
    public static Connection conector() {
        Connection conexao = null;
        // chamando o driver
        String driver = "com.mysql.cj.jdbc.Driver";
        // armazenando informações referente ao banco
        String url = "jdbc:mysql://localhost:3306/dbtm";
        String user = "root";
        String password = "91939";
        // estabelecendo conexão com o banco
        try {
            Class.forName(driver);
            conexao = DriverManager.getConnection(url, user, password);
            return conexao;
        } catch (Exception e) {
            //esclarecendo o erro
            System.out.println(e);
            return null;
        }
    }
}
