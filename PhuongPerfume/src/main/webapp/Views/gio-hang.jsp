<%-- 
    Document   : gio-hang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    <div class="product-big-title-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="product-bit-title text-center">
                        <h2>Shopping Cart</h2>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End Page title area -->
    
    
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
                </div>            
                <div class="col-md-8">
                    <div class="product-content-right">
                        <div class="woocommerce">
                            <form method="" action="${pageContext.request.contextPath}/trang-thanh-toan.jsp">
                                <table cellspacing="0" class="shop_table cart">
                                    <thead>
                                        <tr>
                                            <th class="product-remove">Xóa</th>
                                            <th class="product-thumbnail">Hình</th>
                                            <th class="product-name">Product</th>
                                            <th class="product-price">Price</th>
                                            <th class="product-quantity">Quantity</th>
                                            <th class="product-subtotal">Total</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${sessionScope.gioHang.dsSPMua()}" var="sp">
                                        <tr class="cart_item">
                                            <td class="product-remove">
                                                <a title="Remove this item" class="remove" href="#">×</a> 
                                            </td>

                                            <td class="product-thumbnail">
                                                <a href="single-product.html"><img width="145" height="145" alt="poster_1_up" class="shop_thumbnail" src="img/${sp.hinhAnh}"></a>
                                            </td>

                                            <td class="product-name">
                                                <a href="single-product.html">${sp.tenSanPham}</a> 
                                            </td>

                                            <td class="product-price">
	                                            <fmt:setLocale value="vi-VN"/>
												<fmt:formatNumber value="${sp.donGiaKM}" type="number" var="donGiaKM"></fmt:formatNumber>                                        	
                                                <span class="amount">${donGiaKM} đ</span> 
                                            </td>

                                            <td class="product-quantity">
                                                <div class="quantity buttons_added">
                                                    <input type="button" class="minus" value="-">
                                                    <input type="number" size="4" class="input-text qty text" title="Qty" value="${sp.soLuongMua}" min="0" step="1">
                                                    <input type="button" class="plus" value="+">
                                                </div>
                                            </td>

                                            <td class="product-subtotal">
                                            	<fmt:setLocale value="vi-VN"/>
												<fmt:formatNumber value="${sp.thanhTien()}" type="number" var="thanhTien"></fmt:formatNumber> 
                                                <span class="amount">${thanhTien} đ</span> 
                                            </td>
                                        </tr>
                                        </c:forEach>
                                        <tr>
                                            <td class="actions" colspan="6">
                                                <div class="coupon">
                                                    <label for="coupon_code">Phiếu thưởng:</label>
                                                    <input type="text" placeholder="Mã phiếu" value="" id="coupon_code" class="input-text" name="coupon_code">
                                                    <input type="submit" value="Áp dụng" name="apply_coupon" class="button">
                                                </div>
                                                <input type="submit" value="Cập nhật" name="update_cart" class="button">                         
                                        			<input type="submit" value="Thanh toán" name="proceed" class="checkout-button button alt wc-forward"> 
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </form>

                            <div class="cart-collaterals">

                            <div class="cart_totals ">
                                <h2>Tổng giỏ hàng</h2>

                                <table cellspacing="0">
                                    <tbody>
                                    	<fmt:setLocale value="vi-VN"/>
										<fmt:formatNumber value="${sessionScope.gioHang.tongTien()}" type="number" var="tongTien"></fmt:formatNumber>
                                        <tr class="cart-subtotal">
                                            <th>Cộng thành tiền</th>                                         
                                            <td><span class="amount">${tongTien} đ</span></td>
                                        </tr>

                                        <tr class="shipping">
                                            <th>Phí giao hàng</th>
                                            <td>Miễn phí</td>
                                        </tr>

                                        <tr class="order-total">
                                            <th>Tổng cộng</th>
                                            <td><strong><span class="amount">${tongTien} đ</span></strong> </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            </div>
                        </div>                        
                    </div>                    
                </div>
            </div>
        </div>
    </div>