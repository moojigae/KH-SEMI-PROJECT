<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/views/layout/import.jsp"%>

<style>
#page-name>h1 {
   font-size: 50px;
   font-weight: 900;
   margin-left: 70px;
}

#cosmetic-beauty-filter {
   display: inline-block;
    border: 1px solid #ccc;
    padding-left: 18px;
    background-color: #F8F8F8;
    height: 645px;
    width: 350px;
}

#cosmetic-beauty-filter-header>h3 {
   display: inline-block;
}

input {
   position: relative;
}

.radioChk+label {
   display: inline-block;
   margin: -2px;
   padding: 8px 19px;
   background-color: white;
   border: 1px solid #ccc;
   font-size: 13px !important;
   width: 94px   ;
   text-align: center;
   position: relative;
   left: -14px;
}

.radioChkActive+label {
   display: inline-block;
   margin: -2px;
   padding: 8px 19px;
   background-color: white;
   border: 1px solid red;
   font-size: 13px !important;
   width: 94px;
   text-align: center;
   position: relative;
   left: -14px;
}

.chkboxChk+label {
   display: inline-block;
   margin: -2px;
   padding: 8px 19px;
   background-color: white;
   border: 1px solid #ccc;
   font-size: 13px !important;
   width: 94px;
   text-align: center;
   position: relative;
   left: -14px;
}

.chkboxChkActive+label {
   display: inline-block;
   margin: -2px;
   padding: 8px 19px;
   background-color: white;
   border: 1px solid red;
   font-size: 13px !important;
   width: 94px;
   text-align: center;
   position: relative;
   left: -14px;
}


#select-btn-center {
   margin-right: 15px;
    text-align: center;
}

#reset-btn {
    margin-left: 218px;
    border: 0;
    background-color: #F8F8F8;
}

#select-btn {
    width: 144px;
    height: 58px;
    background: red;
    color: white;
    font-size: 16px;
    font-weight: 900;
    border-radius: 6px;
    border: 1px solid red;
}
/* #test {
   display: inline-flex;
   width: 500px;
} */

#filter-form {
   display: inline-flex;
   margin-top: 50px;
}

#filter-form>section#cosmetic-filter {
   display: inline-flex;
}

#filter-form>section#cosmetic-category {
   display: block;
   margin-left: 30px;
   font-size: 12px;
}
 
#cosmetic-category #cosmetic-big-category, #cosmetic-middle-category, #category-btn, .middle-category{
   float: left;
}

#ranking-list {
   display: inline-flex;
    border-block-end: 1px solid #ccc;
}

#ranking-list div {
   display: inline-block;
   height: 170px;
   text-align: center;
}

#ranking-list>#cos-rank {
   width: 80px;
    padding-top: 30px;
}
#ranking-list>#cos-img {
   width: 150px;
}
#ranking-list>#cos-detail {
   text-align: left;
   width: 270px;
}
#ranking-list>#cos-score {
   width: 200px;
   padding-top: 70px;
}
#cosmetic-category #cosmetic-big-category {
   border: 1px solid #ccc;
    background: white;
    border-radius: 5px;
    width: 150px;
    height: 30px;
    margin-left: 30px;
}

#cosmetic-category .middle-category {
   border: 1px solid #ccc;
    background: white;
    border-radius: 5px;
    width: 150px;
    height: 30px;
    margin-left: 4px;
}
#category-btn {
   border: 1px solid #ccc;
    background: white;
    border-radius: 5px;
    width: 70px;
    height: 30px;
    margin-left: 4px;
}

#cos-img>img{
   width: 100px;
    height: 100px;
    margin-top: 30px;
}
</style>
</head>
<body>
	<div class="contents">
		<%@ include file="/views/layout/header.jsp"%>
		<hr>
		<section id="page-name">
			<h1>스킨 랭킹</h1>
		</section>
		
		<form id="filter-form" action="#">
			<section id="cosmetic-filter">
				<div id="cosmetic-beauty-filter">
					<div id="cosmetic-beauty-filter-header">
						<h3>필터</h3>
						<button id="reset-btn" type="reset">초기화</button>
					</div>
					<br>
					<div id="cosmetic-beauty-filter-select">
					<fieldset id="sex-fieldset">
						<legend>
							<h4>성별</h4>
						</legend>
							<input type="radio" id="filter-sex-all" class="radioChkActive" name="filter-sex" value="filter-sex-all" checked="checked"/> <label for="filter-sex-all">전체</label>
							<input type="radio" id="filter-sex-female" class="radioChk" name="filter-sex" value="filter-sex-female"/> <label for="filter-sex-female">여자</label>
							<input type="radio" id="filter-sex-male" class="radioChk" name="filter-sex" value="filter-sex-male"/> <label for="filter-sex-male">남자</label>						
					</fieldset>
					<br>
					<fieldset>
						<legend>
							<h4>연령대</h4>
						</legend>
							<input type="checkbox" id="filter-age-all" class="chkboxChkActive" name="filter-age-all" value="filter-age-all" checked="checked" /> <label for="filter-age-all">전체</label>
							<input type="checkbox" id="filter-age-10" class="chkboxChk" name="filter-age" value="filter-age-10" /> <label for="filter-age-10">10대</label>
							<input type="checkbox" id="filter-age-20u" class="chkboxChk" name="filter-age" value="filter-age-20u" /> <label for="filter-age-20u">20대 초반</label>	
							<br><br>
							<input type="checkbox" id="filter-age-20d" class="chkboxChk" name="filter-age" value="filter-age-20d" /> <label for="filter-age-20d">20대 후반</label>	
							<input type="checkbox" id="filter-age-30" class="chkboxChk" name="filter-age" value="filter-age-30" /> <label for="filter-age-30">30대 초반</label>	
							<input type="checkbox" id="filter-age-30u" class="chkboxChk" name="filter-age" value="filter-age-30u" /> <label for="filter-age-30u">30대 후반</label>	
					</fieldset>
					<br>
					<fieldset>
						<legend>
							<h4>피부타입</h4>
						</legend>
							<input type="checkbox" id="filter-skinType-all" class="chkboxChkActive" name="filter-skinType-all" value="filter-skinType-all"/> <label for="filter-skinType-all">전체</label>
							<input type="checkbox" id="filter-skinType-dry" class="chkboxChk" name="filter-skinType" value="filter-skinType-dry"/> <label for="filter-skinType-dry">건성</label>
							<input type="checkbox" id="filter-skinType-oily" class="chkboxChk" name="filter-skinType" value="filter-skinType-oily"/> <label for="filter-skinType-oily">지성</label>	
							<br><br>
							<input type="checkbox" id="filter-skinType-neutral" class="chkboxChk" name="filter-skinType" value="filter-skinType-neutral"/> <label for="filter-skinType-neutral">중성</label>	
							<input type="checkbox" id="filter-skinType-combi" class="chkboxChk" name="filter-skinType" value="filter-skinType-combi"/> <label for="filter-skinType-combi">복합성</label>	
							<input type="checkbox" id="filter-skinType-sensitive" class="chkboxChk" name="filter-skinType" value="filter-skinType-sensitive"/> <label for="filter-skinType-sensitive">민감성</label>	
					</fieldset>
					<br><br>
					<div id="select-btn-center">
						<button id="select-btn" type="submit">필터적용</button>
					</div>
					<br>
					</div>
				</div>
			</section>
			<section id="cosmetic-category" >
				<select id="cosmetic-big-category" name="big">
					<option>스킨케어</option>
					<option>클렌징</option>
					<option>베이스메이크업</option>
					<option>색조메이크업</option>
					<option>마스크/팩</option>
					<option>선케어</option>
					<option>기능성화장품</option>
					<option>바디/핸드/풋</option>
					<option>헤어</option>
					<option>네일</option>
					<option>여성용품</option>
					<option>미용렌즈</option>
					<option>향수</option>
					<option>기타제품</option>
					<option>베이비&맘</option>
					<option>바디라인</option>
					<option>남성화장품</option>		
				</select>
				<div id="cosmetic-middle-category">
					 <%@include file="/views/cosmetic/select_category.jsp" %>
				</div>
				<button id="category-btn" type="submit">적용</button>
				<br><br>
				<section>
					<ul>
						<li>
							<div id="ranking-list">
								<div id="cos-rank">
									<h3>1</h3>
									<span>-</span>
								</div>
								<div id="cos-img">
									<img src="https://d9vmi5fxk1gsw.cloudfront.net/home/glowmee/upload/20190802/1564712531735_160.png" />
								</div>
								<div id="cos-detail">
									<br>
									<h5>코스알엑스 (COSRX)</h5>
									<h4><a href="<%= request.getContextPath() %>/views/cosmetic/cosmeticDetail.jsp">풀핏 프로폴리스 시너지 토너</a></h4><br><br>
									<span>280ml</span>/<span>22,000원</span>							
								</div>
								<div id="cos-score">
									<span>4.38</span>
									<span>imgimgimgimg</span>
									(<span>807</span>)
								</div>
							</div>
						</li>
						<li>
							<div id="ranking-list">
								<div id="cos-rank">
									<h3>1</h3>
									<span>-</span>
								</div>
								<div id="cos-img">
									<img src="https://d9vmi5fxk1gsw.cloudfront.net/home/glowmee/upload/20190802/1564712531735_160.png" />
								</div>
								<div id="cos-detail">
									<br>
									<h5>코스알엑스 (COSRX)</h5>
									<h4><a href="#">풀핏 프로폴리스 시너지 토너</a></h4><br><br>
									<span>280ml</span>/<span>22,000원</span>							
								</div>
								<div id="cos-score">
									<span>4.38</span>
									<span>imgimgimgimg</span>
									(<span>807</span>)
								</div>
							</div>
						</li>
						<li>
							<div id="ranking-list">
								<div id="cos-rank">
									<h3>1</h3>
									<span>-</span>
								</div>
								<div id="cos-img">
									<img src="https://d9vmi5fxk1gsw.cloudfront.net/home/glowmee/upload/20190802/1564712531735_160.png" />
								</div>
								<div id="cos-detail">
									<br>
									<h5>코스알엑스 (COSRX)</h5>
									<h4><a href="#">풀핏 프로폴리스 시너지 토너</a></h4><br><br>
									<span>280ml</span>/<span>22,000원</span>							
								</div>
								<div id="cos-score">
									<span>4.38</span>
									<span>imgimgimgimg</span>
									(<span>807</span>)
								</div>
							</div>
						</li>
						<li>
							<div id="ranking-list">
								<div id="cos-rank">
									<h3>1</h3>
									<span>-</span>
								</div>
								<div id="cos-img">
									<img src="https://d9vmi5fxk1gsw.cloudfront.net/home/glowmee/upload/20190802/1564712531735_160.png" />
								</div>
								<div id="cos-detail">
									<br>
									<h5>코스알엑스 (COSRX)</h5>
									<h4><a href="#">풀핏 프로폴리스 시너지 토너</a></h4><br><br>
									<span>280ml</span>/<span>22,000원</span>							
								</div>
								<div id="cos-score">
									<span>4.38</span>
									<span>imgimgimgimg</span>
									(<span>807</span>)
								</div>
							</div>
						</li>
						<li>
							<div id="ranking-list">
								<div id="cos-rank">
									<h3>1</h3>
									<span>-</span>
								</div>
								<div id="cos-img">
									<img src="https://d9vmi5fxk1gsw.cloudfront.net/home/glowmee/upload/20190802/1564712531735_160.png" />
								</div>
								<div id="cos-detail">
									<br>
									<h5>코스알엑스 (COSRX)</h5>
									<h4><a href="#">풀핏 프로폴리스 시너지 토너</a></h4><br><br>
									<span>280ml</span>/<span>22,000원</span>							
								</div>
								<div id="cos-score">
									<span>4.38</span>
									<span>imgimgimgimg</span>
									(<span>807</span>)
								</div>
							</div>
						</li>
					
					</ul>
				</section>
			</section>
		</form>
		
	</div>
	<%@ include file="/views/layout/footer.jsp"%>

	<script>
		$('input[name=filter-sex]').click(function() {
			if ($(this)[0].value == "filter-sex-all") {
				$('input[name=filter-sex]').addClass('radioChk')
				$('input[name=filter-sex]').removeClass('radioChkActive')
				$(this).addClass('radioChkActive')
			} else if ($(this)[0].value == "filter-sex-female") {
				$('input[name=filter-sex]').addClass('radioChk')
				$('input[name=filter-sex]').removeClass('radioChkActive')
				$(this).addClass('radioChkActive')
			} else if ($(this)[0].value == "filter-sex-male") {
				$('input[name=filter-sex]').addClass('radioChk')
				$('input[name=filter-sex]').removeClass('radioChkActive')
				$(this).addClass('radioChkActive')
			}
		})
		
		$('#filter-age-all').click(function(){
			if ($(this)[0].value == "filter-age-all") {
				console.log($(this)[0].value)
				$('#filter-age-all').prop("checked", true).removeClass("chkboxChk").addClass("chkboxChkActive");
				$('input[name=filter-age]').prop("checked", false).removeClass("chkboxChkActive").addClass("chkboxChk");
			}
		})
	
		$('input[name=filter-age]').click(function(){
			var chk = document.getElementsByName('filter-age');
			var chkAll = document.getElementById('filter-age-all');
			var count = 0;
			$('#filter-age-all').prop("checked", false).removeClass("chkboxChkActive").addClass("chkboxChk");
			for (var i = 0; i < chk.length; i++) {
				if (chk[i].checked) {
					chk[i].classList.add("chkboxChkActive")
					count++;
				} 		
				if(!chk[i].checked) {
					chk[i].classList.remove("chkboxChkActive")
					chk[i].classList.add("chkboxChk")
				}
			}
			if (count == chk.length) {
				$('input[name=filter-age]').prop("checked", false).removeClass("chkboxChkActive")
				$('#filter-age-all').prop("checked", true).addClass("chkboxChkActive");
			} else if (count == 0) {
				$('#filter-age-all').prop("checked", true).addClass("chkboxChkActive");
			}
		})
		
		$('#filter-skinType-all').click(function(){
			if ($(this)[0].value == "filter-skinType-all") {
				console.log($(this)[0].value)
				$('#filter-skinType-all').prop("checked", true).removeClass("chkboxChk").addClass("chkboxChkActive");
				$('input[name=filter-skinType]').prop("checked", false).removeClass("chkboxChkActive").addClass("chkboxChk");
			}
		})
	
		$('input[name=filter-skinType]').click(function(){
			var chk = document.getElementsByName('filter-skinType');
			var chkAll = document.getElementById('filter-skinType-all');
			var count = 0;
			$('#filter-skinType-all').prop("checked", false).removeClass("chkboxChkActive").addClass("chkboxChk");
			for (var i = 0; i < chk.length; i++) {
				if (chk[i].checked) {
					chk[i].classList.add("chkboxChkActive")
					count++;
				} if(!chk[i].checked) {
					chk[i].classList.remove("chkboxChkActive")
					chk[i].classList.add("chkboxChk")
				}
			}
			if (count == chk.length) {
				$('input[name=filter-skinType]').prop("checked", false).removeClass("chkboxChkActive")
				$('#filter-skinType-all').prop("checked", true).addClass("chkboxChkActive");
			} else if (count == 0) {
				$('#filter-skinType-all').prop("checked", true).addClass("chkboxChkActive");
			}
		})
		
		$('#reset-btn').click(function(){
			$('input[name=filter-sex]').addClass('radioChk').removeClass("radioChkActive")
			$("#filter-sex-all").prop("checked", true).addClass("radioChkActive")
			$('#filter-age-all').prop("checked", true).removeClass("chkboxChk").addClass("chkboxChkActive");
			$('input[name=filter-age]').prop("checked", false).removeClass("chkboxChkActive").addClass("chkboxChk");
			$('#filter-skinType-all').prop("checked", true).removeClass("chkboxChk").addClass("chkboxChkActive");
			$('input[name=filter-skinType]').prop("checked", false).removeClass("chkboxChkActive").addClass("chkboxChk");
		})
		
		$(function(){
			$('.middle-category').css('display','none')
			$('#skincare').css('display','block');
			$('#skincare').attr("name","middle");
		})
		
		$('#cosmetic-big-category').click(function(){
			var t = document.getElementById('cosmetic-big-category')
			if (t.value == '스킨케어') {
				$('.middle-category').css('display','none')
				$('.middle-category').attr("name", null);
				$('#skincare').css('display','block');
				$('#skincare').attr("name","middle");
			} else if (t.value == '클렌징') {
				$('.middle-category').css('display','none')
				$('.middle-category').attr("name", null);
				$('#cleansing').css('display','block');
				$('#cleansing').attr("name","middle");
			} else if (t.value == '베이스메이크업') {
				$('.middle-category').css('display','none')
				$('.middle-category').attr("name", null);
				$('#base').css('display','block');
				$('#base').attr("name","middle");
			} else if (t.value == '색조메이크업') {
				$('.middle-category').css('display','none')
				$('.middle-category').attr("name", null);
				$('#tint').css('display','block');
				$('#tint').attr("name","middle");
			} else if (t.value == '마스크/팩') {
				$('.middle-category').css('display','none')
				$('.middle-category').attr("name", null);
				$('#maskPack').css('display','block')
				$('#maskPack').attr("name","middle");
			} else if (t.value == '선케어') {
				$('.middle-category').css('display','none')
				$('.middle-category').attr("name", null);
				$('#suncare').css('display','block');
				$('#suncare').attr("name","middle");
			} else if (t.value == '기능성화장품') {
				$('.middle-category').css('display','none')
				$('.middle-category').attr("name", null);
				$('#func-cosmetic').css('display','block');
				$('#func-cosmetic').attr("name","middle");
			} else if (t.value == '바디/핸드/풋') {
				$('.middle-category').css('display','none')
				$('.middle-category').attr("name", null);
				$('#bodyHandFoot').css('display','block');
				$('#bodyHandFoot').attr("name","middle");
			} else if (t.value == '헤어') {
				$('.middle-category').css('display','none')
				$('.middle-category').attr("name", null);
				$('#hair').css('display','block');
				$('#hair').attr("name","middle");
			} else if (t.value == '네일') {
				$('.middle-category').css('display','none')
				$('.middle-category').attr("name", null);
				$('#nail').css('display','block');
				$('#nail').attr("name","middle");
			} else if (t.value == '여성용품') {
				$('.middle-category').css('display','none')
				$('.middle-category').attr("name", null);
				$('#WomenGoods').css('display','block');
				$('#WomenGoods').attr("name","middle");
			} else if (t.value == '미용렌즈') {
				$('.middle-category').css('display','none')
				$('.middle-category').attr("name", null);
				$('#BeautyLens').css('display','block');
				$('#BeautyLens').attr("name","middle");
			} else if (t.value == '향수') {
				$('.middle-category').css('display','none')
				$('.middle-category').attr("name", null);
				$('#perfume').css('display','block');
				$('#perfume').attr("name","middle");
			} else if (t.value == '기타제품') {
				$('.middle-category').css('display','none')
				$('.middle-category').attr("name", null);
				$('#etc').css('display','block');
				$('#etc').attr("name","middle");
			} else if (t.value == '베이비&맘') {
				$('.middle-category').css('display','none')
				$('.middle-category').attr("name", null);
				$('#babyMom').css('display','block');
				$('#babyMom').attr("name","middle");
			} else if (t.value == '바디라인') {
				$('.middle-category').css('display','none')
				$('.middle-category').attr("name", null);
				$('#bodyLine').css('display','block');
				$('#bodyLine').attr("name","middle");
			} else if (t.value == '남성화장품') {
				$('.middle-category').css('display','none')
				$('.middle-category').attr("name", null);
				$('#man').css('display','block');
				$('#man').attr("name","middle");
			}
		})
	</script>
	<script src="<%= request.getContextPath() %>/resources/js/main.js"></script>
</body>
</html>