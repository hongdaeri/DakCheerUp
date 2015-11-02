<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	
	<!-- =================== ETC ======================================= -->
</head>
<body>
	<!-- begin page-header -->
	<h1 class="page-header m-t-10">회원정보수정 <small>개인정보 및 계정 관리</small></h1>
	<!-- end page-header -->
	<!-- begin profile-container -->
          <div class="profile-container">
              <!-- begin profile-section -->
              <div class="profile-section">
                  <!-- begin profile-left -->
                  <div class="profile-left">
                      <!-- begin profile-image -->
                      <div class="profile-image">
                          <img src="/resources/img/profile-cover.jpg" />
                          <i class="fa fa-user hide"></i>
                      </div>
                      <!-- end profile-image -->
                      <div class="m-b-10">
                          <a href="#" class="btn btn-warning btn-block btn-sm">사진 변경</a>
                      </div>
                      <!-- begin profile-highlight -->
                      <div class="profile-highlight">
                          <h4><i class="fa fa-cog"></i> Only My Contacts</h4>
                          <div class="checkbox m-b-5 m-t-0">
                              <label><input type="checkbox" /> Show my timezone</label>
                          </div>
                          <div class="checkbox m-b-0">
                              <label><input type="checkbox" /> Show i have 14 contacts</label>
                          </div>
                      </div>
                      <!-- end profile-highlight -->
                  </div>
                  <!-- end profile-left -->
                  <!-- begin profile-right -->
                  <div class="profile-right">
                      <!-- begin profile-info -->
                      <div class="profile-info">
                          <!-- begin table -->
                          <div class="table-responsive">
                          	  <form id="member-info-modify" name="member-info-modify" class="form-horizontal" action="/account/modify" method="POST" >
                              <table class="table table-profile">
                                  <thead>
                                      <tr>
                                          <th></th>
                                          <th>
                                              <h4>${member.memberName} <small>${member.memberId}</small></h4>
                                          </th>
                                      </tr>
                                  </thead>
                                  <tbody>
                                      <tr class="highlight">
	                                      <td class="field">이름</td>
	                                      <td><input type="text" name="memberName" value="${member.memberName}" class="form-control input-xs input-inline " /></td>
                                      </tr>
                                      
                                      <tr class="divider">
                                          <td colspan="2"></td>
                                      </tr>
                                     
                                      <tr>
                                          <td class="field">휴대전화</td>
                                          <td><input type="text" name="profilePhone" value="${profile.profilePhone}" class="form-control input-xs input-inline " /></td>
                                      </tr>
                                      <tr>
                                          <td class="field">이메일</td>
                                          <td><input type="text" name="profileEmail" value="${profile.profileEmail}" class="form-control input-xs input-inline " /></td>
                                      </tr>
                                      <tr>
                                          <td class="field">생년월일</td>
                                          <td><input type="text" name="profileJuminFront" value="${profile.profileJuminFront}" class="form-control input-xs input-inline " /></td>
                                      </tr>
                                      <tr class="divider">
                                          <td colspan="2"></td>
                                      </tr>
                                      <tr class="highlight">
                                          <td class="field">비밀번호 변경</td>
                                          <td><a data-toggle="collapse" href="#mod-password" class="btn btn-danger btn-xs">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;비밀번호 변경하기&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td>
                                      </tr>                                    
                                      <tr>
                                          <td colspan="2" class="p-0">
                                          	<div id="mod-password" class="collapse" style="border-bottom:1px solid #ccc">
												<table class="table table-profile m-b-0">								                
													<tbody>
									                	<tr>
									                		<td class="field">현재 비밀번호</td>
									                		<td><input type="text" name="memberPassword" class="form-control input-xs input-inline " /></td>
									                	</tr>
									                	<tr>
									                		<td class="field">새 비밀번호</td>
									                		<td><input type="text" name="newPassword" class="form-control input-xs input-inline " /></td>
									                	</tr>
									                	<tr>
									                		<td class="field">새 비밀번호 확인</td>
									                		<td><input type="text" name="newPassword_re" class="form-control input-xs input-inline " /></td>
									                	</tr>									                	
									         		</tbody>
								              	</table>
								              </div>
                                          </td>
                                      </tr>
                                      <tr>
                                          <td class="field">지역</td>
                                          <td>
                                              <select class="form-control input-inline input-xs" name="region">
                                                  <option value="AF" selected>한국</option>
                                                  <option value="US">미국</option>
                                                  <option value="CH">중국</option>
                                                  <option value="JP">일본</option>
                                                  <option value="EU">유럽</option>
                                                  <option value="AF">아프리카</option>
                                                  <option value="OS">오세아니아</option>
                                                  <option value="ETC">그 외 지역</option>                                              
                                              </select>
                                          </td>
                                      </tr>
                                      <tr>
                                          <td class="field">가입일</td>
                                          <td><fmt:formatDate pattern="yyyy년 MM월 dd일 kk시 mm분" value="${member.regDate}" />에 가입함.</td>
                                      </tr>
                                      <tr class="highlight">
                                          <td class="field">계정삭제</td>
                                          <td><a href="#sign-out" data-toggle="modal">저는 닥취업에서 탈퇴 하겠습니다.</a></td>
                                      </tr>                                      
                                  </tbody>
                              </table>  
                              </form>                            
				              <div class="m-t-0 m-b-10 text-right">
					            <a href="#" onclick="document.getElementById('member-info-modify').submit()" class="btn btn-warning btn-sm">&nbsp; 수정완료 &nbsp;</a>
					          </div>
                          </div>
                          <!-- end table -->
                      </div>
                      <!-- end profile-info -->
                  </div>
                  <!-- end profile-right -->
              </div>
              <!-- end profile-section -->             
          </div>
	<!-- end profile-container -->
	<!-- #modal-alert -->
	<div class="modal fade" id="sign-out">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<h4 class="modal-title">닥취업 탈퇴선언!</h4>
				</div>
				<div class="modal-body">
					<div class="alert alert-danger m-b-0">
						<h4><i class="fa fa-info-circle"></i>&nbsp;탈퇴 전 확인하세요.</h4>
						<p>정말 탈퇴 하실 건가요? 닥취업이 충분한 서비스를 제공하지 못하였나 보군요.</p>
						<p><strong>${member.memberName}</strong>님의 마음이 변할지도 모르니, 회원탈퇴는 탈퇴요청 3일 후에 완료 됩니다.</p>
						<p>3일간의 유예기간 동안은 언제든지 탈퇴취소를 요청하실 수 있으며, </p>
						<p>회원 탈퇴 시 <strong>${member.memberName}</strong>님의 소중한 정보는 티끌 없이 모두 삭제 되며 따로 보관하지 않으니,</p>
						<p>개인정보 수집에 대한 걱정은 안하셔도 됩니다.</p>
						<p>더 나은 서비스를 제공하지 못하여 죄송합니다.</p>
					</div>
				</div>
				<div class="modal-footer">
					<a href="javascript:;" class="btn btn-sm btn-white" data-dismiss="modal">탈퇴안할게요</a>
					<a href="javascript:;" class="btn btn-sm btn-danger" data-dismiss="modal">탈퇴합니다</a>
				</div>
			</div>
		</div>
	</div>

		
	

	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<div id="siteMeshJavaScript">
	
			
		<script>		
			$(document).ready(function() {
				App.init();
				
			});			
			
		</script>		
	</div>
	<!-- ================== END PAGE LEVEL JS ================== -->
 	
</body>
</html>
