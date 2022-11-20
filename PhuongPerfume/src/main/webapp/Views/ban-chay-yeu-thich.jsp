<%-- 
    Document   : ban-chay-yeu-thich
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    <div class="product-widget-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="single-product-widget">
                        <h2 class="product-wid-title">Top Sellers</h2>
                        <a href="trang-cua-hang.jsp" class="wid-view-more">View All</a>
                        <c:forEach items="${dsbc}" var="bc">                       
                        <div class="single-wid-product">
                            <a href="trang-san-pham.jsp?idsp=${bc.id}&idloai=${bc.id_loai}&idthuonghieu=${bc.id_thuongHieu}"><img src="img/${bc.hinhAnh}" alt="" class="product-thumb"></a>
                            <h2><a href="trang-san-pham.jsp?idsp=${bc.id}&idloai=${bc.id_loai}&idthuonghieu=${bc.id_thuongHieu}">${bc.tenSanPham}</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
	                            <fmt:setLocale value="vi-VN"/>
								<fmt:formatNumber value="${bc.donGia}" type="number" var="donGia"></fmt:formatNumber>
								<fmt:formatNumber value="${bc.donGiaKM}" type="number" var="donGiaKM"></fmt:formatNumber>
                                 <del>${donGia} đ</del>  <ins>${donGiaKM} đ</ins>
                            </div>                            
                        </div>
                       </c:forEach>                      
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="single-product-widget">
                        <h2 class="product-wid-title">Most Discounted</h2>
                        <a href="trang-cua-hang.jsp" class="wid-view-more">View All</a>
                        <c:forEach items="${dsgn}" var="gn">
                        <div class="single-wid-product">
                            <a href="trang-san-pham.jsp?idsp=${gn.id}&idloai=${gn.id_loai}&idthuonghieu=${gn.id_thuongHieu}"><img src="img/${gn.hinhAnh}" alt="" class="product-thumb"></a>
                            <h2><a href="trang-san-pham.jsp?idsp=${gn.id}&idloai=${gn.id_loai}&idthuonghieu=${gn.id_thuongHieu}">${gn.tenSanPham}</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                            	<fmt:setLocale value="vi-VN"/>
								<fmt:formatNumber value="${gn.donGia}" type="number" var="donGia"></fmt:formatNumber>
								<fmt:formatNumber value="${gn.donGiaKM}" type="number" var="donGiaKM"></fmt:formatNumber>
                                <del>${donGia} đ</del>  <ins>${donGiaKM} đ</ins>
                            </div>                            
                        </div>
                        </c:forEach>                                            
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="single-product-widget">
                        <h2 class="product-wid-title">Top New</h2>
                        <a href="trang-cua-hang.jsp" class="wid-view-more">View All</a>
                        <c:forEach items="${dsspm}" var="spm">
                        <div class="single-wid-product">
                            <a href="trang-san-pham.jsp?idsp=${spm.id}&idloai=${spm.id_loai}&idthuonghieu=${spm.id_thuongHieu}"><img src="img/${spm.hinhAnh}" alt="" class="product-thumb"></a>
                            <h2><a href="trang-san-pham.jsp?idsp=${spm.id}&idloai=${spm.id_loai}&idthuonghieu=${spm.id_thuongHieu}">${spm.tenSanPham}</a></h2>
                            <div class="product-wid-rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <div class="product-wid-price">
                            	<fmt:setLocale value="vi-VN"/>
								<fmt:formatNumber value="${spm.donGia}" type="number" var="donGia"></fmt:formatNumber>
								<fmt:formatNumber value="${spm.donGiaKM}" type="number" var="donGiaKM"></fmt:formatNumber>
                                <del>${donGia} đ</del>  <ins>${donGiaKM} đ</ins>
                            </div>                            
                        </div>
                        </c:forEach>                                             
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End product widget area -->
