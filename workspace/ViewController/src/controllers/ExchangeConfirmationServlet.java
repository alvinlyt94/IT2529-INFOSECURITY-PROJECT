package controllers;

import java.io.IOException;

import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServlet;

import java.io.PrintWriter;

//import model.Validation;
import java.sql.*;

import java.text.DecimalFormat;

public class ExchangeConfirmationServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
            // Attributes
            String userName = request.getParameter("userName");
            String currencyType1 = request.getParameter("currencyType1");
            String currencyType2 = request.getParameter("currencyType2");
            double newCurrencyValue1 = Double.parseDouble(request.getParameter("newCurrencyValue1"));
            double newCurrencyValue2 = Double.parseDouble(request.getParameter("newCurrencyValue2"));
            double amount = Double.parseDouble(request.getParameter("amount"));
            double sgdBalance = Double.parseDouble(request.getParameter("sgdBalance"));
            double usdBalance = Double.parseDouble(request.getParameter("usdBalance"));
            double eurBalance = Double.parseDouble(request.getParameter("eurBalance"));
            double newSgdBalance = Double.parseDouble(request.getParameter("sgdBalance"));
            double newUsdBalance = Double.parseDouble(request.getParameter("usdBalance"));
            double newEurBalance = Double.parseDouble(request.getParameter("eurBalance"));
            String displayCurrencyType1 = null;
            String displayCurrencyType2 = null;
            double displayCurrencyValue = 0;
            String exchangeButton = request.getParameter("exchange");
            if (exchangeButton.equals("Exchange1")){
                // Minus from balance
                if (currencyType1.equals("SGD")){
                    newSgdBalance = sgdBalance - amount;
                }
                else if (currencyType1.equals("USD")){
                    newUsdBalance = usdBalance - amount;
                }
                else if (currencyType1.equals("EUR")){
                    newEurBalance = eurBalance - amount;
                }
                
                // Add to balance
                if (currencyType2.equals("SGD")){
                    newSgdBalance = sgdBalance + newCurrencyValue1;
                }
                else if (currencyType2.equals("USD")){
                    newUsdBalance = usdBalance + newCurrencyValue1;
                }
                else if (currencyType2.equals("EUR")){
                    newEurBalance = eurBalance + newCurrencyValue1;
                }
                displayCurrencyType1 = currencyType1;
                displayCurrencyType2 = currencyType2;
                displayCurrencyValue = newCurrencyValue1;
            }
            else if (exchangeButton.equals("Exchange2")){
                // Minus from balance
                if (currencyType2.equals("SGD")){
                    newSgdBalance = sgdBalance - amount;
                }
                else if (currencyType2.equals("USD")){
                    newUsdBalance = usdBalance - amount;
                }
                else if (currencyType2.equals("EUR")){
                    newEurBalance = eurBalance - amount;
                }
                
                // Add to balance
                if (currencyType1.equals("SGD")){
                    newSgdBalance = sgdBalance + newCurrencyValue2;
                }
                else if (currencyType1.equals("USD")){
                    newUsdBalance = usdBalance + newCurrencyValue2;
                }
                else if (currencyType1.equals("EUR")){
                    newEurBalance = eurBalance + newCurrencyValue2;
                }
                displayCurrencyType1 = currencyType2;
                displayCurrencyType2 = currencyType1;
                displayCurrencyValue = newCurrencyValue2;
            }
            // DecimalFormat
            DecimalFormat dec = new DecimalFormat("#.00");
            String newSgdBalanceFormated = dec.format(newSgdBalance);
            String newUsdBalanceFormated = dec.format(newUsdBalance);
            String newEurBalanceFormated = dec.format(newEurBalance);
            String amountFormatted = dec.format(amount);
            if (newSgdBalance < 0 || newUsdBalance < 0 || newEurBalance < 0){
                request.setAttribute("showInsufficient", "true");
                if (newSgdBalance < 0){
                    request.setAttribute("whichInsufficient", "SGD");
                }
                else if (newUsdBalance < 0){
                    request.setAttribute("whichInsufficient", "USD");
                }
                else if (newEurBalance < 0){
                    request.setAttribute("whichInsufficient", "EUR");
                }
                
                request.getRequestDispatcher("Convert.jsp").forward(request, response);
            }
            else{
                HttpSession session = request.getSession();
                session.setAttribute("userName", userName);
                session.setAttribute("currencyType1", currencyType1);
                session.setAttribute("currencyType2", currencyType2);                
                session.setAttribute("newCurrencyValue1", newCurrencyValue1);
                session.setAttribute("newCurrencyValue2", newCurrencyValue2);
                session.setAttribute("sgdBalance", sgdBalance);
                session.setAttribute("usdBalance", usdBalance);
                session.setAttribute("eurBalance", eurBalance);
                session.setAttribute("newSgdBalance", newSgdBalanceFormated);
                session.setAttribute("newUsdBalance", newUsdBalanceFormated);
                session.setAttribute("newEurBalance", newEurBalanceFormated);
                session.setAttribute("amount", amountFormatted);
                session.setAttribute("displayCurrencyType1", displayCurrencyType1);
                session.setAttribute("displayCurrencyType2", displayCurrencyType2); 
                session.setAttribute("displayCurrencyValue", displayCurrencyValue);
                
                request.setAttribute("displayCurrencyType1", displayCurrencyType1);
                request.setAttribute("displayCurrencyType2", displayCurrencyType2);
                
                request.setAttribute("showInsufficient", "false");
                request.setAttribute("whichInsufficient", "none");
                
                request.getRequestDispatcher("ExchangeConfirmation.jsp").forward(request, response);
            }
    }
}
