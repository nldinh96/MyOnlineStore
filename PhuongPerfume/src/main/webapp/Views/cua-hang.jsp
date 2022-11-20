<%-- 
    Document   : cua-hang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    <div class="product-big-title-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="product-bit-title text-center">
                        <h2>Shop</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="single-product-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div style="display:flex;flex-flow: row wrap">
            <c:forEach items="${dssp}" var="sp">
                <div class="col-md-3 col-sm-6">
                    <div class="single-shop-product">
                        <div class="product-upper">
                            <img src="img/${sp.hinhAnh}" alt="">
                        </div>
                        <h2><a href="trang-san-pham.jsp?idsp=${sp.id}&idloai=${sp.id_loai}&idthuonghieu=${sp.id_thuongHieu}">${sp.tenSanPham}</a></h2>
                        <div class="product-carousel-price">
                        	<fmt:setLocale value="vi-VN"/>
							<fmt:formatNumber value="${sp.donGia}" type="number" var="donGia"></fmt:formatNumber>
							<fmt:formatNumber value="${sp.donGiaKM}" type="number" var="donGiaKM"></fmt:formatNumber>
                             <del>${donGiaKM} đ</del>  <ins>${donGia} đ</ins>
                        </div>                         
                        <div class="product-option-shop">
                            <a class="add_to_cart_button" data-quantity="1" data-product_sku="" data-product_id="70" rel="nofollow" href="ThemVaoGioServlet?idsp=${sp.id}&slm=1">Thêm vào giỏ</a>
                        </div>                       
                    </div>
                </div>
                </c:forEach>                              
            </div>           
            <div class="row">
                <div class="col-md-12">
                    <div class="product-pagination text-center">
                        <nav>
                          <ul class="pagination">
                            <li>
                              <a href="trang-cua-hang.jsp?trang=1" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                              </a>
                            </li>
                            <li><a href="trang-cua-hang.jsp?trang=1">1</a></li>
                            <li><a href="trang-cua-hang.jsp?trang=2">2</a></li>
                            <li><a href="trang-cua-hang.jsp?trang=3">3</a></li>
                            <li><a href="trang-cua-hang.jsp?trang=4">4</a></li>
                            <li>
                              <a href="trang-cua-hang.jsp?trang=4" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                              </a>
                            </li>
                          </ul>
                        </nav>                        
                    </div>
                </div>
            </div>
        </div>
    </div>
