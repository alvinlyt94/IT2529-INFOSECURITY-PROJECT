package controllers;

import beans.reviewBean;

import com.octo.captcha.module.servlet.image.SimpleImageCaptchaServlet;

import java.io.IOException;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ReviewManager extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String strAction = request.getParameter("action");

        if (strAction != null && !strAction.equals("")) {
            if (strAction.equals("Post Review")) {
                System.out.println("runnning22");
                postview(request, response);
            } else if (strAction.equals("Update")) {

            } else if (strAction.equals("Delete")) {

            } else if (strAction.equals("Buy Now")) {

            }
        }
        response.sendRedirect("../ShoppingCart.jsp");
    }

    public ArrayList getItemReviews(String idproductView) {
        ArrayList reviewList = new ArrayList();
        ;

        try {

            DataManager connection = new DataManager();
            Connection conn = connection.getConnection();
            PreparedStatement ps = null;
            ResultSet rs = null;
            ps = conn.prepareCall("Select * from reviews where idproductView=?");
            ps.setString(1, idproductView);

            rs = ps.executeQuery();

            while (rs.next()) {
                reviewBean newReview = new reviewBean();
                newReview.setIdreviews(rs.getString("idreviews"));
                newReview.setReviews(rs.getString("reviews"));
                newReview.setIdproductview(rs.getString("idproductView"));
                newReview.setUsername(rs.getString("username"));
                reviewList.add(newReview);
                System.out.print("Review has been runned");
            }

        } catch (SQLException e) {
            System.out.println(e);
        }

        return reviewList;
    }


    private void postview(HttpServletRequest request, HttpServletResponse httpServletresponse) {
        String review = request.getParameter("review");
        String idproductView = request.getParameter("idproductView");
        String userName = request.getParameter("userName");
        String userCaptchaResponse = request.getParameter("jcaptcha");
        boolean captchaPassed = SimpleImageCaptchaServlet.validateResponse(request, userCaptchaResponse);
        try{
        if (review.equals("") || captchaPassed == false){
            // Review
            if (review.equals("")) {
                request.setAttribute("showErrorReview", "true");
            } else {
                request.setAttribute("showErrorReview", "false");
            }
            
            // Captcha
            if (captchaPassed == false) {
                request.setAttribute("showErrorCaptcha", "true");
            } else {
                request.setAttribute("showErrorCaptcha", "false");
            }
            
            request.setAttribute("review", review);
            request.getRequestDispatcher("productDetail.jsp").forward(request, httpServletresponse);
        }

        if (captchaPassed == true) {
                int check = 2;
                DataManager connection = new DataManager();
                Connection conn = connection.getConnection();
                PreparedStatement ps = null;
                ResultSet rs = null;

                ps = conn.prepareCall("insert into reviews(reviews,idproductview,username) values(?,?,?)");

                ps.setString(1, review);
                ps.setString(2, idproductView);
                ps.setString(3, userName);
                ps.executeUpdate();
                System.out.println("runnning");
                check = 1;
                if (check == 1) {
                    HttpSession session = request.getSession();
                    httpServletresponse.sendRedirect("productDetail.jsp");
                } else {

                }
            }
        } catch (Exception e) {
            System.out.print("Review Manager SQL Error " + e);

        }

        // }
        // else{
        // httpServletresponse.sendRedirect("index.jsp");
        // }

    }
}
