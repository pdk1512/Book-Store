/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Product;

/**
 *
 * @author 84964
 */
public class ProductDAO extends DBContext {

    private String getQueryOrderBySortMode(String sortMode) {
        switch (sortMode) {
            case "priceIncrease":
                return " order by price asc ";
            case "priceDescrease":
                return " order by price desc ";
            default:
                return " order by id ";
        }
    }

//    Lấy tổng số trang dựa trên tổng số lượng sản phẩm
    public int getNumberPage(String cate) {
        String s;
        if (!cate.equals("")) {
            s = "where category = '" + cate + "'";
        } else {
            s = "";
        }
        String sql = "select count(*) from Products "
                + s;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                int total = rs.getInt(1);
                int countPage = 0;
                countPage = total / 6;
                if (total % 6 != 0) {
                    countPage++;
                }
                return countPage;
            }
        } catch (Exception e) {
        }
        return 0;
    }

//    Lấy thông tin của tất cả sản phẩm
    public List<Product> getProducts(int index, String sortMode) {
        List<Product> list = new ArrayList<>();
        String sql = "select * from Products\n"
                + getQueryOrderBySortMode(sortMode) + "\n"
                + "offset ? rows\n"
                + "fetch first 6 rows only";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, (index - 1) * 6);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product p = new Product(Integer.parseInt(rs.getString("id")),
                        rs.getString("name"),
                        rs.getString("category"),
                        rs.getInt("price"),
                        rs.getInt("amount"),
                        rs.getString("status"),
                        rs.getString("description"),
                        rs.getString("picture"));
                list.add(p);
            }
        } catch (Exception e) {
        }
        return list;
    }

//  Lấy thông tin của tất cả sản phẩm theo category
    public List<Product> getProductByCID(int index, String cid, String sortMode) {
        List<Product> list = new ArrayList<>();
        String sql = "select * from Products\n"
                + "where category = '" + cid + "'"
                + getQueryOrderBySortMode(sortMode) + "\n"
                + "offset ? rows\n"
                + "fetch first 6 rows only";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, (index - 1) * 6);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product p = new Product(Integer.parseInt(rs.getString("id")),
                        rs.getString("name"),
                        rs.getString("category"),
                        rs.getInt("price"),
                        rs.getInt("amount"),
                        rs.getString("status"),
                        rs.getString("description"),
                        rs.getString("picture"));
                list.add(p);
            }
        } catch (Exception e) {
        }
        return list;
    }

//  Lấy thông tin của 1 sản phẩm theo id
    public Product getProductByID(String id) {
        String sql = "select * from Products\n"
                + "where id = '" + id + "'";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new Product(Integer.parseInt(rs.getString("id")),
                        rs.getString("name"),
                        rs.getString("category"),
                        rs.getInt("price"),
                        rs.getInt("amount"),
                        rs.getString("status"),
                        rs.getString("description"),
                        rs.getString("picture"));
            }
        } catch (Exception e) {
        }
        return null;
    }

//    Lấy toàn bộ sản phẩm sale
    public List<Product> getAllSaleProduct(String status) {
        List<Product> list = new ArrayList<>();
        String sql = "select * from Products\n"
                + "where status = '" + status + "'";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product p = new Product(Integer.parseInt(rs.getString("id")),
                        rs.getString("name"),
                        rs.getString("category"),
                        rs.getInt("price"),
                        rs.getInt("amount"),
                        rs.getString("status"),
                        rs.getString("description"),
                        rs.getString("picture"));
                list.add(p);
            }
        } catch (Exception e) {
        }
        return list;
    }

//    Lấy toàn bộ sản phẩm theo tên
    public List<Product> getProductByName(String txtSearch) {
        List<Product> list = new ArrayList<>();
        String sql = "select * from Products\n"
                + "where [name] like N'%" + txtSearch + "%'";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product p = new Product(Integer.parseInt(rs.getString("id")),
                        rs.getString("name"),
                        rs.getString("category"),
                        rs.getInt("price"),
                        rs.getInt("amount"),
                        rs.getString("status"),
                        rs.getString("description"),
                        rs.getString("picture"));
                list.add(p);
            }
        } catch (Exception e) {
        }
        return list;
    }

//    Lấy sản phẩm theo giá
    public List<Product> getProductByPrice(String price) {
        List<Product> list = new ArrayList<>();
        String sql = "select * from Products\n"
                + "where price = '" + price + "'";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product p = new Product(Integer.parseInt(rs.getString("id")),
                        rs.getString("name"),
                        rs.getString("category"),
                        rs.getInt("price"),
                        rs.getInt("amount"),
                        rs.getString("status"),
                        rs.getString("description"),
                        rs.getString("picture"));
                list.add(p);
            }
        } catch (Exception e) {
        }
        return list;
    }

//    Xóa 1 product
    public void deleteProduct(String pid) {
        String sql = "delete from Products\n"
                + "where id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, pid);
            st.executeUpdate();
        } catch (Exception e) {
        }
    }

//    Thêm sản phẩm mới
    public void insertNewProduct(String name, String cate, int price, int amount, String status, String des, String picture) {
        String sql = "insert into Products\n"
                + "values(?,?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setString(2, cate);
            st.setInt(3, price);
            st.setInt(4, amount);
            st.setString(5, status);
            st.setString(6, des);
            st.setString(7, picture);
            st.executeUpdate();
        } catch (Exception e) {
        }
    }

//    Cập nhật sản phẩm sau khi sửa
    public void updateProduct(int id, String name, String cate, int price, int amount, String status, String des, String picture) {
        String sql = "update Products\n"
                + "set [name] = ?,\n"
                + "category = ?,\n"
                + "price = ?,\n"
                + "amount = ?,\n"
                + "[status] = ?,\n"
                + "[description] = ?,\n"
                + "picture = ?\n"
                + "where id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setString(2, cate);
            st.setInt(3, price);
            st.setInt(4, amount);
            st.setString(5, status);
            st.setString(6, des);
            st.setString(7, picture);
            st.setInt(8, id);
            st.executeUpdate();
        } catch (Exception e) {
        }
    }

//    Cập nhật số lượng sau checkout
    public void updateAmount(int id, int amount) {
        String sql = "update Products \n"
                + "set amount = ?\n"
                + "where id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, amount);
            st.setInt(2, id);
            st.executeUpdate();
        } catch (Exception e) {
        }
    }

}
