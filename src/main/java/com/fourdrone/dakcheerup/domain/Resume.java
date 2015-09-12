/**
 *  TB_RESUME(이력서) 테이블 대응 VO 클래스 
 *  DakCheerUp.vo.resume 패키지의 모든 클래스와 클래스 리스트를 담는다. 
 */
package com.fourdrone.dakcheerup.domain;

import com.fourdrone.dakcheerup.domain.resume.*;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

/**
 * @author h0ngz
 *
 */
public class Resume {
	
	//테이블 필드 대응 변수들.
	private String memberId;					//회원_아이디 
	private Timestamp resumeFirstRegDate;		//이력서_최초_등록일 
	private Timestamp resumeLastRegDate;		//이력서_최근_등록일 
	private Timestamp resumeLastPrintDate;		//이력서_최근_프린트일 
	
	
	// 단일 Vo클래스들.
	private Award award;						//수상실적
	private Brother brother;					//형제관계
	private Career career;						//경력및실습활동 
	private Education education;				//교육이수 
	private Family family;						//가족관계 
	private Global global;						//글로벌경험 
	private LanguageAbility languageAbility;	//어학능력 
	private LanguageExam languageExam;			//어학시험 
	private License license;					//자격증및면허증 
	private Military military;					//병역 
	private OA oa;								//OA능력 
	private Profile profile;					//프로필 
	private Project project;					//프로젝트경험 
	private Strength strength;					//강점 
	private Swot swot;							//SWOT분석 
	private Voluntary voluntary;				//봉사활동 
	private Write write;						//저서내역 
	
	// 리스트 Vo클래스
	private List <Award> awardList;
	private List <Career> careerList;
	private List <Education> educationList;
	private List <Global> globalList;
	private List <Family> familyList;
	private List <LanguageAbility> languageAbilityList;
	private List <LanguageExam> languageExamList;
	private List <License> licenseList;
	private List <Project> projectList;
	private List <Voluntary> voluntaryList;
	private List <Write> writeList;
	
	public Resume()
	{
		//단일 클래스 Initialize
		this.award				= new Award();
		this.brother			= new Brother();
		this.career				= new Career();
		this.education			= new Education();
		this.family				= new Family();
		this.global				= new Global();
		this.languageAbility	= new LanguageAbility();
		this.languageExam		= new LanguageExam();
		this.license			= new License();
		this.military			= new Military();
		this.oa					= new OA();
		this.profile			= new Profile();
		this.project			= new Project();
		this.swot				= new Swot();
		this.voluntary			= new Voluntary();
		this.write				= new Write();
		this.strength			= new Strength();
		
		
		// 리스트 클래스 Initialize
		this.awardList				= new ArrayList <Award>();
		this.careerList				= new ArrayList <Career>();
		this.educationList			= new ArrayList <Education>();
		this.familyList				= new ArrayList <Family>();
		this.globalList				= new ArrayList <Global>();
		this.languageAbilityList	= new ArrayList <LanguageAbility>();
		this.languageExamList		= new ArrayList <LanguageExam>();
		this.licenseList			= new ArrayList <License>();
		this.projectList			= new ArrayList <Project>();
		this.voluntaryList			= new ArrayList <Voluntary>();
		this.writeList				= new ArrayList <Write>();		
		
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public Timestamp getResumeFirstRegDate() {
		return resumeFirstRegDate;
	}

	public void setResumeFirstRegDate(Timestamp resumeFirstRegDate) {
		this.resumeFirstRegDate = resumeFirstRegDate;
	}

	public Timestamp getResumeLastRegDate() {
		return resumeLastRegDate;
	}

	public void setResumeLastRegDate(Timestamp resumeLastRegDate) {
		this.resumeLastRegDate = resumeLastRegDate;
	}

	public Timestamp getResumeLastPrintDate() {
		return resumeLastPrintDate;
	}

	public void setResumeLastPrintDate(Timestamp resumeLastPrintDate) {
		this.resumeLastPrintDate = resumeLastPrintDate;
	}

	public Award getAward() {
		return award;
	}

	public void setAward(Award award) {
		this.award = award;
	}

	public Brother getBrother() {
		return brother;
	}

	public void setBrother(Brother brother) {
		this.brother = brother;
	}

	public Career getCareer() {
		return career;
	}

	public void setCareer(Career career) {
		this.career = career;
	}

	public Education getEducation() {
		return education;
	}

	public void setEducation(Education education) {
		this.education = education;
	}

	public Family getFamily() {
		return family;
	}

	public void setFamily(Family family) {
		this.family = family;
	}

	public Global getGlobal() {
		return global;
	}

	public void setGlobal(Global global) {
		this.global = global;
	}

	public LanguageAbility getLanguageAbility() {
		return languageAbility;
	}

	public void setLanguageAbility(LanguageAbility languageAbility) {
		this.languageAbility = languageAbility;
	}

	public LanguageExam getLanguageExam() {
		return languageExam;
	}

	public void setLanguageExam(LanguageExam languageExam) {
		this.languageExam = languageExam;
	}

	public License getLicense() {
		return license;
	}

	public void setLicense(License license) {
		this.license = license;
	}

	public Military getMilitary() {
		return military;
	}

	public void setMilitary(Military military) {
		this.military = military;
	}

	public OA getOa() {
		return oa;
	}

	public void setOa(OA oa) {
		this.oa = oa;
	}

	public Profile getProfile() {
		return profile;
	}

	public void setProfile(Profile profile) {
		this.profile = profile;
	}

	public Project getProject() {
		return project;
	}

	public void setProject(Project project) {
		this.project = project;
	}

	public Strength getStrength() {
		return strength;
	}

	public void setStrength(Strength strength) {
		this.strength = strength;
	}

	public Swot getSwot() {
		return swot;
	}

	public void setSwot(Swot swot) {
		this.swot = swot;
	}

	public Voluntary getVoluntary() {
		return voluntary;
	}

	public void setVoluntary(Voluntary voluntary) {
		this.voluntary = voluntary;
	}

	public Write getWrite() {
		return write;
	}

	public void setWrite(Write write) {
		this.write = write;
	}

	public List<Award> getAwardList() {
		return awardList;
	}

	public void setAwardList(List<Award> awardList) {
		this.awardList = awardList;
	}

	public List<Career> getCareerList() {
		return careerList;
	}

	public void setCareerList(List<Career> careerList) {
		this.careerList = careerList;
	}

	public List<Education> getEducationList() {
		return educationList;
	}

	public void setEducationList(List<Education> educationList) {
		this.educationList = educationList;
	}

	public List<Global> getGlobalList() {
		return globalList;
	}

	public void setGlobalList(List<Global> globalList) {
		this.globalList = globalList;
	}

	public List<Family> getFamilyList() {
		return familyList;
	}

	public void setFamilyList(List<Family> familyList) {
		this.familyList = familyList;
	}

	public List<LanguageAbility> getLanguageAbilityList() {
		return languageAbilityList;
	}

	public void setLanguageAbilityList(List<LanguageAbility> languageAbilityList) {
		this.languageAbilityList = languageAbilityList;
	}

	public List<LanguageExam> getLanguageExamList() {
		return languageExamList;
	}

	public void setLanguageExamList(List<LanguageExam> languageExamList) {
		this.languageExamList = languageExamList;
	}

	public List<License> getLicenseList() {
		return licenseList;
	}

	public void setLicenseList(List<License> licenseList) {
		this.licenseList = licenseList;
	}

	public List<Project> getProjectList() {
		return projectList;
	}

	public void setProjectList(List<Project> projectList) {
		this.projectList = projectList;
	}

	public List<Voluntary> getVoluntaryList() {
		return voluntaryList;
	}

	public void setVoluntaryList(List<Voluntary> voluntaryList) {
		this.voluntaryList = voluntaryList;
	}

	public List<Write> getWriteList() {
		return writeList;
	}

	public void setWriteList(List<Write> writeList) {
		this.writeList = writeList;
	}

}
