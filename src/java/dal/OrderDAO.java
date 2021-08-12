package dal;

import java.time.LocalDate;
import model.Cart;
import model.Account;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Category;
import model.Item;
import model.Revenue;

public class OrderDAO extends DBContext {

    public void addOrder(Account a, Cart cart) {
        LocalDate curDate = java.time.LocalDate.now();
        String date = curDate.toString();
        try {
            //add vào bảng Order
            String sql = "insert into [order] values(?,?,?)";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, date);
            st.setInt(2, a.getId());
            st.setDouble(3, cart.getTotalMoney());
            st.executeUpdate();
            //lấy ra id của Order vừa add
            String sql1 = "select top 1 id from [order] order by id desc";
            PreparedStatement st1 = connection.prepareStatement(sql1);
            ResultSet rs = st1.executeQuery();
            //add vào bảng OrderLine
            if (rs.next()) {
                int oid = rs.getInt(1);
                for (Item i : cart.getItems()) {
                    String sql2 = "insert into [orderline] values(?,?,?,?)";
                    PreparedStatement st2 = connection.prepareStatement(sql2);
                    st2.setInt(1, oid);
                    st2.setInt(2, i.getProduct().getId());
                    st2.setInt(3, i.getQuantity());
                    st2.setDouble(4, i.getPrice());
                    st2.executeUpdate();
                }
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    //Take the revenue by day
    public List<Revenue> revenueStatistic() {
        String sql = "select [date], sum(total) as revenue\n"
                + "from [Order]\n"
                + "group by [date]";
        List<Revenue> list = new ArrayList<>();
        try {
            PreparedStatement st=connection.prepareStatement(sql);
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                Revenue r=new Revenue(rs.getString("date"),
                                    rs.getString("revenue"));
                list.add(r);
            }
        } catch (Exception e) {
        }
        return list;
    }

}
