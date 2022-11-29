package com.example.examenfinal.Daos;

import com.example.examenfinal.Beans.ServicioBean;
import com.example.examenfinal.Beans.UsuarioBean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class UsuarioDao extends BaseDao{

    public ArrayList<ServicioBean> listaServicios(){
        ArrayList<ServicioBean> listaserv = new ArrayList<>();


        return listaserv;
    }

    public UsuarioBean validarContrasena(String correo, String contrasena){
        UsuarioBean user = null;

        String sql = "SELECT * FROM nombreBD.usuario where correo = ?";
        try (Connection connection = this.getConnection();
             PreparedStatement pstmt = connection.prepareStatement(sql)) {

            pstmt.setString(1, correo);
            try (ResultSet rs = pstmt.executeQuery()) {

                if (rs.next()) {
                    user = new UsuarioBean();
                    user.setIdUsuario(rs.getInt(1));
                    user.setNombre(rs.getString(2));
                    user.setApellido(rs.getString(3));
                    user.setCorreo(rs.getString(4));
                    user.setTipo(rs.getString(5));
                    user.setContrasena(rs.getString(6));

                }

            }

        }catch(SQLException e){
            throw new RuntimeException(e);
        }

        try{if(user.getContrasena().equals((contrasena))){
            return user;}
        else{
            UsuarioBean user2 = null;
            return user2;
        }
        } catch (NullPointerException e) {
            UsuarioBean user2 = null;
            return user2;
        }

    }


}
