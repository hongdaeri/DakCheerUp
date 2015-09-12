package com.fourdrone.dakcheerup.mapper;

import com.fourdrone.dakcheerup.domain.Resume;
import com.fourdrone.dakcheerup.domain.resume.*;


import java.util.ArrayList;

/**
 * Created by h0ngz on 2015. 8. 17..
 */
public interface ResumeMapper {
	/* * * * * * * * * * * * * * * * * * * * * * * * * * *
	 *                                                   *
	 *               GET RESUME                          * 
	 *                                                   *
	 * * * * * * * * * * * * * * * * * * * * * * * * * * */
	// 이력서 설정
	ResumeConfig getResumeConfig(String memberId);		
	
	// 회원의 모든 이력정보  
    Resume getResume(String memberId);
    
    // 기본인적사항
    Profile getProfile(String memberId);
    
    // 추가인적사항 - 가족관계
    Brother getBrother(String memberId);							//형제관계
    Family getFamily(int familyNo);									//가족사항 단일 항목
    ArrayList<Family> getFamilyList(String memberId);				//가족사항 리스트
    
    // 추가인적사항 - 병역사항
    Military getMilitary(String memberId);
    
    // 학력사항 
    Academic getAcademic(String memberId);							//모든 학력사항
    AcademicHigh getAcademicHigh(String memberId);					//고등학교
    AcademicUniv getAcademicUniv(int academicUnivNo);				//대학교 단일 항목
    ArrayList<AcademicUniv> getAcademicUnivList(String memberId);	//대학교 리스트
    
    // 수상내역
    Award getAward(int awardNo);									// 수상내역 단일 항목
    ArrayList<Award> getAwardList(String memberId);					// 수상내역 리스트
    
    // 경력 및 실습사항
    Career getCareer(int careerNo);   								// 경력사항 단일항목
    ArrayList<Career> getCareerList(String memberId);				// 경력사항 리스트
    
    // 교육이수 내역
    Education getEducation(int educationNo);						// 교육이수 단일항목
    ArrayList<Education> getEducationList(String memberId);			// 교육이수 리스트
    
    // 글로벌경험
    Global getGlobal(int globalNo);									// 글로벌경험 단일항목
    ArrayList<Global> getGlobalList(String memberId);				// 글로벌경험 리스트
    
    // 어학능력
    LanguageAbility getLanguageAbility(int langAbilityNo);				// 어학능력 단일항목
    ArrayList<LanguageAbility> getLanguageAbilityList(String memberId);	// 어학능력 리스트
    
    // 어학시험
    LanguageExam getLanguageExam(int langExamNo);					// 어학시험 단일항목
    ArrayList<LanguageExam> getLanguageExamList(String memberId);	// 어학시험 리스트
    
    // 자격증/면허증
    License getLicense(int licenseNo);								// 자격 면허증 단일항목
    ArrayList<License> getLicenseList(String memberId);				// 자격 면허증 리스트
    
    // OA능력
    OA getOA(String memberId);										// OA능력 단일항목

    // 참여프로젝트
    Project getProject(int projectNo);								// 참여프로젝트 단일항목
    ArrayList<Project> getProjectList(String memberId);				// 참여프로젝트 리스트
    
    // 강점/성격
    Strength getStrength(String memberId);	
    
    // SWOT분석
    Swot getSwot(String memberId);									//SWOT자기분석 단일항목
    
    // 봉사활동
    Voluntary getVoluntary(int voluntaryNo);						// 봉사활동 단일항목
    ArrayList<Voluntary> getVoluntaryList(String memberId);			// 봉사활동 리스트
    
    // 저술내역
    Write getWrite(int writeNo);									// 저술내역 단일항목
    ArrayList<Write> getWriteList(String memberId);					// 저술내역 리스트
    
	
	/* * * * * * * * * * * * * * * * * * * * * * * * * * *
	 *                                                   *
	 *               ADD RESUME                          * 
	 *                                                   *
	 * * * * * * * * * * * * * * * * * * * * * * * * * * */
    // 이력서 설정 
    void addResumeConfig(ResumeConfig resumeConfig);
    
    // 회원의 모든 이력정보  
    void addResume(Resume resume);
    
    // 기본인적사항
    void addProfile(Profile profile);
    
    // 추가인적사항 - 가족관계
    void addBrother(Brother brother);							//형제관계
    void addFamily(Family family);								//가족사항 
    
    // 추가인적사항 - 병역사항
    void addMilitary(Military military);
    
    // 학력사항 
    void addAcademic(Academic academic);						
    void addAcademicHigh(AcademicHigh academicHigh);			//고등학교
    void addAcademicUniv(AcademicUniv academicUniv);			//대학교
    
    // 수상내역
    void addAward(Award award);								
    
    // 경력 및 실습사항
    void addCareer(Career career);   							
    
    // 교육이수 내역
    void addEducation(Education education);					
    
    // 글로벌경험
    void addGlobal(Global global);						
    
    // 어학능력
    void addLanguageAbility(LanguageAbility languageAbility);	
    
    // 어학시험
    void addLanguageExam(LanguageExam languageExam);				
    
    // 자격증/면허증
    void addLicense(License license);								
    
    // OA능력
    void addOA(OA oa);

    // 참여프로젝트
    void addProject(Project project);
    
    // 강점/성격
    void addStrength(Strength strength);					// 강점
  
    
    // SWOT분석
    void addSwot(Swot swot);
    
    // 봉사활동
    void addVoluntary(Voluntary voluntary);
    
    // 저술내역
    void addWrite(Write write);
    
    
	
	/* * * * * * * * * * * * * * * * * * * * * * * * * * *
	 *                                                   *
	 *               MOD RESUME                          * 
	 *                                                   *
	 * * * * * * * * * * * * * * * * * * * * * * * * * * */
    //이력서 설정
    void modResumeConfig(ResumeConfig resumeConfig);
    
    // 회원의 모든 이력정보  
    void modResume(Resume resume);
    
    // 기본인적사항
    void modProfile(Profile profile);
    
    // 추가인적사항 - 가족관계
    void modBrother(Brother brother);							//형제관계
    void modFamily(Family family);								//가족사항 
    
    // 추가인적사항 - 병역사항
    void modMilitary(Military military);
    
    // 학력사항 
    void modAcademic(Academic academic);						
    void modAcademicHigh(AcademicHigh academicHigh);			//고등학교
    void modAcademicUniv(AcademicUniv academicUniv);			//대학교
    
    // 수상내역
    void modAward(Award award);								
    
    // 경력 및 실습사항
    void modCareer(Career career);   							
    
    // 교육이수 내역
    void modEducation(Education education);					
    
    // 글로벌경험
    void modGlobal(Global global);						
    
    // 어학능력
    void modLanguageAbility(LanguageAbility languageAbility);	
    
    // 어학시험
    void modLanguageExam(LanguageExam languageExam);				
    
    // 자격증/면허증
    void modLicense(License license);								
    
    // OA능력
    void modOA(OA oa);

    // 참여프로젝트
    void modProject(Project project);
    
    // 강점/성격
    void modStrength(Strength strength);					// 강점  
    
    // SWOT분석
    void modSwot(Swot swot);
    
    // 봉사활동
    void modVoluntary(Voluntary voluntary);
    
    // 저술내역
    void modWrite(Write write);
    
	
	/* * * * * * * * * * * * * * * * * * * * * * * * * * *
	 *                                                   *
	 *               DEL RESUME                          * 
	 *                                                   *
	 * * * * * * * * * * * * * * * * * * * * * * * * * * */
    //이력서설정
    void delResumeConfig(String memberId);
    
    // 회원의 모든 이력정보  
    void delResume(String memberId);
    
    // 기본인적사항
    void delProfile(String memberId);
    
    // 추가인적사항 - 가족관계
    void delBrother(String memberId);					//형제관계
    void delFamily(int familyNo);						//가족사항 
    
    // 추가인적사항 - 병역사항
    void delMilitary(String memberId);
    
    // 학력사항 
    void delAcademic(String memberId);						
    void delAcademicHigh(String memberId);				//고등학교
    void delAcademicUniv(int academicUnivNo);			//대학교
    
    // 수상내역
    void delAward(int awardNo);								
    
    // 경력 및 실습사항
    void delCareer(int careerNo);   							
    
    // 교육이수 내역
    void delEducation(int educationNo);					
    
    // 글로벌경험
    void delGlobal(int globalNo);						
    
    // 어학능력
    void delLanguageAbility(int langAbilityNo);	
    
    // 어학시험
    void delLanguageExam(int langExamNo);				
    
    // 자격증/면허증
    void delLicense(int licenseNo);								
    
    // OA능력
    void delOA(String memberId);

    // 참여프로젝트
    void delProject(int projectNo);
    
    // 강점/성격
    void delStrength(String memberId);				
  
    
    // SWOT분석
    void delSwot(String memberId);
    
    // 봉사활동
    void delVoluntary(int voluntaryNo);
    
    // 저술내역
    void delWrite(int writeNo);
}
