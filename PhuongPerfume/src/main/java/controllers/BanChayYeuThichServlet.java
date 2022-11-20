package controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import businessLogics.SanPhamBL;
import javaBeans.SanPham;

/**
 * Servlet implementation class BanChayYeuThichServlet
 */
@WebServlet("/BanChayYeuThichServlet")
public class BanChayYeuThichServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BanChayYeuThichServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<SanPham> dsbc = SanPhamBL.banChayNhat(3);
		request.setAttribute("dsbc", dsbc);
		
		List<SanPham> dsgn = SanPhamBL.giamGiaNhieu(3);
		request.setAttribute("dsgn", dsgn);
		
		List<SanPham> dsspm = SanPhamBL.sanPhamMoi(3);
		request.setAttribute("dsspm", dsspm);
		
		request.getRequestDispatcher("Views/ban-chay-yeu-thich.jsp").include(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
