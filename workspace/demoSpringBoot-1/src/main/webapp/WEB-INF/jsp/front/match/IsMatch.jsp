<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
.main {
	min-height: 55vh;

}

.user-container {
	text-align: center; /* 使用户信息居中 */
	display: flex;
	flex-direction: column;
	align-items: center;
}

.img {
	width: 100px; /* 固定图片宽度 */
	height: 100px; /* 固定图片高度 */
	object-fit: cover; /* 保持图片比例，剪裁多余部分 */
	border-radius: 50%; /* 可选：使图片为圆形 */
}
.custom-box {
    background-color: #FCFCFC;
    border: 2px solid #B15A5E; /* 調整邊框寬度和顏色 */

}
</style>
<!-- Bootstrap CSS -->
<link href="/front/match/matchcss/rotating-card.css" rel="stylesheet" />
<script src="https://code.jquery.com/jquery-3.7.1.js"
	integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
	crossorigin="anonymous"></script>
<script src="/front/LoginUser.js"></script>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
	crossorigin="anonymous">
<script src="https://kit.fontawesome.com/4287c80df9.js"
	crossorigin="anonymous"></script>
<!-- Google Font : Nunito -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Nunito:wght@600&display=swap"
	rel="stylesheet">
<!-- For style(All CSS content) -->
<link rel="stylesheet" type="text/css" href="../styles/home.css" />
<link rel="stylesheet" type="text/css" href="../styles/footer.css" />
<link rel="stylesheet" type="text/css" href="../styles/navbar.css" />
<link rel="icon" href="images/favicon.ico">
<!-- JS Bundle for BS  -->
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
	integrity="sha384-9crossorigin="anonymous">
    </script>
<script src="https://code.jquery.com/jquery-3.7.1.js"
	integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
	crossorigin="anonymous"></script>
<script src="/front/LoginUser.js"></script>
</head>

<body>
	<div style="height: 114px;"></div>
	<div class=" text-center m-3" style="font-size: 48px; font-weight: bold;">
		配對成功
	</div>

	<div class="main row" >
		
		<c:forEach items="${isMatch}" var="user" varStatus="loop">
			<div class="col-3 text-center" style="height:440px;">
			
				<div class="custom-box m-4 text-center" style="white:120px;height:380px;border-radius: 20px;"  >
					<div class="mt-4">
					<img id="user_image_${loop.index}" src="${user.picture}"
							 class="img">
					</div>
					<div id="user_details_${loop.index}" class="user-details">
						<p>Nickname: ${user.nickName}</p>
						<p>Gender: ${user.gender}</p>
						<p>Birthday: ${user.birthday}</p>
						<p>Dance Character: ${user.danceCharacter}</p>
						<p>Dance Age: ${user.danceAge}</p>
						<p>
							<a
								href="http://localhost:8080/chatroomIndex?user2id=${user.user2id}&nickName2=${user.nickName}&picture2=${user.picture}">聊天室</a>
						</p>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
		crossorigin="anonymous"></script>
	<script>
        fetch('/front/basic.html')
            .then(response => response.text())
            .then(html => {
                document.body.innerHTML += html;
            });
    </script>

</body>

</html>
