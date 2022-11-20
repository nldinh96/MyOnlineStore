package controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import businessLogics.SanPhamBL;
import javaBeans.GioHang;
import javaBeans.SanPham;

/**
 * Servlet implementation class CuaHangServlet
 */
@WebServlet("/CuaHangServlet")
public class CuaHangServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CuaHangServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("trang") != null) {
		int trang = Integer.parseInt(request.getParameter("trang"));
		request.setAttribute("trang", trang);
		
		List<SanPham> dssp = SanPhamBL.sanPhamTrang(trang, 8);
		request.setAttribute("dssp", dssp);
		}else {
			request.setAttribute("trang", 1);
			List<SanPham> dssp = SanPhamBL.sanPhamTrang(1, 8);
			request.setAttribute("dssp", dssp);
			
		}
		request.getRequestDispatcher("Views/cua-hang.jsp").include(request, response);
//		int idsp = Integer.parseInt(request.getParameter("idsp"));
//		int slm = Integer.parseInt(request.getParameter("slm"));
//		
//		if(idsp != 0 && slm != 0) {
//			HttpSession session = request.getSession();
//			GioHang gioHang = (GioHang) session.getAttribute("gioHang");
//			if(gioHang == null) {
//				gioHang = new GioHang();
//				session.setAttribute("gioHang", gioHang);
//			}
//			gioHang.them(idsp, slm);
//			response.sendRedirect("trang-cua-hang.jsp");
//		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String tenSP = request.getParameter("txtTenSanPham");
		List<SanPham> dsspTim = SanPhamBL.docTheoTen(tenSP);
		
		request.setAttribute("dssp", dsspTim);
		request.getRequestDispatcher("Views/cua-hang.jsp").include(request, response);
	}

}
