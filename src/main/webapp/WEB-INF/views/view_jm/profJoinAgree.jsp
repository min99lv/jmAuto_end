<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<link href="../css/join.css" rel="stylesheet" type="text/css">
	<!DOCTYPE html>
	<html>

	<head>
		<meta charset="UTF-8">
		<title>전문가 약관 동의</title>
		<style>
			/* 폼 그룹 스타일 */
			.form-group {
				/* 블록 요소로 설정하여 세로 정렬 */
				display: block;
			}

			/* 텍스트 상자 스타일 */
			.text {
				/* 자동으로 너비 설정 */
				width: auto;
				/* 텍스트 박스의 높이 */
				height: 200px;
				/* 텍스트 박스 하단 여백 */
				margin-bottom: 10px;
				/* 폰트 설정 */
				font-family: Pretendard;
				/* 테두리 설정 */
				border: solid 1px #ddd;
				/* 텍스트 정렬 */
				text-align: left;
				/* 세로 스크롤 생성 */
				overflow-y: scroll;
				/* 공백을 줄바꿈으로 표시 */
				white-space: pre-line;
				/* 폰트 크기 설정 */
				font-size: 15px;
				/* 텍스트 박스 내부 여백 설정 */
				padding: 10px 8px;
				color: gray;
			}

			/* 체크박스 스타일 */
			input[type="checkbox"] {
				/* 체크박스 오른쪽 여백 */
				margin-right: 10px;
				/* 체크박스 강조 색상 */
				accent-color: #ff4714;
				/* 체크박스 너비와 높이 */
				width: 20px;
				height: 20px;
			}

			/* 강조 텍스트 스타일 */
			strong {
				/* 텍스트 색상 빨간색으로 변경 */
				color: red;
			}

			/* 필수 동의 항목 제목 스타일 */
			.agree {
				/* 글자 두께 굵게 */
				font-weight: bold;
				/* 폰트 크기 설정 */
				font-size: 20px;
			}

			/* 체크박스 항목 오른쪽에 텍스트 배치 */
			.check {
				/* 오른쪽으로 정렬 */
				float: right;
				/* 폰트 크기 설정 */
				font-size: 18px;
			}

			/* 체크박스 버튼 위치 설정 */
			.checkBtn {
				/* 상대적인 위치 지정 */
				position: relative;
				/* 약간 위로 이동 */
				top: 3px;
			}

			footer {
				top: 1000px;
			}
		</style>
		<script>
			function toggleButton() {
				// 체크박스가 체크되었는지 확인
				const checkBox1 = document.getElementById('agree1');
				const checkBox2 = document.getElementById('agree2');
				const submitBtn = document.getElementById('submitBtn');

				// 체크박스 체크 여부에 따라 버튼 활성/비활성화
				if (checkBox1.checked && checkBox2.checked) {
					submitBtn.disabled = false; // 활성화
				} else {
					submitBtn.disabled = true; // 비활성화
				}
			}

			// 페이지 로드 시 버튼 비활성화 상태로 시작
			window.onload = function () {
				document.getElementById('submitBtn').disabled = true;
			};

		</script>
	</head>

	<body>
		<div id="wrapper">
			<header>
				<%@ include file="../header_white.jsp" %>
			</header>
			<div class="contents">
				<div class="content">
					<h1>전문가 회원가입</h1>
				</div>
				<div class="content">
					<ul class="join_step">
						<li><img src="<%=request.getContextPath()%>/images/main/joinAgree.png"><span>약관동의</span></li>
						<li><img src="<%=request.getContextPath()%>/images/main/certInfo_before.png"><span>자격인증</span>
						</li>
						<li><img src="<%=request.getContextPath()%>/images/main/joinInfo_before.png"><span>회원
								정보 입력</span></li>
						<li><img src="<%=request.getContextPath()%>/images/main/joinOk_before.png"><span>가입신청</span>
						</li>
					</ul>
				</div>
				<div class="content">
					<div class="container">
						<div class="form-group">
							<label class="agree"><Strong>[필수]</Strong> 이용 약관동의</label>
							<p></p>
							<div class="text" readonly>제1장 총칙
								제1조(목적)
								본 약관은 대·중소기업·농어업협력재단 기술보호통합포털(이하 "당 관리시스템")이 제공하는 모든 서비스(이하 "서비스")의 이용조건 및 절차, 이용자와 당
								관리시스템의 권리, 의무, 책임사항과 기타 필요한 사항을
								규정함을 목적으로 합니다.

								제2조(약관의 효력 및 변경)
								① 당 관리시스템은 귀하가 본 약관 내용에 동의하는 것을 조건으로 귀하에게 서비스를 제공할 것이며, 귀하가 본 약관의 내용에 동의
								하는 경우, 당 관리시스템의 서비스 제공 행위 및 귀하의 서비스 사용 행위에는 본 약관이 우선적으로 적용될 것입니다.
								② 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 당 관리시스템의 초기화면에 그 적용일자 7일 이전부터
								적용일자 전일까지 공지합니다. 다만, 이용자에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을
								두고 공지합니다. 이 경우 당 관리시스템은 개정 전 내용과 개정 후 내용을 명확하게 비교하여 이용자가 알기 쉽도록 표시합니다.
								이용자가 변경된 약관에 동의하지 않는 경우, 이용자는 본인의 회원등록을 취소(회원탈퇴)할 수 있으며 계속 사용의 경우는 약관
								변경에 대한 동의로 간주됩니다.
								제3조(약관 외 준칙)
								① 본 약관은 당 관리시스템이 제공하는 서비스에 관한 이용규정 및 별도 약관과 함께 적용됩니다.
								② 본 약관에 명시되지 않은 사항은 전기통신기본법, 전기통신사업법, 정보통신윤리위원회심의규정, 정보 통신 윤리강령, 컴퓨터 프로
								그램보호법 및 기타 관련 법령의 규정에 의합니다.
								제4조 (용어의 정의)
								본 약관에서 사용하는 용어의 정의는 다음과 같습니다.
								① 이용자 : 본 약관에 따라 당 관리시스템이 제공하는 서비스를 받는 자
								② 가입 : 당 관리시스템이 제공하는 회원가입 양식에 해당 정보를 기입하고, 본 약관에 동의하여 서비스 이용 계약을 완료시키는 행위
								③ 회원 : 당 관리시스템에 개인 정보를 제공하여 회원 등록을 한 자로서, 당 관리시스템의 정보를 제공받으며, 당 관리시스템이 제공하
								는 서비스를 이용할 수 있는 자
								④ 비밀번호 : 이용자와 회원ID가 일치하는지를 확인하고 통신상의 자신의 비밀보호를 위하여 이용자 자신이 선정한 문자와 숫자의
								조합
								⑤ 탈퇴 : 회원이 이용계약을 종료시키는 행위
								⑥ 본 약관에서 정의하지 않은 용어는 개별서비스에 대한 별도 약관 및 이용규정에서 정의합니다
								제2장 서비스 제공 및 이용
								제5조(이용계약의 성립)
								① 이용계약은 신청자가 온라인으로 당 관리시스템에서 제공하는 소정의 회원가입 신청양식에서 요구하는 사항을 기록하여 가입을 완
								료하는 것으로 성립됩니다.
								② 당 관리시스템은 다음 각 호에 해당하는 이용계약에 대하여는 가입을 취소할 수 있습니다.
								- 다른 사람의 명의를 사용하여 신청하였을 때
								- 이용 계약 신청서의 내용을 허위로 기재하였거나 신청하였을 때
								- 사회의 안녕 질서 혹은 미풍양속을 저해할 목적으로 신청하였을 때
								- 다른 사람의 당 관리시스템 서비스 이용을 방해하거나 그 정보를 도용하는 등의 행위를 하였을 때
								- 당 관리시스템을 이용하여 법령과 본 약관이 금지하는 행위를 하는 경우
								- 기타 당 관리시스템이 정한 이용신청요건이 미비 되었을 때
								③ 당 관리시스템은 다음 각 항에 해당하는 경우 그 사유가 해소될 때까지 이용계약 성립을 유보할 수 있습니다.
								- 서비스 관련 제반 용량이 부족한 경우
								- 기술상 장애 사유가 있는 경우
								④ 당 관리시스템이 제공하는 서비스는 아래와 같으며, 그 변경될 서비스의 내용을 이용자에게 공지하고 아래에서 정한 서비스를 변경
								하여 제공할 수 있습니다.
								- E-mail을 통한 대·중소기업·농어업협력재단의 각종 정보 제공
								- 당 관리시스템이 자체 개발하거나 다른 기관과의 협의 등을 통해 제공하는 일체의 서비스
								제6조(회원정보사용에대한동의)
								① 회원의 개인정보에 대해서는 당 관리시스템의 개인정보 보호정책이 적용됩니다.
								② 당 관리시스템의 회원 정보는 다음과 같이 수집, 사용, 관리, 보호됩니다.
								- 개인정보의 수집 : 당 관리시스템은 귀하의 당 관리시스템 서비스 가입시 귀하가 제공하는 정보를 통하여 귀하에 관한 정보를 수
								집하며 탈퇴시 수집된 모든 개인정보는 삭제됩니다. 다만, 당 관리시스템(이전 시스템 포함)을 통해 정부지원사업을 참여한
								이력이 있는 경우 각 지원사업의 관련법령이 정하는 바에 따라 일부 정보는 과제정보로서 보관되어 질 수 있습니다.
								- 개인정보의 사용 : 당 관리시스템은 당 관리시스템 서비스 제공과 관련해서 수집된 회원의 신상정보를 본인의 승낙 없이 제3자에
								게 누설, 배포하지 않습니다. 단, 전기통신기본법 등 법률의 규정에 의해 국가기관의 요구가 있는 경우, 범죄에 대한 수사상의
								목적이 있거나 정보통신윤리위원회의 요청이 있는 경우 또는 기타 관계법령에서 정한 절차에 따른 요청이 있는 경우,
								귀하가 당 관리시스템에 제공한 개인정보를 스스로 공개한 경우에는 그러하지 않습니다.
								- 개인정보의 관리 : 귀하는 개인정보의 보호 및 관리를 위하여 서비스의 개인정보관리에서 수시로 귀하의 개인정보를 수정/삭제할
								수 있습니다. 수신되는 정보 중 불필요하다고 생각되는 부분도 변경/조정할 수 있습니다.
								- 개인정보의 보호 : 귀하의 개인정보는 오직 귀하만이 열람/수정/삭제 할 수 있으며, 이는 전적으로 귀하의 ID와 비밀번호에 의해
								관리되고 있습니다. 따라서 타인에게 본인의 ID와 비밀번호를 알려주어서는 아니되며, 작업 종료시에는 반드시 로그아웃 해주
								시고, 웹 브라우저의 창을 닫아주시기 바랍니다. (이는 타인과 컴퓨터를 공유하는 인터넷 카페나 도서관 같은 공공장소에서
								컴퓨터를 사용하는 경우에 귀하의 정보의 보호를 위하여 필요한 사항입니다)
								③ 회원이 당 관리시스템에 본 약관에 따라 이용신청을 하는 것은 이용신청이 적용되는 기간동안 당 관리시스템이 본 약관에 따라 신청
								서에 기재된 회원정보를 수집, 이용하는 것에 동의하는 것으로 간주됩니다.
								제7조(정보보안)
								① 가입 신청자가 당 관리시스템 서비스 가입 절차를 완료하는 순간부터 귀하는 입력한 정보의 비밀을 유지할 책임이 있으며, 회원의
								ID와 비밀번호를 사용하여 발생하는 모든 결과에 대한 책임은 회원본인에게 있습니다.
								② ID와 비밀번호에 관한 모든 관리의 책임은 회원에게 있으며, 회원의 ID나 비밀번호가 부정하게 사용 되었다는 사실을 발견한 경우에
								는 즉시 당 관리시스템에 신고하여야 합니다. 신고를 하지 않음으로 인한 모든 책임은 회원 본인에게 있습니다.
								③ 이용자는 당 관리시스템 서비스의 사용 종료시 마다 정확히 접속을 종료하도록 해야 하며, 정확히 종료하지 아니함으로써 제3자가
								귀하에 관한 정보를 이용하게 되는 등의 결과로 인해 발생하는 손해 및 손실에 대하여 당 관리시스템은 책임을 부담하지
								아니합니다.
								④ 관리시스템은 쿠키를 활용하여 개인정보를 수집하지 아니하며 인터넷 접속파일 등 개인정보를 자동으로 설치하는 장치를 거부하며
								관련된 장치를 운영하지 않습니다.
								⑤ 당 관리시스템은 수집·활용 중인 개인정보가 누출되고 그 사실을 인지시 개인정보 항목 및 발생시점 경위를 사용자에게 통보한다.
								제8조(서비스이용시간)
								① 서비스 이용시간은 당 관리시스템의 업무상 또는 기술상 특별한 지장이 없는 한 연중무휴, 1일 24시간을 원칙으로 합니다.
								② 제1항의 이용시간은 정기점검 등의 필요로 인하여 당 관리시스템이 정한 날 또는 시간은 예외로 합니다.
								제9조(서비스의중지및정보의저장과사용)
								① 귀하는 당 관리시스템 서비스에 보관되거나 전송된 메시지 및 기타 통신 메시지 등의 내용이 국가의 비상사태, 정전, 당 관리시스템
								의 관리 범위 외의 서비스 설비 장애 및 기타 불가항력에 의하여 보관되지 못하였거나 삭제된 경우, 전송되지 못한 경우 및 기타
								통신 데이터의 손실이 있을 경우에 당 관리시스템은 관련 책임을 지지 아니합니다.
								② 당 관리시스템이 정상적인 서비스 제공의 어려움으로 인하여 일시적으로 서비스를 중지하여야 할 경우에는 서비스 중지 1주일 전의
								고지 후 서비스를 중지할 수 있으며, 이 기간 동안 귀하가 고지내용을 인지하지 못한 데 대하여 당 관리시스템은 책임을 부담하지
								아니합니다.부득이한 사정이 있을 경우 위 사전 고지기간은 감축되거나 생략될 수 있습니다. 또한 위 서비스 중지에 의하여 본
								서비스에 보관되거나 전송된 메시지 및 기타 통신 메시지 등의 내용이 보관되지 못하였거나 삭제된 경우, 전송되지 못한 경우 및
								기타 통신 데이터의 손실이 있을 경우에 대하여도 당 관리시스템은 책임을 부담하지 아니합니다.
								③ 당 관리시스템의 사정으로 서비스를 영구적으로 중단하여야 할 경우 제 2 항에 의거합니다. 다만, 이 경우 사전 고지기간은 1개월로
								합니다.
								④ 당 관리시스템은 사전 고지 후 서비스를 일시적으로 수정, 변경 및 중단할 수 있으며, 이에 대하여 귀하 또는 제3자에게 어떠한 책임
								도 부담하지 아니합니다.
								⑤ 당 관리시스템은 이용자가 본 약관의 내용에 위배되는 행동을 한 경우, 임의로 서비스 사용을 제한 및 중지 할 수 있습니다. 이 경우
								당 관리시스템은 위 이용자의 접속을 금지할 수 있습니다.
								제10조(서비스의변경및해지)
								당 관리시스템은 귀하가 서비스를 이용하여 기대하는 손익이나 서비스를 통하여 얻은 자료로 인한 손해에 관하여 책임을 지지 않으며, 회원이 본 서비스에 게재한
								정보, 자료, 사실의 신뢰도, 정확성 등 내용에 관하여는
								책임을 지지 않습니다.</d>
								<p>

							</div>
							<div class="check">
								<input type="checkbox" id="agree1" required="required" onclick="toggleButton()">동의합니다
								<p>
							</div>
						</div>
						<div class="form-group">
							<label class="agree"><Strong>[필수]</Strong> 개인정보 약관동의</label>
							<p></p>
							<div class="text" readonly>가. 개인정보의 수집 및 이용 목적

								국가공간정보포털은 다음의 목적을 위하여 개인정보를 처리합니다. 처리하고 있는 개인정보는 다음의 목적 이외의 용도로는 이용되지 않으며, 이용 목적이 변경되는
								경우에는 개인정보 보호법 제18조에 따라 별도의 동의를 받는 등 필요한 조치를 이행할 예정입니다.

								나. 정보주체와 법정대리인의 권리ㆍ의무 및 행사방법
								① 정보주체(만 14세 미만인 경우에는 법정대리인을 말함)는 언제든지 개인정보 열람·정정·삭제·처리정지 요구 등의 권리를 행사할 수 있습니다.
								② 제1항에 따른 권리 행사는 개인정보보호법 시행규칙 별지 제8호 서식에 따라 작성 후 서면, 전자우편 등을 통하여 하실 수 있으며, 기관은 이에 대해 지체
								없이 조치하겠습니다.
								③ 제1항에 따른 권리 행사는 정보주체의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다. 이 경우 개인정보 보호법 시행규칙 별지 제11호
								서식에 따른 위임장을 제출하셔야 합니다.
								④ 개인정보 열람 및 처리정지 요구는 개인정보 보호법 제35조 제5항, 제37조 제2항에 의하여 정보주체의 권리가 제한 될 수 있습니다.
								⑤ 개인정보의 정정 및 삭제 요구는 다른 법령에서 그 개인정보가 수집 대상으로 명시되어 있는 경우에는 그 삭제를 요구할 수 없습니다.
								⑥ 정보주체 권리에 따른 열람의 요구, 정정ㆍ삭제의 요구, 처리정지의 요구 시 열람 등 요구를 한 자가 본인이거나 정당한 대리인인지를 확인합니다.

								다. 수집하는 개인정보의 항목
								국가공간정보포털 회원정보(필수): 이름, 이메일(아이디), 비밀번호

								라. 개인정보의 보유 및 이용기간
								국가공간정보포털은 법령에 따른 개인정보 보유ㆍ이용기간 또는 정보주체로부터 개인정보를 수집 시에 동의 받은 개인정보 보유ㆍ이용기간 내에서 개인정보를
								처리ㆍ보유합니다.

								- 수집근거: 정보주체의 동의
								- 보존기간: 회원 탈퇴 요청 전까지(1년 경과 시 재동의)
								- 보존근거: 정보주체의 동의

								마. 동의 거부 권리 및 동의 거부에 따른 불이익
								위 개인정보의 수집 및 이용에 대한 동의를 거부할 수 있으나, 동의를 거부할 경우 회원 가입이 제한됩니다.
							</div>
							<p>
							<div class="check">
								<input type="checkbox" id="agree2" required="required" onclick="toggleButton()">동의합니다
								<p>
							</div>
						</div>
						<div class="form-gruop">
							<div class="moveBtn">
								<a href="/"><button id="backBtn">취소</button></a>
								<a href="/view_jm/profJoinInfo_1"><button id="submitBtn">다음</button></a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<footer>
				<%@ include file="../footer.jsp" %>
			</footer>
		</div>
	</body>

	</html>