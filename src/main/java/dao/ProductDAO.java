/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import dbconnect.DBContext;
import java.sql.PreparedStatement;
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
public class ProductDAO extends DBContext {

    /**
     * select all product
     *
     * @return
     */
    public List<Product> getAll() {
        List<Product> list = new ArrayList<>();
        try {
            String query = "select pro_id ,pro_name, pro_price, pro_quantity, pro_description, cat_name, c.cat_id\n"
                    + "from [product] p join category c on p.cat_id = c.cat_id\n";
            ResultSet rs = execSelectQuery(query);
            while (rs.next()) {

                Product pro = new Product(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getString(5), new Category(rs.getString(7), rs.getString(6), null));
                list.add(pro);
            }

        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);

        }
        return list;
    }

    /**
     * select product by id
     *
     * @return
     */
    public Product getById(String id) {
        try {
            String query = "select pro_id ,pro_name, pro_price, pro_quantity, pro_description, cat_name, c.cat_id\n"
                    + "from [product] p join category c on p.cat_id = c.cat_id\n"
                    + "where pro_id = ?";

            Object[] param = {id};
            ResultSet rs = execSelectQuery(query, param);

            if (rs.next()) {
                return new Product(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getString(5), new Category(rs.getString(7), rs.getString(6), null));
            } else {
                return null;
            }

        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }

    /**
     * Update
     *
     * @param fullName
     * @param email
     * @param username
     * @return
     */
    public int update(String name, int price, int quantity, String description, String id, String cateName) {
        try {
            String query = "UPDATE [product] SET  pro_name = ?,pro_price = ?,pro_quantity = ?,pro_description = ? WHERE pro_id = ?;"
                    + "UPDATE category SET cat_name = ? WHERE cat_id = (SELECT cat_id FROM [product] WHERE pro_id = ?);";
            Object[] params = {name, price, quantity, description, id, cateName, id};
            return execQuery(query, params);
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    /**
     * Thêm sản phẩm mới vào cơ sở dữ liệu.
     *
     * @return 0 nếu thêm thành công, ngược lại trả về lỗi.
     */
    public int create(String id, String prodName, int price, int quantity, String description, String cateId) {
        try {
            String query = "INSERT INTO [product] (pro_id, pro_name, pro_price, pro_quantity, pro_description, cat_id)\n"
                    + "VALUES (?, ?, ?, ?, ?, ?)";
            Object[] params = {id, prodName, price, quantity, description, cateId};
            return execQuery(query, params);
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public int delete(int id) {

        try {
            String query = "DELETE FROM [dbo].[product] \n"
                    + "WHERE pro_id = ?";
            Object[] params = {id};

            System.out.println("id");
            return execQuery(query, params);

        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return 0;
    }

}
