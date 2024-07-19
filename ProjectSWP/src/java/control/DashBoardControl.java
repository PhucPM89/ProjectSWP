/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dal.DAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import model.OrderDetail;

public class DashBoardControl extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("employ") == null && session.getAttribute("admin") == null) {
            response.sendRedirect("Login.jsp");
            return;
        }

        DAO dao = new DAO();

        //Cập nhật tổng bill
        dao.updateOrderFromOrderDetail();

        //update giá của Tran sau khi đã tính discount từ Order
        dao.updateToOrderFromTranHis();

        //Cập nhật doanh thu
        dao.updateRevenue();

        int totalTranHis = dao.getTotalTranHis();
        int totalRevenue = dao.getTotalRevenue();
        int avgEveryTrans = totalRevenue / totalTranHis;
        int tranTypeOnl = dao.getTranTypeOnl();
        int tranTypeOff = dao.getTranTypeOff();
        List<OrderDetail> listOrderDetails = dao.getTop5Product();
        List<Integer> listDay = dao.getTransactionsYear();

        request.setAttribute("listOrderDetails", listOrderDetails);
        request.setAttribute("tranTypeOnl", tranTypeOnl);
        request.setAttribute("tranTypeOff", tranTypeOff);
        request.setAttribute("avgEveryTrans", avgEveryTrans);
        request.setAttribute("totalRevenue", totalRevenue);
        request.setAttribute("totalTranHis", totalTranHis);
        request.setAttribute("testD", false);
        request.setAttribute("selectedMonth", 0);
        request.setAttribute("listDay", listDay);
        request.getRequestDispatcher("DashBoard.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");

        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("employ") == null && session.getAttribute("admin") == null) {
            response.sendRedirect("Login.jsp");
            return;
        }

        DAO dao = new DAO();

        //Cập nhật tổng bill
        dao.updateOrderFromOrderDetail();

        //update giá của Tran sau khi đã tính discount từ Order
        dao.updateToOrderFromTranHis();

        //Cập nhật doanh thu
        dao.updateRevenue();

        int month = Integer.parseInt(request.getParameter("selectedMonth"));

        int totalTranHis = dao.getTotalTranHisByMonth(month);
        int totalRevenue = dao.getTotalRevenueByMonth(month);
        int avgEveryTrans = 0;
        if (totalTranHis != 0 && totalRevenue != 0) {
            avgEveryTrans = totalRevenue / totalTranHis;
        }
        int tranTypeOnl = dao.getTranTypeOnlByMonth(month);
        int tranTypeOff = dao.getTranTypeOffByMonth(month);

        List<OrderDetail> listOrderDetails = dao.getTop5ProductByMonth(month);
        List<Integer> listDay = dao.getTransactionsPerDay(month);

        request.setAttribute("listOrderDetails", listOrderDetails);
        request.setAttribute("tranTypeOnl", tranTypeOnl);
        request.setAttribute("tranTypeOff", tranTypeOff);
        request.setAttribute("avgEveryTrans", avgEveryTrans);
        request.setAttribute("totalRevenue", totalRevenue);
        request.setAttribute("totalTranHis", totalTranHis);
        request.setAttribute("listDay", listDay);
        request.setAttribute("testD", true);
        request.setAttribute("selectedMonth", month);
        request.getRequestDispatcher("DashBoard.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
