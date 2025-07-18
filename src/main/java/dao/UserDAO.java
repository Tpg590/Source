/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import dbconnect.DBContext;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.User;

/**
 *
 * @author Le Thien Tri - CE191249
 */
public class UserDAO extends DBContext {

    public User getUserById(String rollId) {
        try {
            String query = "select userId,  name, gender from [user] where userId = ?";
            Object[] params = {rollId};
            ResultSet rs = execSelectQuery(query, params);
            if (rs.next()) { // may cai rs nay mai mot phai co rs.next truoc moi lay dc.
                return new User(rs.getString(1), rs.getString(2), rs.getInt(3));
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public User login(String userId, String password) {
        // Implement your work here
        try {
            String query = "select userId, password\n"
                    + "from [user]\n"
                    + "where userId = ?\n"
                    + "and password = ?\n";

            Object[] params = {userId, hashMd5(password)};
            ResultSet rs = execSelectQuery(query, params);
            return new User();
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;

    }

    private String hashMd5(String raw) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] mess = md.digest(raw.getBytes());

            StringBuilder sb = new StringBuilder();
            for (byte b : mess) {
                sb.append(String.format("%02x", b));
            }

            return sb.toString();
        } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
            return "";
        }
    }

}
