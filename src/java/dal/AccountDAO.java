/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.Account;

/**
 *
 * @author 84964
 */
public class AccountDAO extends DBContext {

    public Account login(String user, String pass) {
        String sql = "select * from Accounts\n"
                + "where username = '" + user + "' and password = '" + pass + "'";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("address"),
                        rs.getString("phone"),
                        rs.getString("gender"),
                        rs.getString("username"),
                        rs.getString("password"),
                        Integer.toString(rs.getInt("isadmin")));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Account selectById(int id) {
        String sql = "select * from Accounts\n"
                + "where id = " + id;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("address"),
                        rs.getString("phone"),
                        rs.getString("gender"),
                        rs.getString("username"),
                        rs.getString("password"),
                        Integer.toString(rs.getInt("isadmin")));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Account checkAccountExisted(String user) {
        String sql = "select * from Accounts\n"
                + "where username = '" + user + "'";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("address"),
                        rs.getString("phone"),
                        rs.getString("gender"),
                        rs.getString("username"),
                        rs.getString("password"),
                        Integer.toString(rs.getInt("isadmin")));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void signUp(String user, String pass, String name, String address, String phone, String gender) {
        String sql = "insert into Accounts\n"
                + "values(?,?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setString(2, address);
            st.setString(3, phone);
            st.setString(4, gender);
            st.setString(5, user);
            st.setString(6, pass);
            st.setString(7, "0");
            st.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void updateProduct(int id, String name, String address, String phone, String gender) {
        String sql = "update Accounts\n"
                + "set [name] = ?, [address] = ?, phone = ?, gender = ?\n"
                + "where id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setString(2, address);
            st.setString(3, phone);
            st.setString(4, gender);
            st.setInt(5, id);
            st.executeUpdate();
        } catch (Exception e) {
        }
    }
}
