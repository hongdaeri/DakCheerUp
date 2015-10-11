<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="./config/resume_head.jsp" flush="false" />

<div data-scrollbar="true" data-height="100%" class="m-l-15 m-r-15">
	<div class="row">
		<div class="col-md-12" data-spy="scroll" data-target="resume-menu">
			<!-- begin panel -->
			<div class="panel panel-inverse" data-height="100%"
				data-sortable-id="ui-widget-1">
				<div class="panel-heading">
					<div class="panel-heading-btn">
						<a href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-default"
							data-click="panel-expand"><i class="fa fa-expand"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-success"
							data-click="panel-reload"><i class="fa fa-repeat"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-warning"
							data-click="panel-collapse"><i class="fa fa-minus"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-danger"
							data-click="panel-remove"><i class="fa fa-times"></i></a>
					</div>
					<h4 class="panel-title">기본인적사항</h4>
				</div>
				<div class="panel-body p-b-0">
					<div class="table-responsive">
						<table
							class="table table-bordered table-condensed table-valign-middle text-center">
							<tbody>
								<tr>
									<td class="warning ">이름</td>
									<td class="text-left"><strong>${profile.profileName}</strong></td>
									<td class="warning text-center ">한문</td>
									<td><strong>${profile.profileCname}</strong></td>
									<td class="warning text-center ">영문</td>
									<td><strong>${profile.profileEname}</strong></td>
								</tr>

								<tr>
									<td class="warning ">휴대폰</td>
									<td><strong>${profile.profilePhone}</strong></td>
									<td class="warning ">이메일</td>
									<td><strong>${profile.profileEmail}</strong></td>
									<td class="warning ">홈페이지 및 활동 SNS</td>
									<td><a data-toggle="collapse" href="#sns-table"
										class="btn btn-danger btn-block btn-xs">보이기/감추기</a></td>
								</tr>
								<tr>
									<td class="warning ">주소</td>
									<td colspan="5"><strong>${profile.profileAddr}</strong></td>

								</tr>
								<tr>
									<td class="warning">취미</td>
									<td><strong>${profile.profileHobby}</strong></td>
									<td class="warning">특기</td>
									<td><strong>${profile.profileForte}</strong></td>
									<td class="warning">종교</td>
									<td><strong>${profile.profileReligion}</strong></td>

								</tr>

								<tr>
									<td class="warning ">혼인여부</td>
									<td><strong>${profile.profileMarriage}</strong></td>
									<td class="warning ">보훈여부</td>
									<td><strong>${profile.profileVeterans}</strong></td>
									<td class="warning ">장애여부</td>
									<td><strong>${profile.profileDisability}</strong></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div id="sns-table" class="table-responsive collapse">
						<table id="resume-profile-table"
							class="table table-bordered table-condensed table-valign-middle text-center">
							<tbody>
								<tr>
									<td colspan="2" class="warning">개인웹사이트</td>
									<td colspan="2" class="warning">네이버블로그</td>
									<td colspan="2" class="warning">티스토리</td>
								</tr>
								<tr>
									<td colspan="2"><strong>${profile.profileWebsite}</strong></td>
									<td colspan="2"><strong>${profile.profileNaverBlog}</strong></td>
									<td colspan="2"><strong>${profile.profileTistory}</strong></td>
								</tr>
								<tr>
									<td class="warning">페이스북</td>
									<td class="warning">트위터</td>
									<td class="warning">인스타그램</td>
									<td class="warning">텀블러</td>
									<td class="warning">핀터레스트</td>
									<td class="warning">유투브</td>
								</tr>
								<tr>
									<td><strong>${profile.profileFacebook}</strong></td>
									<td><strong>${profile.profileTwitter}</strong></td>
									<td><strong>${profile.profileInstagram}</strong></td>
									<td><strong>${profile.profileTumblr}</strong></td>
									<td><strong>${profile.profilePinterest}</strong></td>
									<td><strong>${profile.profileYoutube}</strong></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="m-t-0 m-b-10 text-right">
						<a href="/resume/profile" class="btn btn-warning btn-sm">&nbsp;
							작성하러가기 &nbsp;</a>
					</div>
				</div>
			</div>

			<!-- end panel -->
			<!-- begin panel -->
			<div class="panel panel-inverse" data-sortable-id="ui-widget-2">
				<div class="panel-heading">
					<div class="panel-heading-btn">
						<a href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-default"
							data-click="panel-expand"><i class="fa fa-expand"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-success"
							data-click="panel-reload"><i class="fa fa-repeat"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-warning"
							data-click="panel-collapse"><i class="fa fa-minus"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-danger"
							data-click="panel-remove"><i class="fa fa-times"></i></a>
					</div>
					<h4 class="panel-title">추가인적사항</h4>
				</div>
				<div class="panel-body">
					<h5>가족관계</h5>
					<div class="table-responsive">
						<table id="familytbl"
							class="table table-bordered table-condensed table-valign-middle text-center">
							<tbody>
								<tr>
									<td colspan="2" class="warning">형제관계</td>
									<td colspan="4" class="text-left">
										<table>
											<tr>
												<td class="p-l-10"><strong>${brother.brotherMale}</strong></td>
												<td class="p-l-10">남</td>
												<td class="p-l-10"><strong>${brother.brotherFemale}</strong></td>
												<td class="p-l-10">녀 중</td>
												<td class="p-l-10"><strong>${brother.brotherMe}</strong></td>
												<td class="p-l-10">째</td>
											</tr>
										</table>
									</td>
								</tr>

								<tr class="warning">
									<td>관계</td>
									<td>성명</td>
									<td>연령</td>
									<td>현재직업</td>
									<td>동거여부</td>
								</tr>

								<c:forEach items="${familyList}" var="family">
									<tr>

										<td><strong>${family.familyRelation}</strong></td>
										<td><strong>${family.familyName}</strong></td>
										<td><strong>${family.familyAge} 세</strong></td>
										<td><strong>${family.familyJob}</strong></td>
										<td><strong>${family.familyLive}</strong></td>
									</tr>
								</c:forEach>

							</tbody>
						</table>
					</div>

					<h5>병역사항</h5>
					<div class="table-responsive">
						<table id="resume-family-table"
							class="table table-bordered table-condensed table-valign-middle text-center">
							<tbody>
								<tr class="warning">
									<td>군필여부</td>
									<td>복무기간</td>
									<td>군별</td>
									<td>계급</td>
									<td>병과</td>
								</tr>
								<tr>
									<td><strong>${military.militarySection}</strong></td>
									<td>${military.militaryPeriod}</td>
									<td>${military.militaryGroup}</td>
									<td>${military.militaryRank}</td>
									<td>${military.militaryWork}</td>
								</tr>
								<tr>
									<td class="warning">면제사유</td>
									<td colspan="5">${military.militaryReason}</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="m-t-0 m-b-10 text-right">
						<a href="/resume/addtion-profile" class="btn btn-warning btn-sm">&nbsp;
							작성하러가기 &nbsp;</a>
					</div>
				</div>
			</div>
			<!-- end panel -->
			<!-- begin panel -->
			<div id="resume-academic" class="panel panel-inverse"
				data-sortable-id="ui-widget-3">
				<div class="panel-heading">
					<div class="panel-heading-btn">
						<a href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-default"
							data-click="panel-expand"><i class="fa fa-expand"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-success"
							data-click="panel-reload"><i class="fa fa-repeat"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-warning"
							data-click="panel-collapse"><i class="fa fa-minus"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-danger"
							data-click="panel-remove"><i class="fa fa-times"></i></a>
					</div>
					<h4 class="panel-title">학력사항</h4>
				</div>
				<div class="panel-body">
					<h5>고등학교</h5>
					<div class="table-responsive">
						<table
							class="table table-bordered table-condensed table-valign-middle text-center">
							<tbody>
								<tr class="warning">
									<td>재학기간</td>
									<td>소재지</td>
									<td>학교명</td>
									<td>전공</td>
									<td>졸업구분</td>
								</tr>
								<tr>
									<td>${academicHigh.academicHighPeriod}</td>
									<td>${academicHigh.academicHighArea}</td>
									<td>${academicHigh.academicHighName}</td>
									<td>${academicHigh.academicHighMajor}</td>
									<td>${academicHigh.academicHighSection}</td>
								</tr>
							</tbody>
						</table>
					</div>

					<table class="width-full">
						<tr>
							<td><h5>대학교</h5></td>
							<td class="text-right p-r-15"></td>
						</tr>
					</table>

					<div class="table-responsive">
						<div id="academicUnivDiv">
							<table id="academicUnivTbl"
								class="table table-bordered table-condensed table-valign-middle text-center">
								<tbody>
									<c:forEach items="${academicUnivList}" var="academicUniv">

										<tr>
											<td class="warning">재학기간</td>
											<td class="warning">학교명</td>
											<td class="warning">전공</td>
											<td class="warning">학점</td>
											<td class="warning">학위</td>
											<td class="warning">부/복수전공</td>
										</tr>
										<tr>
											<td>${academicUniv.academicUnivPeriodFirst}
												(${academicUniv.academicUnivPeriodFirstOption}) ~
												${academicUniv.academicUnivPeriodLast}
												(${academicUniv.academicUnivPeriodLastOption})</td>
											<td>${academicUniv.academicUnivName}</td>
											<td>${academicUniv.academicUnivMajor}</td>
											<td>${academicUniv.academicUnivScore}
												(${academicUniv.academicUnivScoreOption} 기준)</td>
											<td>${academicUniv.academicUnivDegree}</td>
											<td>[${academicUniv.academicUnivDoubleOption}]
												${academicUniv.academicUnivDoubleName}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					<div class="m-t-0 m-b-10 text-right">
						<a href="/resume/academic" class="btn btn-warning btn-sm">&nbsp;
							작성하러가기 &nbsp;</a>
					</div>
				</div>
			</div>
			<!-- end panel -->
			<!-- begin panel -->
			<div class="panel panel-inverse" data-sortable-id="ui-widget-4">
				<div class="panel-heading">
					<div class="panel-heading-btn">
						<a href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-default"
							data-click="panel-expand"><i class="fa fa-expand"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-success"
							data-click="panel-reload"><i class="fa fa-repeat"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-warning"
							data-click="panel-collapse"><i class="fa fa-minus"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-danger"
							data-click="panel-remove"><i class="fa fa-times"></i></a>
					</div>
					<h4 class="panel-title">OA 활용능력</h4>
				</div>
				<div class="panel-body">
					<div class="table-responsive">
						<table
							class="table table-bordered table-condensed table-valign-middle text-center">
							<tbody>
								<tr class="warning">
									<td>문서작성<br>(한글 / MS-Word)
									</td>
									<td>스프레드시트<br>(EXCEL)
									</td>
									<td>프리젠테이션(Power Point)<br>(Power Point)
									</td>
									<td>인터넷활용<br>(정보검색 / 블로깅)
									</td>
									<td>그래픽<br>(Photoshop / Illustrator)
									</td>
								</tr>
								<tr>
									<td>${oa.oaDoc}</td>
									<td>${oa.oaExcel}</td>
									<td>${oa.oaPpt}</td>
									<td>${oa.oaInternet}</td>
									<td>${oa.oaGraphic}</td>

								</tr>
							</tbody>
						</table>
					</div>

					<div class="m-t-0 m-b-10 text-right">
						<a href="/resume/oa" class="btn btn-warning btn-sm">&nbsp;
							작성하러가기 &nbsp;</a>
					</div>
				</div>
			</div>
			<!-- end panel -->
			<!-- begin panel -->
			<div id="resume-strength" class="panel panel-inverse"
				data-sortable-id="ui-widget-5">
				<div class="panel-heading">
					<div class="panel-heading-btn">
						<a href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-default"
							data-click="panel-expand"><i class="fa fa-expand"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-success"
							data-click="panel-reload"><i class="fa fa-repeat"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-warning"
							data-click="panel-collapse"><i class="fa fa-minus"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-danger"
							data-click="panel-remove"><i class="fa fa-times"></i></a>
					</div>
					<h4 class="panel-title">강점/성격</h4>
				</div>
				<div class="panel-body">
					<div class="table-responsive">
						<table id="resume-family-table"
							class="table table-bordered table-condensed table-valign-middle text-center">
							<tbody>
								<tr class="warning">
									<td>강점 선택</td>
								</tr>
								<tr>
									<td>
										<div class="row">
											<div class="col-xs-4 col-sm-3 col-md-2">
												<label><input type="checkbox" value="" />책임감이 강함</label>
											</div>
											<div class="col-xs-4 col-sm-3 col-md-2">
												<label><input type="checkbox" value="" />책임감이 강함</label>
											</div>
											<div class="col-xs-4 col-sm-3 col-md-2">
												<label><input type="checkbox" value="" />책임감이 강함</label>
											</div>
											<div class="col-xs-4 col-sm-3 col-md-2">
												<label><input type="checkbox" value="" />책임감이 강함</label>
											</div>
											<div class="col-xs-4 col-sm-3 col-md-2">
												<label><input type="checkbox" value="" />책임감이 강함</label>
											</div>
											<div class="col-xs-4 col-sm-3 col-md-2">
												<label><input type="checkbox" value="" />책임감이 강함</label>
											</div>
											<div class="col-xs-4 col-sm-3 col-md-2">
												<label><input type="checkbox" value="" />책임감이 강함</label>
											</div>
											<div class="col-xs-4 col-sm-3 col-md-2">
												<label><input type="checkbox" value="" />책임감이 강함</label>
											</div>
											<div class="col-xs-4 col-sm-3 col-md-2">
												<label><input type="checkbox" value="" />책임감이 강함</label>
											</div>
											<div class="col-xs-4 col-sm-3 col-md-2">
												<label><input type="checkbox" value="" />책임감이 강함</label>
											</div>
											<div class="col-xs-4 col-sm-3 col-md-2">
												<label><input type="checkbox" value="" />책임감이 강함</label>
											</div>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="table-responsive">
						<table id="resume-family-table"
							class="table table-bordered table-condensed table-valign-middle text-center">
							<tbody>
								<tr class="warning">
									<td>성격 선택</td>
								</tr>
								<tr>
									<td>
										<div class="row">
											<div class="col-xs-4 col-sm-3 col-md-2">
												<label><input type="checkbox" value="" />책임감이 강함</label>
											</div>
											<div class="col-xs-4 col-sm-3 col-md-2">
												<label><input type="checkbox" value="" />책임감이 강함</label>
											</div>
											<div class="col-xs-4 col-sm-3 col-md-2">
												<label><input type="checkbox" value="" />책임감이 강함</label>
											</div>
											<div class="col-xs-4 col-sm-3 col-md-2">
												<label><input type="checkbox" value="" />책임감이 강함</label>
											</div>
											<div class="col-xs-4 col-sm-3 col-md-2">
												<label><input type="checkbox" value="" />책임감이 강함</label>
											</div>
											<div class="col-xs-4 col-sm-3 col-md-2">
												<label><input type="checkbox" value="" />책임감이 강함</label>
											</div>
											<div class="col-xs-4 col-sm-3 col-md-2">
												<label><input type="checkbox" value="" />책임감이 강함</label>
											</div>
											<div class="col-xs-4 col-sm-3 col-md-2">
												<label><input type="checkbox" value="" />책임감이 강함</label>
											</div>
											<div class="col-xs-4 col-sm-3 col-md-2">
												<label><input type="checkbox" value="" />책임감이 강함</label>
											</div>
											<div class="col-xs-4 col-sm-3 col-md-2">
												<label><input type="checkbox" value="" />책임감이 강함</label>
											</div>
											<div class="col-xs-4 col-sm-3 col-md-2">
												<label><input type="checkbox" value="" />책임감이 강함</label>
											</div>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>

					<div class="m-t-0 m-b-10 text-right">
						<a href="/resume/strength" class="btn btn-warning btn-sm">&nbsp;
							작성하러가기 &nbsp;</a>
					</div>
				</div>
			</div>
			<!-- end panel -->
			<!-- begin panel -->
			<div id="resume-license" class="panel panel-inverse"
				data-sortable-id="ui-widget-6">
				<div class="panel-heading">
					<div class="panel-heading-btn">
						<a href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-default"
							data-click="panel-expand"><i class="fa fa-expand"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-success"
							data-click="panel-reload"><i class="fa fa-repeat"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-warning"
							data-click="panel-collapse"><i class="fa fa-minus"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-danger"
							data-click="panel-remove"><i class="fa fa-times"></i></a>
					</div>
					<h4 class="panel-title">자격증/면허증</h4>
				</div>
				<div class="panel-body">
					<div class="table-responsive">
						<table id="licenseTbl"
							class="table table-bordered table-condensed table-valign-middle text-center">
							<tbody>
								<tr class="warning">

									<td>취득일자</td>
									<td>자격/면허명</td>
									<td>발급기관</td>
									<td>합격구분</td>
								</tr>

								<c:forEach items="${licenseList}" var="license">
									<tr>

										<td>${license.licenseNo}</td>
										<td>${license.licenseName}</td>
										<td>${license.licenseOrg}</td>
										<td>${license.licensePass}</td>

									</tr>
								</c:forEach>

							</tbody>
						</table>
					</div>
					<div class="m-t-0 m-b-10 text-right">
						<a href="/resume/license" class="btn btn-warning btn-sm">&nbsp;
							작성하러가기 &nbsp;</a>
					</div>
				</div>
			</div>
			<!-- end panel -->
			<!-- begin panel -->
			<div id="resume-lang-ability" class="panel panel-inverse"
				data-sortable-id="ui-widget-7">
				<div class="panel-heading">
					<div class="panel-heading-btn">
						<a href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-default"
							data-click="panel-expand"><i class="fa fa-expand"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-success"
							data-click="panel-reload"><i class="fa fa-repeat"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-warning"
							data-click="panel-collapse"><i class="fa fa-minus"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-danger"
							data-click="panel-remove"><i class="fa fa-times"></i></a>
					</div>
					<h4 class="panel-title">어학능력</h4>
				</div>
				<div class="panel-body">
					<div class="table-responsive">
						<table id="langAbilityTbl"
							class="table table-bordered table-condensed table-valign-middle text-center">
							<tbody>
								<tr class="warning">

									<td>언어</td>
									<td>회화능력</td>
									<td>작문능력</td>
									<td>독해능력</td>
								</tr>

								<c:forEach items="${languageAbilityList}" var="langAbility">
									<tr>

										<td><strong>${langAbility.langAbilityName}</strong></td>
										<td>${langAbility.langAbilityConversation}</td>
										<td>${langAbility.langAbilityComposition}</td>
										<td>${langAbility.langAbilityReading}</td>



									</tr>
								</c:forEach>

							</tbody>
						</table>
					</div>

					<div class="m-t-0 m-b-10 text-right">
						<a href="/resume/lang-ability" class="btn btn-warning btn-sm">&nbsp;
							작성하러가기 &nbsp;</a>
					</div>
				</div>
			</div>
			<!-- end panel -->
			<!-- begin panel -->
			<div id="resume-lang-exam" class="panel panel-inverse"
				data-sortable-id="ui-widget-8">
				<div class="panel-heading">
					<div class="panel-heading-btn">
						<a href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-default"
							data-click="panel-expand"><i class="fa fa-expand"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-success"
							data-click="panel-reload"><i class="fa fa-repeat"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-warning"
							data-click="panel-collapse"><i class="fa fa-minus"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-danger"
							data-click="panel-remove"><i class="fa fa-times"></i></a>
					</div>
					<h4 class="panel-title">어학시험</h4>
				</div>
				<div class="panel-body">
					<div class="table-responsive">
						<table id="langExamTbl"
							class="table table-bordered table-condensed table-valign-middle text-center">
							<tbody>
								<tr class="warning">
									<td>언어</td>
									<td>어학시험</td>
									<td>점수(등급)</td>
									<td>증빙기관</td>
								</tr>

								<c:forEach items="${languageExamList}" var="langExam">
									<tr>

										<td>${langExam.langExamLName}</td>
										<td>${langExam.langExamEName}</td>
										<td>${langExam.langExamScore}(${langExam.langExamType})</td>
										<td>${langExam.langExamOrg}</td>

									</tr>
								</c:forEach>

							</tbody>
						</table>
					</div>

					<div class="m-t-0 m-b-10 text-right">
						<a href="/resume/lang-exam" class="btn btn-warning btn-sm">&nbsp;
							작성하러가기 &nbsp;</a>
					</div>

				</div>
			</div>
			<!-- end panel -->
			<!-- begin panel -->
			<div id="resume-award" class="panel panel-inverse"
				data-sortable-id="ui-widget-9">
				<div class="panel-heading">
					<div class="panel-heading-btn">
						<a href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-default"
							data-click="panel-expand"><i class="fa fa-expand"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-success"
							data-click="panel-reload"><i class="fa fa-repeat"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-warning"
							data-click="panel-collapse"><i class="fa fa-minus"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-danger"
							data-click="panel-remove"><i class="fa fa-times"></i></a>
					</div>
					<h4 class="panel-title">수상내역 / 공모전</h4>
				</div>
				<div class="panel-body">
					<div class="table-responsive">
						<table id="awardTbl"
							class="table table-bordered table-condensed table-valign-middle text-center">
							<tbody>
								<tr class="warning">

									<td class="width-100">수상일</td>
									<td>수상명</td>
									<td>수상기관</td>
									<td class="width-150">작업구분</td>
								</tr>

								<c:forEach items="${awardList}" var="award">
									<tr>

										<td>${award.awardDate}</td>
										<td>${award.awardName}</td>
										<td>${award.awardOrg}</td>
										<td>${award.awardSection}</td>

									</tr>
								</c:forEach>

							</tbody>
						</table>
					</div>

					<div class="m-t-0 m-b-10 text-right">
						<a href="/resume/award" class="btn btn-warning btn-sm">&nbsp;
							작성하러가기 &nbsp;</a>
					</div>
				</div>
			</div>
			<!-- end panel -->
			<!-- begin panel -->
			<div id="resume-career" class="panel panel-inverse"
				data-sortable-id="ui-widget-10">
				<div class="panel-heading">
					<div class="panel-heading-btn">
						<a href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-default"
							data-click="panel-expand"><i class="fa fa-expand"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-success"
							data-click="panel-reload"><i class="fa fa-repeat"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-warning"
							data-click="panel-collapse"><i class="fa fa-minus"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-danger"
							data-click="panel-remove"><i class="fa fa-times"></i></a>
					</div>
					<h4 class="panel-title">경력 및 실습사항</h4>
				</div>
				<div class="panel-body">
					<div class="table-responsive">
						<table id="careerTbl"
							class="table table-bordered table-condensed table-valign-middle text-center">
							<tbody>
								<tr class="warning">
									<td>기간</td>
									<td>회사명</td>
									<td>부서</td>
									<td>직위</td>
									<td>담당업무</td>
								</tr>
								<c:forEach items="${careerList}" var="career">
									<tr>

										<td>${career.careerPeriod}</td>
										<td>${career.careerCompany}</td>
										<td>${career.careerPost}</td>
										<td>${career.careerPosition}</td>
										<td>${career.careerWork}</td>


									</tr>
								</c:forEach>

							</tbody>
						</table>
					</div>

					<div class="m-t-0 m-b-10 text-right">
						<a href="/resume/career" class="btn btn-warning btn-sm">&nbsp;
							작성하러가기 &nbsp;</a>
					</div>
				</div>
			</div>
			<!-- end panel -->
			<!-- begin panel -->
			<div id="resume-voluntary" class="panel panel-inverse"
				data-sortable-id="ui-widget-11">
				<div class="panel-heading">
					<div class="panel-heading-btn">
						<a href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-default"
							data-click="panel-expand"><i class="fa fa-expand"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-success"
							data-click="panel-reload"><i class="fa fa-repeat"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-warning"
							data-click="panel-collapse"><i class="fa fa-minus"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-danger"
							data-click="panel-remove"><i class="fa fa-times"></i></a>
					</div>
					<h4 class="panel-title">봉사활동 / 대외활동</h4>
				</div>
				<div class="panel-body">
					<div class="table-responsive">
						<table id="voluntaryTbl"
							class="table table-bordered table-condensed table-valign-middle text-center">
							<tbody>
								<tr class="warning">

									<td>기간</td>
									<td>봉사기관</td>
									<td>활동내용</td>
								</tr>

								<c:forEach items="${voluntaryList}" var="voluntary">
									<tr>

										<td>${voluntary.voluntaryPeriod}</td>
										<td>${voluntary.voluntaryOrg}</td>
										<td>${voluntary.voluntaryContent}</td>


									</tr>
								</c:forEach>

							</tbody>
						</table>
					</div>

					<div class="m-t-0 m-b-10 text-right">
						<a href="/resume/voluntary" class="btn btn-warning btn-sm">&nbsp;
							작성하러가기 &nbsp;</a>
					</div>
				</div>
			</div>
			<!-- end panel -->
			<!-- begin panel -->
			<div id="resume-education" class="panel panel-inverse"
				data-sortable-id="ui-widget-12">
				<div class="panel-heading">
					<div class="panel-heading-btn">
						<a href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-default"
							data-click="panel-expand"><i class="fa fa-expand"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-success"
							data-click="panel-reload"><i class="fa fa-repeat"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-warning"
							data-click="panel-collapse"><i class="fa fa-minus"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-danger"
							data-click="panel-remove"><i class="fa fa-times"></i></a>
					</div>
					<h4 class="panel-title">교육이수내역</h4>
				</div>
				<div class="panel-body">
					<div class="table-responsive">
						<table id="educationTbl"
							class="table table-bordered table-condensed table-valign-middle text-center">
							<tbody>
								<tr class="warning">
									<td class="width-150">기간</td>
									<td>과정명</td>
									<td class="width-250">교육기관</td>
								</tr>

								<c:forEach items="${educationList}" var="education">
									<tr>
										<td>${education.educationPeriod}</td>
										<td>${education.educationName}</td>
										<td>${education.educationOrg}</td>

									</tr>
								</c:forEach>

							</tbody>
						</table>
					</div>

					<div class="m-t-0 m-b-10 text-right">
						<a href="/resume/education" class="btn btn-warning btn-sm">&nbsp;
							작성하러가기 &nbsp;</a>
					</div>
				</div>
			</div>
			<!-- end panel -->
			<!-- begin panel -->
			<div id="resume-project" class="panel panel-inverse"
				data-sortable-id="ui-widget-13">
				<div class="panel-heading">
					<div class="panel-heading-btn">
						<a href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-default"
							data-click="panel-expand"><i class="fa fa-expand"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-success"
							data-click="panel-reload"><i class="fa fa-repeat"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-warning"
							data-click="panel-collapse"><i class="fa fa-minus"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-danger"
							data-click="panel-remove"><i class="fa fa-times"></i></a>
					</div>
					<h4 class="panel-title">참여 프로젝트</h4>
				</div>
				<div class="panel-body">
					<div class="table-responsive">
						<table id="projectTbl"
							class="table table-bordered table-condensed table-valign-middle text-center">
							<tbody>
								<tr class="warning">
									<td class="width-150">프로젝트 기간</td>
									<td class="width-150">구분</td>
									<td>프로젝트명</td>
								</tr>

								<c:forEach items="${projectList}" var="project">
									<tr>

										<td>${project.projectPeriod}</td>
										<td>${project.projectSection}</td>
										<td>${project.projectName}</td>


									</tr>
									<tr>
										<td class="warning">상세 내용</td>
										<td colspan="2"><textarea class="textarea form-control noresize" rows="9">${project.projectContext}</textarea></td>
									</tr>
								</c:forEach>

							</tbody>
						</table>
					</div>

					<div class="m-t-0 m-b-10 text-right">
						<a href="/resume/project" class="btn btn-warning btn-sm">&nbsp;
							작성하러가기 &nbsp;</a>
					</div>
				</div>
			</div>
			<!-- end panel -->
			<!-- begin panel -->
			<div id="resume-write" class="panel panel-inverse"
				data-sortable-id="ui-widget-14">
				<div class="panel-heading">
					<div class="panel-heading-btn">
						<a href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-default"
							data-click="panel-expand"><i class="fa fa-expand"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-success"
							data-click="panel-reload"><i class="fa fa-repeat"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-warning"
							data-click="panel-collapse"><i class="fa fa-minus"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-danger"
							data-click="panel-remove"><i class="fa fa-times"></i></a>
					</div>
					<h4 class="panel-title">저술내역</h4>
				</div>
				<div class="panel-body">
					<div class="table-responsive">
						<table id="writeTbl"
							class="table table-bordered table-condensed table-valign-middle text-center">
							<tbody>
								<tr class="warning">

									<td>발행(게재)일</td>
									<td class="width-130">분류</td>
									<td>저술명</td>
									<td>발행(게재)처</td>
								</tr>

								<c:forEach items="${writeList}" var="write">
									<tr>
										<td>${write.writeDate}</td>
										<td>${write.writeSection}</td>
										<td>${write.writeName}</td>
										<td>${write.writeOrg}</td>



									</tr>
								</c:forEach>

							</tbody>
						</table>
					</div>

					<div class="m-t-0 m-b-10 text-right">
						<a href="/resume/write" class="btn btn-warning btn-sm">&nbsp;
							작성하러가기 &nbsp;</a>
					</div>
				</div>
			</div>
			<!-- end panel -->
			<!-- begin panel -->
			<div id="resume-global" class="panel panel-inverse"
				data-sortable-id="ui-widget-15">
				<div class="panel-heading">
					<div class="panel-heading-btn">
						<a href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-default"
							data-click="panel-expand"><i class="fa fa-expand"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-success"
							data-click="panel-reload"><i class="fa fa-repeat"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-warning"
							data-click="panel-collapse"><i class="fa fa-minus"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-danger"
							data-click="panel-remove"><i class="fa fa-times"></i></a>
					</div>
					<h4 class="panel-title">글로벌 경험</h4>
				</div>
				<div class="panel-body">
					<div class="table-responsive">
						<table id="globalTbl"
							class="table table-bordered table-condensed table-valign-middle text-center">
							<tbody>
								<tr class="warning">
									<td>기간</td>
									<td class="width-170">국가</td>
									<td class="width-130">사유(목적)</td>
									<td>활동내용</td>
								</tr>

								<c:forEach items="${globalList}" var="global">
									<tr>

										<td>${global.globalPeriod}</td>
										<td>${global.globalNation}</td>
										<td>${global.globalPurpose}</td>
										<td>${global.globalContent}</td>

									</tr>
								</c:forEach>

							</tbody>
						</table>
					</div>

					<div class="m-t-0 m-b-10 text-right">
						<a href="/resume/global" class="btn btn-warning btn-sm">&nbsp;
							작성하러가기 &nbsp;</a>
					</div>
				</div>
			</div>
			<!-- end panel -->
			<!-- begin panel -->
			<div id="resume-swot" class="panel panel-inverse"
				data-sortable-id="ui-widget-16">
				<div class="panel-heading">
					<div class="panel-heading-btn">
						<a href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-default"
							data-click="panel-expand"><i class="fa fa-expand"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-success"
							data-click="panel-reload"><i class="fa fa-repeat"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-warning"
							data-click="panel-collapse"><i class="fa fa-minus"></i></a> <a
							href="javascript:"
							class="btn btn-xs btn-icon btn-circle btn-danger"
							data-click="panel-remove"><i class="fa fa-times"></i></a>
					</div>
					<h4 class="panel-title">SWOT 자기분석</h4>
				</div>
				<div class="panel-body">
					<form id="resume-swot-form" name="swot" class="form-horizontal"
						action="/resume/swot" method="POST">
						<div class="table-responsive">
							<table id="resume-family-table"
								class="table table-bordered table-condensed table-valign-middle text-center">
								<tbody>
									<tr class="warning">
										<td>강점(Strength)</td>
										<td>약점(Weakness)</td>
									</tr>
									<tr>
										<td>${swot.swotStrength}</td>
										<td>${swot.swotWeakness}</td>

									</tr>
									<tr class="warning">
										<td>기회(Opportunities)</td>
										<td>위협(Threats)</td>
									</tr>
									<tr>
										<td>${swot.swotOpportunities}</td>
										<td>${swot.swotThreats}</td>

									</tr>
								</tbody>
							</table>
							<table id="resume-swot-table2"
								class="table table-bordered table-condensed table-valign-middle text-center">
								<tbody>
									<tr>
										<td class="warning">SO전략 (강점-기회)</td>
										<td>${swot.swotSo}</td>
									</tr>
									<tr>
										<td class="warning">ST전략 (강점-위협)</td>
										<td>${swot.swotSt}</td>
									</tr>
									<tr>
										<td class="warning">WO전략 (약점-기회)</td>
										<td>${swot.swotWo}</td>
									</tr>
									<tr>
										<td class="warning">WT전략 (약점-위협)</td>
										<td>${swot.swotWt}</td>
									</tr>
								</tbody>
							</table>
						</div>

						<div class="m-t-0 m-b-10 text-right">
							<a href="/resume/swot" class="btn btn-warning btn-sm">&nbsp;
								작성하러가기 &nbsp;</a>
						</div>
					</form>
				</div>
			</div>
			<!-- end panel -->
		</div>
	</div>
</div>


<jsp:include page="./config/resume_footer.jsp" flush="false" />