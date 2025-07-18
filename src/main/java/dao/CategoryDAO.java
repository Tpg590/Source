/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import dbconnect.DBContext;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Category;
import model.Product;

/**
 *
 * @author Le Thien Tri - CE191249
 */
public class CategoryDAO extends DBContext {

    /**
     * Lấy danh sách category không trùng để hiển thị trong dropdown.
     */
    public List<Category> getAllCategories() {
        List<Category> list = new ArrayList<>();
        try {
            String query = "SELECT DISTINCT cat_id, cat_name FROM category";
            ResultSet rs = execSelectQuery(query);
            while (rs.next()) {
                Category cat = new Category(
                        rs.getString("cat_id"),
                        rs.getString("cat_name"),
                        null
                );
                list.add(cat);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
}
