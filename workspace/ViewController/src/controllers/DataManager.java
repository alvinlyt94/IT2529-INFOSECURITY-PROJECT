package controllers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


/*
import java.util.ArrayList;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
//import beans.UserBean;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
*/
public class DataManager {
    private String dbURL = "jdbc:mysql://localhost:3306/laocheng";
    private String dbUserName = "root";
    private String dbPassword = "123";

    public DataManager() {
    }

    public void setDbURL(String dbURL) {
        this.dbURL = dbURL;
    }

    public String getDbURL() {
        return dbURL;
    }

    public void setDbUserName(String dbUserName) {
        this.dbUserName = dbUserName;
    }

    public String getDbUserName() {
        return dbUserName;
    }

    public void setDbPassword(String dbPassword) {
        this.dbPassword = dbPassword;
    }

    public String getDbPassword() {
        return dbPassword;
    }

    /*
     * Open database connection
     */


    public Connection getConnection() {
        Connection conn = null;
        try {
            String connectionURL = "jdbc:mysql://localhost:3306/laocheng";
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            conn = DriverManager.getConnection(connectionURL, "root", "123");
        } catch (SQLException e) {
            System.out.println("Could not connect to DB");
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            System.out.print(e);
        } catch (InstantiationException e) {
            System.out.print(e);
        } catch (IllegalAccessException e) {
            System.out.print(e);
        }
        return conn;
    }

    /*
     * Close open database connection
     */

    public void putConnection(Connection conn) {
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                System.out.println("Enable to close DB connection");
                e.printStackTrace();
            }
        }
    }

    /*
     * Retrive data of single user
     */
/*
    public UserBean getUserData(String userName, String password) {
        UserBean userBean = new UserBean();
        Connection conn = getConnection();
        if (conn != null) {
            ResultSet rs = null;
            //Statement stmt = null;
            PreparedStatement preparedStatement = null;
            try {
                String strQuery =
                    "SELECT u.uid, firstName, lastName, address1, address2, city, postCode, email, phone, ug.groupName as userGroup " +
                    "FROM user u, usergroup ug WHERE uid=? AND password=? AND groupName IN" +
                    " (SELECT groupName FROM usergroup WHERE groupid =(SELECT groupid FROM usergroup_mapping WHERE uid=u.uid))";
                /*String strQuery =
					"SELECT u.uid, firstName, lastName, address1, address2, city, postCode, email, phone, ug.groupName as userGroup "
					+"FROM user u, usergroup ug WHERE uid='"+userName+"' AND password='"+password+"' AND groupName IN"
					+" (SELECT groupName FROM usergroup WHERE groupid =(SELECT groupid FROM usergroup_mapping WHERE uid=u.uid))";
				
				
				stmt = conn.createStatement();
				rs = stmt.executeQuery( strQuery);
                preparedStatement = conn.prepareStatement(strQuery);
                preparedStatement.setString(1, userName);
                preparedStatement.setString(2, password);
                rs = preparedStatement.executeQuery();

                while (rs.next()) {
                    userBean.setUid(rs.getString("uid"));
                    userBean.setFirstName(rs.getString("firstName"));
                    userBean.setLastName(rs.getString("lastName"));
                    userBean.setAddress1(rs.getString("address1"));
                    userBean.setAddress2(rs.getString("address2"));
                    userBean.setCity(rs.getString("city"));
                    userBean.setPostCode(rs.getString("postCode"));
                    userBean.setEmail(rs.getString("email"));
                    userBean.setPhone(rs.getInt("phone"));
                    userBean.setUserGroup(rs.getString("userGroup"));
                }
            } //end of try
            catch (SQLException ex) {
                ex.printStackTrace();
            } finally {
                try {
                    rs.close();
                    preparedStatement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                putConnection(conn);
            } //end of finally
        } //end of if
        return userBean;
    }

    /*
	 * Get list of all members from provided group
	 

    public ArrayList<UserBean> getUsersList(String userGroup) {
        ArrayList<UserBean> list = new ArrayList<UserBean>();
        Connection conn = getConnection();
        if (conn != null) {
            ResultSet rs = null;
            PreparedStatement preparedStatement = null;
            //String dbStr=null;
            try {
                String strQuery =
                    "SELECT uid, firstName, lastName, email, phone FROM user WHERE uid IN(" + "SELECT uid FROM usergroup_mapping WHERE groupid=(" +
                    "SELECT groupid FROM usergroup WHERE groupName=?))";
                preparedStatement = conn.prepareStatement(strQuery);
                preparedStatement.setString(1, userGroup);
                rs = preparedStatement.executeQuery();


                while (rs.next()) {
                    UserBean user = new UserBean();
                    user.setUid(rs.getString("uid"));
                    user.setFirstName(rs.getString("firstName"));
                    user.setLastName(rs.getString("lastName"));
                    user.setEmail(rs.getString("email"));
                    user.setPhone(rs.getInt("phone"));
                    list.add(user);
                }
            } //end of try
            catch (SQLException ex) {
                ex.printStackTrace();
            } finally {
                try {
                    rs.close();
                    preparedStatement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                putConnection(conn);
            } //end of finally
        } //end of if
        return list;
    }*/
}
