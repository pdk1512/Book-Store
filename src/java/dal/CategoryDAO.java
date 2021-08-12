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
import model.Category;
import model.Product;

/**
 *
 * @author 84964
 */
public class CategoryDAO extends DBContext{
    public List<Category> getAllCategory(){
        List<Category> list = new ArrayList<>();
        String sql = "select * from Category";
        try {
            PreparedStatement st=connection.prepareStatement(sql);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                Category c=new Category(rs.getString("id"),
                                    rs.getString("name"));
                list.add(c);
            }
        } catch (Exception e) {
        }
        return list;
    }
}
