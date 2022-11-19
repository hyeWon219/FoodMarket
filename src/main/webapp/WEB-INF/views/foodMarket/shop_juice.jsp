<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="../includes/header.jsp"%>

<div class="hero-wrap hero-bread" style="background-image: url('../resources/images/bg_1.jpg');">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
          	<p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span>Products</span></p>
            <h1 class="mb-0 bread">SHOP</h1>
          </div>
        </div>
      </div>
    </div>

<section class="ftco-section">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-10 mb-5 text-center">
				<ul class="product-category">
					<li><a href="/foodMarket/shop">All</a></li>
					<li><a href="/foodMarket/shop_vegetable">Vegetables</a></li>
					<li><a href="/foodMarket/shop_fruit">Fruits</a></li>
					<li><a href="/foodMarket/shop_juice" class="active">Juice</a></li>
					<li><a href="/foodMarket/shop_dried">Dried</a></li>
				</ul>
			</div>
		</div>
		<div class="row">
			<c:forEach items="${shop_jui}" var="shop_jui">
				<div class="col-md-6 col-lg-3 ftco-animate">
					<div class="product">
						<a href='/foodMarket/detail?pid=${shop_jui.pid}'>
							<img class="img-fluid" src="../resources/images/${shop_jui.pimg}" alt="Colorlib Template">
							<div class="overlay"></div> 
						</a>
						<div class="text py-3 pb-4 px-3 text-center">
							<h3>
								<a class="move" href='/foodMarket/detail?pid=${shop_jui.pid}'>${shop_jui.pname}</a>
							</h3>
							<div class="d-flex">
								<div class="pricing">
									<p class="price">
										<span class="mr-2 price">${shop_jui.pprice}원</span>
									</p>
								</div>
							</div>
							<div class="bottom-area d-flex px-3">
								<div class="m-auto d-flex">
									<a href="/foodMarket/cart" class="buy-now d-flex justify-content-center align-items-center mx-1">
										<span><i class="ion-ios-cart"></i></span>
									</a> 
									<a href="/foodMarket/wishlist" class="heart d-flex justify-content-center align-items-center">
										<span><i class="ion-ios-heart"></i></span>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
		
		<form id="actionForm" action="/foodmarket/shop_juice" method="get">
			<input type="hidden" name="pageNum" value="-">
			<input type="hidden" name="amount" value="-">
			<input type="hidden" name="pageKide" value="juice">
		</form>
		
		<div class="row mt-5">
			<div class="col text-center">
				<div class="block-27">
					<ul>
						<li><a href="#">&lt;</a></li>
						<li class="active"><span>1</span></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">&gt;</a></li>
					</ul>
				</div>
			</div>
		</div>
		
	</div>
</section>
<<script type="text/javascript">
	
</script>
<%@ include file="../includes/footer.jsp"%>