<%-- 
    Document   : san-pham
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
            <div class="row">
                <div class="col-md-4">
                    <div class="single-sidebar">
                        <h2 class="sidebar-title">Tìm kiếm</h2>
                        <form action="${pageContext.request.contextPath}/trang-cua-hang.jsp" method="post" >
                            <input type="text" name="txtTenSanPham" placeholder="Thông tin tìm kiếm...">
                            <input type="submit" value="Tìm">
                        </form>
                    </div>
                    
                    <div class="single-sidebar">
                        <h2 class="sidebar-title">Sản phẩm cùng thương hiệu</h2>
                        <c:forEach items="${dsth}" var="th">                     
                        <div class="thubmnail-recent">
                            <img src="img/${th.hinhAnh}" class="recent-thumb" alt="">
                            <h2><a href="trang-san-pham.jsp?idsp=${th.id}&idloai=${th.id_loai}&idthuonghieu=${th.id_thuongHieu}">${th.tenSanPham}</a></h2>
                            <div class="product-sidebar-price">
                            	<fmt:setLocale value="vi-VN"/>
								<fmt:formatNumber value="${th.donGia}" type="number" var="donGia"></fmt:formatNumber>
								<fmt:formatNumber value="${th.donGiaKM}" type="number" var="donGiaKM"></fmt:formatNumber>
                                 <del>${donGia} đ</del>  <ins>${donGiaKM} đ</ins>
                            </div>                             
                        </div>
                        </c:forEach>                       
                    </div>
                    
                </div>
                
                <div class="col-md-8">
                    <div class="product-content-right">
                        <div class="product-breadcroumb">
                            <a href="">Trang chủ</a>
                            <a href="">Cửa hàng</a>
                            <a href="">${id.tenSanPham}</a>
                        </div>
                        
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="product-images">
                                    <div class="product-main-img">
                                        <img src="img/${id.hinhAnh}" alt="">
                                    </div>
                                </div>
                            </div>
                            
                            <div class="col-sm-6">
                                <div class="product-inner">
                                    <h2 class="product-name">${id.tenSanPham}</h2>
                                    <div class="product-inner-price">
                                    	<fmt:setLocale value="vi-VN"/>
										<fmt:formatNumber value="${id.donGia}" type="number" var="donGia"></fmt:formatNumber>
										<fmt:formatNumber value="${id.donGiaKM}" type="number" var="donGiaKM"></fmt:formatNumber>
                                        <del>${donGia} đ</del>  <ins>${donGiaKM} đ</ins> 
                                    </div>    
									<form action="${pageContext.request.contextPath}/ThemVaoGioServlet?idsp=${id.id}&slm=1" method="post" >                          
                                        <input type="submit" value="Thêm vào giỏ">
                                    </form>                                    
                                    <div class="product-inner-category">
                                        <p>Category: <a href="">Summer</a>. Tags: <a href="">awesome</a>, <a href="">best</a>, <a href="">sale</a>, <a href="">shoes</a>. </p>
                                    </div> 
                                    
                                    <div role="tabpanel">
                                        <ul class="product-tab" role="tablist">
                                            <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Mô tả</a></li>
                                            <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Đánh giá</a></li>
                                        </ul>
                                        <div class="tab-content">
                                            <div role="tabpanel" class="tab-pane fade in active" id="home">
                                                <h2>Mô tả sản phẩm</h2>  
                                                <p>${id.moTa}</p>                        
                                            </div>
                                            <div role="tabpanel" class="tab-pane fade" id="profile">
                                                <h2>Đánh giá</h2>
                                                <div class="submit-review">
                                                    <p><label for="name">Tên</label> <input name="name" type="text"></p>
                                                    <p><label for="email">Email</label> <input name="email" type="email"></p>
                                                    <div class="rating-chooser">
                                                        <p>Your rating</p>

                                                        <div class="rating-wrap-post">
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                        </div>
                                                    </div>
                                                    <p><label for="review">Đánh giá của bạn</label> <textarea name="review" id="" cols="30" rows="10"></textarea></p>
                                                    <p><input type="submit" value="Submit"></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                        
                        
                        <div class="related-products-wrapper">
                            <h2 class="related-products-title">Sản phẩm liên quan</h2>
                            <div class="related-products-carousel">
                            <c:forEach items="${dssp}" var="sp">
                                <div class="single-product">                                
                                    <div class="product-f-image">
                                        <img src="img/${sp.hinhAnh}" alt="">
                                        <div class="product-hover">
                                            <a href="ThemVaoGioServlet?idsp=${sp.id}&slm=1" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Thêm vào giỏ</a>
                                            <a href="trang-san-pham.jsp?idsp=${sp.id}&idloai=${sp.id_loai}&idthuonghieu=${sp.id_thuongHieu}" class="view-details-link"><i class="fa fa-link"></i> Xem chi tiết</a>
                                        </div>
                                    </div>

                                    <h2><a href="trang-san-pham.jsp?idsp=${sp.id}&idloai=${sp.id_loai}&idthuonghieu=${sp.id_thuongHieu}">${sp.tenSanPham}</a></h2>

                                    <div class="product-carousel-price">
                                    	<fmt:setLocale value="vi-VN"/>
										<fmt:formatNumber value="${sp.donGia}" type="number" var="donGia"></fmt:formatNumber>
										<fmt:formatNumber value="${sp.donGiaKM}" type="number" var="donGiaKM"></fmt:formatNumber>                                   
                                         <del>${donGia} đ</del>  <ins>${donGiaKM} đ</ins>                                    
                                    </div> 
                                </div>
                                </c:forEach>                                                                                                        
                            </div>
                        </div>
                    </div>                    
                </div>
            </div>
        </div>
    </div>
