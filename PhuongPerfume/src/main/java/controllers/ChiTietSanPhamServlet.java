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
 * Servlet implementation class ChiTietSanPhamServlet
 */
@WebServlet("/ChiTietSanPhamServlet")
public class ChiTietSanPhamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChiTietSanPhamServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        if(request.getParameter("idsp") != null) {
        	int idsp = Integer.parseInt(request.getParameter("idsp"));
        	int idloai = Integer.parseInt(request.getParameter("idloai"));
        	int idThuongHieu = Integer.parseInt(request.getParameter("idthuonghieu"));
        	
        	SanPham sp = SanPhamBL.docTheoID(idsp);
        	List<SanPham> dssp = SanPhamBL.docTheoLoai(idloai);
        	List<SanPham> dsth = SanPhamBL.docTheoThuongHieu(idThuongHieu);
        	
        	request.setAttribute("id", sp);
        	request.setAttribute("dssp", dssp);
        	request.setAttribute("dsth", dsth);
        }else {
        	SanPham sp = SanPhamBL.docTheoID(1);
        	List<SanPham> dssp = SanPhamBL.docTheoLoai(1);
        	List<SanPham> dsth = SanPhamBL.docTheoThuongHieu(1);
        	
        	request.setAttribute("id", sp);
        	request.setAttribute("dssp", dssp);
        	request.setAttribute("dsth", dsth);
        }
        
		
//		else {
//			SanPham sp = SanPhamBL.docTheoID(1);
//			request.setAttribute("id", sp);
//		}
//		SanPham sp = SanPhamBL.docTheoID(idsp);
		
		request.getRequestDispatcher("Views/san-pham.jsp").include(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
