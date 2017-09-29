package controllers;

import java.io.IOException;
import java.io.PrintWriter;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.text.DecimalFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ConvertServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Attributes
        String fromWhatPage = request.getParameter("fromWhatPage");
        double amount = Double.parseDouble(request.getParameter("amount"));
        double amountSame = Double.parseDouble(request.getParameter("amount"));
        double ratesReturn1 = 0;
        double ratesReturn2 = 0;
        
        double ratesSGDtoUSD = 0.780562;
        double ratesUSDtoSGD = 1.28113;

        double ratesSGDtoEUR = 0.623669;
        double ratesEURtoSGD = 1.60310;

        double ratesUSDtoEUR = 0.800629;
        double ratesEURtoUSD = 1.24902;
        double newCurrencyValue1 = 0;
        double newCurrencyValue2 = 0;
        String currencyType1 = request.getParameter("currencyType1");
        String currencyType2 = request.getParameter("currencyType2");
        //        System.out.println("===================================================================================");
        //        System.out.println("Test1: " + currencyType1);
        //        System.out.println("Test2: " + currencyType2);
        //        System.out.println("===================================================================================");

        // Calculate Currency
        // Between SGD & USD
        if (currencyType1.equals("SGD") && currencyType2.equals("USD")) {
            newCurrencyValue1 = ratesSGDtoUSD * amount;
            ratesReturn1 = ratesSGDtoUSD;
            newCurrencyValue2 = ratesUSDtoSGD * amount;
            ratesReturn2 = ratesUSDtoSGD;
        }
        else if (currencyType1.equals("USD") && currencyType2.equals("SGD")) {
            newCurrencyValue2 = ratesSGDtoUSD * amount;
            ratesReturn1 = ratesSGDtoUSD;
            newCurrencyValue1 = ratesUSDtoSGD * amount;
            ratesReturn2 = ratesUSDtoSGD;
        }
        // Between SGD & EUR
        if (currencyType1.equals("SGD") && currencyType2.equals("EUR")) {
            newCurrencyValue1 = ratesSGDtoEUR * amount;
            ratesReturn1 = ratesSGDtoEUR;
            newCurrencyValue2 = ratesEURtoSGD * amount;
            ratesReturn2 = ratesEURtoSGD;
        }
        else if (currencyType1.equals("EUR") && currencyType2.equals("SGD")) {
            newCurrencyValue2 = ratesSGDtoEUR * amount;
            ratesReturn1 = ratesSGDtoEUR;
            newCurrencyValue1 = ratesEURtoSGD * amount;
            ratesReturn2 = ratesEURtoSGD;
        }
        // Between USD & EUR
        if (currencyType1.equals("USD") && currencyType2.equals("EUR")) {
            newCurrencyValue1 = ratesUSDtoEUR * amount;
            ratesReturn1 = ratesUSDtoEUR;
            newCurrencyValue2 = ratesEURtoUSD * amount;
            ratesReturn2 = ratesEURtoUSD;
        }
        else if (currencyType1.equals("EUR") && currencyType2.equals("USD")) {
            newCurrencyValue2 = ratesUSDtoEUR * amount;
            ratesReturn1 = ratesUSDtoEUR;
            newCurrencyValue1 = ratesEURtoUSD * amount;
            ratesReturn2 = ratesEURtoUSD;
        }

        // DecimalFormat
        DecimalFormat dec = new DecimalFormat("#.00");
        String newCurrencyValueFormatted1 = dec.format(newCurrencyValue1);
        String newCurrencyValueFormatted2 = dec.format(newCurrencyValue2);
        String amountFormatted = dec.format(amount);
        if (fromWhatPage.equals("fromCurrency")){
            HttpSession session = request.getSession();
            session.setAttribute("newCurrencyValue1", newCurrencyValueFormatted1);
            session.setAttribute("newCurrencyValue2", newCurrencyValueFormatted2);
            session.setAttribute("currencyType1", currencyType1);
            session.setAttribute("currencyType2", currencyType2);
            session.setAttribute("ratesReturn1", ratesReturn1);
            session.setAttribute("ratesReturn2", ratesReturn2);
            session.setAttribute("amountSame", amountSame);
        }
        if (fromWhatPage.equals("fromConvert")){
            HttpSession session = request.getSession();
            session.setAttribute("amountSame", amountSame);
        }
        // Currency Not Selected
        if (currencyType1.equals("") || currencyType2.equals("")){
            request.setAttribute("show", "true");
            request.setAttribute("showErrorMessage", "*Please select a currency!");
            HttpSession session = request.getSession();
            session.setAttribute("currencyType1", currencyType1);
            session.setAttribute("currencyType2", currencyType2);
            if (fromWhatPage.equals("fromCurrency")){
                request.getRequestDispatcher("Currency.jsp").forward(request, response);
            }
            else if (fromWhatPage.equals("fromConvert")){
                request.getRequestDispatcher("Convert.jsp").forward(request, response);
            }
        }
        // Similar Currency Type
        else if ((currencyType1.equals("USD") && currencyType2.equals("USD")) ||
            (currencyType1.equals("SGD") && currencyType2.equals("SGD")) ||
            (currencyType1.equals("EUR") && currencyType2.equals("EUR"))){
            request.setAttribute("show", "true");
            request.setAttribute("showErrorMessage", "*Please select a different currency!");
            HttpSession session = request.getSession();
            session.setAttribute("currencyType1", currencyType1);
            session.setAttribute("currencyType2", currencyType2);
            if (fromWhatPage.equals("fromCurrency")){
                request.getRequestDispatcher("Currency.jsp").forward(request, response);
            }
            else if (fromWhatPage.equals("fromConvert")){
                request.getRequestDispatcher("Convert.jsp").forward(request, response);
            }
        }
        else{
            HttpSession session = request.getSession();
            session.setAttribute("newCurrencyValue1", newCurrencyValueFormatted1);
            session.setAttribute("newCurrencyValue2", newCurrencyValueFormatted2);
            session.setAttribute("currencyType1", currencyType1);
            session.setAttribute("currencyType2", currencyType2);
            session.setAttribute("ratesReturn1", ratesReturn1);
            session.setAttribute("ratesReturn2", ratesReturn2);
            session.setAttribute("amount", amountFormatted);
            request.setAttribute("show", "false");
            
            request.getRequestDispatcher("Convert.jsp").forward(request, response);
        }
    }
}
