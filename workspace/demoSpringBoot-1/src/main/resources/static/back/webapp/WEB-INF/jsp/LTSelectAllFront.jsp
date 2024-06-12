<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isErrorPage="true" %>

	<!DOCTYPE html>
	<html>

	<head>


		<meta charset="UTF-8">
		<title>全部文章</title>
		<style>
			.btn.btn-warning.btn-sm {
				/* 背景色設為藍色 */
				color: white;
				/* 文字顏色設為白色 */
			}

			.like-count {
				border: 1px solid black;
				/* 添加1像素寬度的黑色實線框框 */
				padding: 2px 4px;
				/* 可選：添加一些內邊距，使內容與框框之間有一些空間 */
			}

			input[name="reportContent"] {
				float: right;
			}

			.main {
				min-height: 55vh;
				/* 將區域高度設置為整個視窗的高度 */
				padding-top: 100px;
				/* 將內容區域下移以避免 navbar 擋住 */
				background-image: url('/Static/images/FB.jpg');
				/* 背景圖片的 URL */
				background-size: cover;
				/* 以 cover 的方式填滿整個區域 */
				background-position: center center;
				/* 將背景圖片水平和垂直都置中 */
				background-repeat: no-repeat;
				/* 不重複顯示背景圖片 */
			}

			.lt img {
				max-width: 200px;
				/* 設定圖片最大寬度為 800px */
				display: block;
				margin: 0 auto;
				/* 圖片置中 */
			}

			.lt .article {
				width: 100%;
				/* 将文章内容宽度设置为 100% */
				display: flex;
				flex-direction: column;
				align-items: center;
			}

			.article-item {
				width: 55%;
				/* 设置宽度为60% */
				max-width: 55%;
				border: 1px solid #ddd;
				border-radius: 8px;
				padding: 16px;
				margin: 0 auto;
				/* 将元素水平居中显示 */
				margin-bottom: 16px;
				display: flex;
				flex-direction: column;
				background-color: #f9f9f9;
				/* 设置背景颜色 */
				margin-right: 20%;
				/* 向右移动20% */
			}

			.btn.btn-info {
				color: white;
				/* 设置按钮文字颜色为白色 */
			}

			.article-info {
				display: flex;
				justify-content: space-between;
				align-items: center;
				margin-bottom: 8px;
			}

			.article-info p {
				margin: 0;
			}

			.article-info hr,
			.article-content hr,
			.article-actions hr {
				border: none;
				border-bottom: 1px solid #ddd;
				margin: 8px 0;
			}

			.add-form {
				text-align: center;
				/* 將內容置中 */
				margin-top: 25px;
				/* 調整上方間距 */
			}

			.article-actions {
				display: flex;
				justify-content: flex-start;
				align-items: center;
			}

			.article-actions button {
				border: none;
				background-color: transparent;
				cursor: pointer;
				transition: color 0.3s ease-in-out;
				/* 添加按鈕顏色變化的動畫效果 */
			}

			.article-actions button:hover {
				color: #007bff;
				/* 淺藍色 */
			}

			.article-actions button {
				margin-right: 5px;
				/* 添加右边距，分隔按钮 */
				border: none;
				background-color: transparent;
				cursor: pointer;
				transition: color 0.3s ease-in-out;
				/* 添加按钮颜色变化的动画效果 */
			}

			.youtube-video {
				margin-right: 1000px;
				/* 可以根據需要調整右邊距 */
			}

			/* 讚數樣式 */
			.saveLike {
				margin-left: 10px;
				font-weight: bold;
				color: #007bff;
			}

			.lt {
				display: flex;
				flex-direction: row;
				justify-content: space-around;
				align-items: flex-start;
				width: 100%;
				margin-top: 20px;
			}

			.article-content {
				margin-top: 16px;
				/* 调整内容顶部间距 */
				max-width: 100%;
				/* 最大宽度为容器宽度的一半 */
				overflow-wrap: break-word;
				/* 或者使用 word-wrap: break-word; */
			}
		</style>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
			integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
		<script src="https://kit.fontawesome.com/4287c80df9.js" crossorigin="anonymous"></script>

		<!--Google Font : Nunito-->
		<link rel="preconnect" href="https://fonts.gstatic.com">
		<link href="" rel="stylesheet">


		<!-- For style(All CSS content) -->
		<link rel="stylesheet" type="text/css" href="../styles/home.css" />
		<link rel="stylesheet" type="text/css" href="../styles/footer.css" />
		<link rel="stylesheet" type="text/css" href="../styles/navbar.css" />
		<link rel="icon" href="images/favicon.ico">

		<!-- JS Bundle for BS  -->
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
			integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous">

			</script>
		<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
		<script src="https://kit.fontawesome.com/f5d8105b16.js" crossorigin="anonymous"></script>
	</head>

	<body>
		<div class="container-fluid" style="margin-top: 50px;"></div>


		<!-- 主內容 -->

		<div class="main">
			<div class="back-content"></div>
			<div class="add-form">

				<form method="Get" action="/html/LTInsertFront.html">
					<button class="btn btn-info btn-sm add" type="submit">發布文章8888888</button>
				</form>
			</div>


			<div style="float: right;">
				<form method="get" action="/findtitleFront">
					<input type="text" name="title" placeholder="輸入關鍵字" />
					<button class="btn btn-info btn-sm title" type="submit">關鍵字搜尋</button>
				</form>
				<!-- 將"搜尋文章ID"表單移到這裡 -->
				<form method="Get" action="html/LTSelectFront.html">
					<button class="btn btn-info btn-sm select" type="submit">搜尋文章ID</button>
				</form>
			</div>


			<div id="LT" class="col-auto ml-auto mx-auto">
				>
				<div class="article-item d-flex flex-column align-items-center">
					<!-- 將整個文章內容包裝在這個容器中 -->
					<!-- 這裡插入每篇文章的內容，具體內容由後端動態生成 -->
				</div>
			</div>
			<div class="youtube-video" style="position: fixed; top: 50%; transform: translateY(-50%); left: 0;">
				<!-- <iframe width="350" height="350"
					src="https://www.youtube.com/embed/FWCIocUWpFw?si=kWqi-GvBApZNLfsy?mute=1&autoplay=1"
					frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
					allowfullscreen></iframe> -->
			</div>

		</div>


		</div>




		<script>
			function handleReportSuccess() {
				alert("檢舉成功！謝謝你的檢舉,我們將盡快處理❗❗");
			}
		</script>

		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous">

			</script>


		<!-- 分页控件 -->
		<div class="container text-center">
			<div class="row">

				<div class="col-auto ml-auto mx-auto">

					<div class="d-flex flex-column align-items-end">
						<div class="pagination-info m-2">
							<span id="paginationInfo"></span>
						</div>
					</div>
				</div>
				<div>
					<div class="col-auto ml-auto mx-auto">
						<div class="mx-auto" style="width: 120px;">
							<input type="number" id="pageNumberInput" class="form-control" placeholder="跳轉頁碼"
								style="width: 120px;">
							<div class="input-group-append">
								<button id="goToPageBtn" class="btn btn-muted m-1">跳轉</button>
							</div>
						</div>
					</div>
				</div>
				<!-- 空白的 col-auto -->
				<div class="col-auto ml-auto mx-auto">
					<!-- 要置右邊的 col-auto -->
					<div class="pagination-container">
						<ul class="pagination justify-content-end m-3">
							<li class="page-item" id="firstPage"><a class="page-link" href="#">«</a></li>
							<li class="page-item" id="prevPage"><a class="page-link" href="#">‹</a></li>
							<li class="page-item" id="TTTTT"><a class="page-link" href="#">›</a></li>
							<li class="page-item" id="lastPage"><a class="page-link" href="#">»</a></li>
							<li class="page-item" id="niMa"><a class="page-link" href="#">我肏你媽</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- CMD -->
		<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
		<script>
			$(document).ready(
				function () {
					function choose(u1, u2) {
						return (u1 == u2) ? '' : 'hidden';
					}
					let userID = "";
					$.ajax({
						url: "/getuserId",
						type: "GET",
						success: function (response) {
							console.log(response);
							userID = response;
						},
						error: function (xhr, status, error) {
							console.error(error);
						}
					});

					$.get('/html/basic.html', function (html) {
						$('body').append(html);
					});
					var pageSize = 5; // 顯示的筆數
					var currentPage = 0; // 目前頁碼

					// 发送 AJAX 请求
					function fetchOrders(page) {
						console.log('page' + page);
						$
							.ajax({
								url: 'pageALL',
								type: 'GET',
								dataType: 'json',
								data: {
									page: page,
									size: pageSize
								}, // 分頁參數
								success: function (response) { // 請求成功時執行的function
									// 清空表格内容
									$('#LT').empty();
									// 遍歷返回的數據並將每一行添加到表格中
									// 遍歷返回的數據並將每一行添加到表格中
									// 遍歷返回的數據並將每一行添加到表格中
									// 遍歷返回的數據並將每一行添加到表格中
									$
										.each(
											response.content,
											function (index,
												content) {
												console.log(content.userId == userID);
												var row = '<div class="article-item">'
													+ '<div class="article-info">'
													+ '<p>文章ID: '
													+ content.ltId
													+ '</p>'
													+ // 文章ID
													'<p>標題: '
													+ content.title
													+ '</p>'
													+ // 標題
													'<p>發文者ID: '
													+ content.userId
													+ '</p>'
													+ // 發文者ID
													'<p>發文時間: '
													+ content.date
													+ '</p>'
													+ // 發文時間
													'</div>'
													+ '<hr>'
													+ '<div >'
													+ // 將內容和操作置中
													'<div class="col-md-12">'
													+ '<div>'
													+ '<p>文章內容: '
													+ content.content
													+ '</p>'
													+ // 文章內容
													'</div>'
													+ '<div style="  margin-left: 30%;">'
													+ '<img src="' + content.picture + '" width="300" height="300">'
													+ // 文章圖片
													'</div>'
													+ '</div>'
													+ '<hr>'
													+ '<div>'
													+ // 將操作置中
													'<div class="col-md-12">'
													+ '<div class="row"> <!-- 功能按钮水平排列 -->'
													+ '<form class="col-auto" method="post" action="/ReportinsertFront.controller" onsubmit="handleReportSuccess()">'
													+ '<input type="hidden" name="ltId" value="' + content.ltId + '">'
													+ '<input type="text" name="reportContent" placeholder="请输入檢舉內容">'
													+ '<button class="btn btn-warning btn-sm" type="submit">'
													+ '<i class="fa-solid fa-triangle-exclamation" style="color: red"></i> 檢舉'
													+ '</button>'
													+ '</form>'
													+ '<form class="col-auto editForm" method="Get" action="/LTSelectByIdFront.controller/' + content.ltId5 + '">'
													+ '<button class="btn btn-primary btn-sm editButton" type="submit"' + choose(content.userId, userID) + ' > 修改</button> '
													+ '</form>'
													+ '<form class="col-auto deleteFrom" data-article-user-id="' + content.userId + '" method="post" action="/LTDeleteByIdFront.controller?ltId='
													+ content.ltId
													+ '">'
													+ '<input type="hidden" name="_method" value="DELETE">'
													+ '<button class="btn btn-danger btn-sm deleteButton" type="submit" ' + choose(content.userId, userID) + '>刪除</button>'
													+ '</form>'
													+ '<form class="col-auto" method="get" action="/findLTIDFront/' + content.ltId + '">'
													+ '<button class="btn btn-info btn-sm REPLY" type="submit">回復區</button>'
													+ '</form>'
													+ '<form class="col-auto" method="POST" action="/LikeinsertFront.controller">'
													+ '<input type="hidden" name="userId" value="' + content.userId + '">'
													+ '<input type="hidden" name="ltId" value="' + content.ltId + '">'
													+ '<button class="btn btn-success btn-sm like" type="submit">'
													+ '<i class="fa-solid fa-thumbs-up"></i> 讚'
													+ '</button>'
													+ '<span class="like-count">'
													+ content.saveLike
													+ '</span>'
													+ '</form>'
													+ '</div>'
													+ '</div>'
													+ '</div>'
													+

													'</div>'
													+ '<br>'; // 添加分隔符
												$('#LT')
													.append(
														row);
											});

									// 更新分頁狀態
									updatePagination(response);
								},
								error: function (xhr, status, error) { // 请求失敗時執行的function
									console.error(error);
								}
							});
					}

					// 更新分頁狀態和顯示信息
					function updatePagination(response) {
						var totalPages = response.totalPages;
						var totalElements = response.totalElements;
						var currentPageNumber = response.number + 1;

						// 更新分頁信息顯示
						$('#paginationInfo').text(
							'Total Records: ' + totalElements
							+ ', Page: '
							+ currentPageNumber + ' / '
							+ totalPages);

						// 更新分頁按鈕狀態
						if (response.first) {
							$('#firstPage, #prevPage').addClass(
								'disabled');
						} else {
							$('#firstPage, #prevPage').removeClass(
								'disabled');
						}
						if (response.last) {
							$('#lastPage, #nextPage').addClass(
								'disabled');
						} else {
							$('#lastPage, #nextPage').removeClass(
								'disabled');
						}

						// 更新页码按钮
						updatePageButtons(currentPageNumber, totalPages);

						// 加載當前頁上下兩筆資料

					}

					// 襙你媽典及事件niMa
					$('#niMa').click(function () {
						alert('我肏你媽');
					});

					// 上一頁按鈕點擊事件
					$('#prevPage').click(function () {
						if (!$(this).hasClass('disabled')) {
							currentPage--;
							fetchOrders(currentPage);
						}
					});

					// 下一頁按鈕點擊事件
					$('#TTTTT').click(function () {
						console.log('currentPage1:' + currentPage);
						if (!$(this).hasClass('disabled')) {
							currentPage++;
							console.log('currentPage2:' + currentPage);
							fetchOrders(currentPage);
						}
					});

					// 第一頁按鈕點擊事件
					$('#firstPage').click(function () {
						if (!$(this).hasClass('disabled')) {
							currentPage = 0;
							fetchOrders(currentPage);
						}
					});

					// 最后一頁按鈕點擊事件
					$('#lastPage').click(
						function () {
							if (!$(this).hasClass('disabled')) {
								var totalPages = parseInt($(
									'#paginationInfo').text()
									.split('/')[1].trim());
								currentPage = totalPages - 1;
								fetchOrders(currentPage);
							}
						});

					// 更新页码按钮
					function updatePageButtons(currentPageNumber,
						totalPages) {
						// 更新页码按钮的显示内容
						$('#page1 a')
							.text(
								currentPageNumber > 1 ? currentPageNumber - 1
									: 1);
						$('#page2 a').text(currentPageNumber);
						$('#page3 a')
							.text(
								currentPageNumber < totalPages ? currentPageNumber + 1
									: totalPages);

						// 根据需要添加或删除页码按钮
						if (currentPageNumber === 1) {
							$('#page1').hide();
						} else {
							$('#page1').show();
						}

						if (currentPageNumber === totalPages
							|| totalPages === 0) {
							$('#page3').hide();
						} else {
							$('#page3').show();
						}
					}

					// 新增的页码按钮点击事件
					$('.pagination-container')
						.on(
							'click',
							'#page1, #page2, #page3',
							function () {
								var page = parseInt($(this)
									.text()) - 1;
								fetchOrders(page);

								// 更新当前页码
								currentPage = page;
							});

					$('#goToPageBtn')
						.click(
							function () {
								var pageNumber = parseInt($(
									'#pageNumberInput')
									.val());
								var totalPages = parseInt($(
									'#paginationInfo')
									.text().split('/')[1]
									.trim());

								// 检查输入的页码是否合法
								if (pageNumber >= 1
									&& pageNumber <= totalPages) {
									var page = pageNumber - 1;
									fetchOrders(page);
									currentPage = page;

									// 移除所有页面项上的 active 类
									$(
										'.pagination-container .page-item')
										.removeClass(
											'active');

									// 添加 active 类到指定的页面项
									$('#page' + pageNumber)
										.addClass('active');
								} else {
									// 提示用户输入的页码无效
									alert('Invalid page number! Please enter a number between 1 and '
										+ totalPages);
								}
							});

					// 初始化頁面 獲得第0頁的數據
					fetchOrders(currentPage);
				});
		</script>

		<script>
			// 使用 AJAX 發送 GET 請求獲取使用者 ID
			$(document).ready(function () {
				// 綁定修改按鈕的點擊事件
				$(".editButton").click(function () {
					// 獲取文章 ID
					var ltId = $(this).data("ltId");
					// 使用 AJAX 發送 GET 請求獲取使用者 ID
					$.ajax({
						url: "/getuserId",
						type: "GET",
						success: function (response) {
							var userId = response; // 從後端獲取使用者 ID
							var articleUserId = $(this).data("articleUserId"); // 從按鈕上獲取文章的發布者 ID
							//                
						},
						error: function (xhr, status, error) {
							console.error(error);
						}
					});
				});
			});
		</script>


		<!-- 分頁部分 -->



	</body>

	</html>