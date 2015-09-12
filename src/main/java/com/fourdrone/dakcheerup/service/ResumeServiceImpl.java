package com.fourdrone.dakcheerup.service;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fourdrone.dakcheerup.domain.Resume;
import com.fourdrone.dakcheerup.domain.resume.*;
import com.fourdrone.dakcheerup.mapper.AccountMapper;
import com.fourdrone.dakcheerup.mapper.ResumeMapper;

@Repository
public class ResumeServiceImpl implements ResumeService {

    @Autowired
    private SqlSession sqlSession;
    
	/* * * * * * * * * * * * * * * * * * * * * * * * * * *
	 *                                                   *
	 *               GET RESUME                          * 
	 *                                                   *
	 * * * * * * * * * * * * * * * * * * * * * * * * * * */
    
	@Override
	public ResumeConfig getResumeConfig(String memberId) {
		 ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
	     return resumeMapper.getResumeConfig(memberId);
	}

	@Override
	public Resume getResume(String memberId) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
	    return resumeMapper.getResume(memberId);
	}

	@Override
	public Profile getProfile(String memberId) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
	    return resumeMapper.getProfile(memberId);
	}

	@Override
	public Brother getBrother(String memberId) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
	    return resumeMapper.getBrother(memberId);
	}

	@Override
	public Family getFamily(int familyNo) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
	    return resumeMapper.getFamily(familyNo);
	}

	@Override
	public ArrayList<Family> getFamilyList(String memberId) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
		ArrayList<Family> result = resumeMapper.getFamilyList(memberId);
	    return result;
	}

	@Override
	public Military getMilitary(String memberId) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
	    return resumeMapper.getMilitary(memberId);
	}

	@Override
	public Academic getAcademic(String memberId) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
	    return resumeMapper.getAcademic(memberId);
	}

	@Override
	public AcademicHigh getAcademicHigh(String memberId) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
	    return resumeMapper.getAcademicHigh(memberId);
	}

	@Override
	public AcademicUniv getAcademicUniv(int academicUnivNo) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
	    return resumeMapper.getAcademicUniv(academicUnivNo);
	}

	@Override
	public ArrayList<AcademicUniv> getAcademicUnivList(String memberId) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
		ArrayList<AcademicUniv> result = resumeMapper.getAcademicUnivList(memberId);
	    return result;
	}

	@Override
	public Award getAward(int awardNo) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
	    return resumeMapper.getAward(awardNo);
	}

	@Override
	public ArrayList<Award> getAwardList(String memberId) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
		ArrayList<Award> result = resumeMapper.getAwardList(memberId);
	    return result;
	}

	@Override
	public Career getCareer(int careerNo) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
	    return resumeMapper.getCareer(careerNo);
	}

	@Override
	public ArrayList<Career> getCareerList(String memberId) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
		ArrayList<Career> result = resumeMapper.getCareerList(memberId);
	    return result;
	}

	@Override
	public Education getEducation(int educationNo) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
	    return resumeMapper.getEducation(educationNo);
	}

	@Override
	public ArrayList<Education> getEducationList(String memberId) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
		ArrayList<Education> result = resumeMapper.getEducationList(memberId);
	    return result;
	}

	@Override
	public Global getGlobal(int globalNo) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
	    return resumeMapper.getGlobal(globalNo);
	}

	@Override
	public ArrayList<Global> getGlobalList(String memberId) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
		ArrayList<Global> result = resumeMapper.getGlobalList(memberId);
	    return result;
	}

	@Override
	public LanguageAbility getLanguageAbility(int langAbilityNo) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
	    return resumeMapper.getLanguageAbility(langAbilityNo);
	}

	@Override
	public ArrayList<LanguageAbility> getLanguageAbilityList(String memberId) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
		ArrayList<LanguageAbility> result = resumeMapper.getLanguageAbilityList(memberId);
	    return result;
	}

	@Override
	public LanguageExam getLanguageExam(int langExamNo) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
	    return resumeMapper.getLanguageExam(langExamNo);
	}

	@Override
	public ArrayList<LanguageExam> getLanguageExamList(String memberId) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
		ArrayList<LanguageExam> result = resumeMapper.getLanguageExamList(memberId);
	    return result;
	}

	@Override
	public License getLicense(int licenseNo) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
	    return resumeMapper.getLicense(licenseNo);
	}

	@Override
	public ArrayList<License> getLicenseList(String memberId) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
		ArrayList<License> result = resumeMapper.getLicenseList(memberId);
	    return result;
	}

	@Override
	public OA getOA(String memberId) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
	    return resumeMapper.getOA(memberId);
	}

	@Override
	public Project getProject(int projectNo) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
	    return resumeMapper.getProject(projectNo);
	}

	@Override
	public ArrayList<Project> getProjectList(String memberId) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
		ArrayList<Project> result = resumeMapper.getProjectList(memberId);
	    return result;
	}

	@Override
	public Strength getStrength(String memberId) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
	    return resumeMapper.getStrength(memberId);
	}

	@Override
	public Swot getSwot(String memberId) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
	    return resumeMapper.getSwot(memberId);
	}

	@Override
	public Voluntary getVoluntary(int voluntaryNo) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
	    return resumeMapper.getVoluntary(voluntaryNo);
	}

	@Override
	public ArrayList<Voluntary> getVoluntaryList(String memberId) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
		ArrayList<Voluntary> result = resumeMapper.getVoluntaryList(memberId);
	    return result;
	}

	@Override
	public Write getWrite(int writeNo) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
	    return resumeMapper.getWrite(writeNo);
	}

	@Override
	public ArrayList<Write> getWriteList(String memberId) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
		ArrayList<Write> result = resumeMapper.getWriteList(memberId);
	    return result;
	}

	
	/* * * * * * * * * * * * * * * * * * * * * * * * * * *
	 *                                                   *
	 *               ADD RESUME                          * 
	 *                                                   *
	 * * * * * * * * * * * * * * * * * * * * * * * * * * */
	@Override
	public void addResumeConfig(ResumeConfig resumeConfig) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
		resumeMapper.addResumeConfig(resumeConfig);
		
	}

	@Override
	public void addResume(Resume resume) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
		resumeMapper.addResume(resume);
		
	}

	@Override
	public void addProfile(Profile profile) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
		resumeMapper.addProfile(profile);
		
	}

	@Override
	public void addBrother(Brother brother) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
		resumeMapper.addBrother(brother);
	}

	@Override
	public void addFamily(Family family) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
		resumeMapper.addFamily(family);		
	}

	@Override
	public void addMilitary(Military military) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
		resumeMapper.addMilitary(military);		
	}

	@Override
	public void addAcademic(Academic academic) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
		resumeMapper.addAcademic(academic);		
	}

	@Override
	public void addAcademicHigh(AcademicHigh academicHigh) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
		resumeMapper.addAcademicHigh(academicHigh);		
	}

	@Override
	public void addAcademicUniv(AcademicUniv academicUniv) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
		resumeMapper.addAcademicUniv(academicUniv);		
	}

	@Override
	public void addAward(Award award) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
		resumeMapper.addAward(award);		
	}

	@Override
	public void addCareer(Career career) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
		resumeMapper.addCareer(career);		
	}

	@Override
	public void addEducation(Education education) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
		resumeMapper.addEducation(education);		
	}

	@Override
	public void addGlobal(Global global) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
		resumeMapper.addGlobal(global);		
	}

	@Override
	public void addLanguageAbility(LanguageAbility languageAbility) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
		resumeMapper.addLanguageAbility(languageAbility);		
	}

	@Override
	public void addLanguageExam(LanguageExam languageExam) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
		resumeMapper.addLanguageExam(languageExam);		
	}

	@Override
	public void addLicense(License license) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
		resumeMapper.addLicense(license);		
	}

	@Override
	public void addOA(OA oa) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
		resumeMapper.addOA(oa);		
	}

	@Override
	public void addProject(Project project) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
		resumeMapper.addProject(project);		
	}

	@Override
	public void addStrength(Strength strength) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
		resumeMapper.addStrength(strength);		
	}

	@Override
	public void addSwot(Swot swot) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
		resumeMapper.addSwot(swot);		
	}

	@Override
	public void addVoluntary(Voluntary voluntary) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
		resumeMapper.addVoluntary(voluntary);		
	}
	
	@Override
	public void addWrite(Write write) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);
		resumeMapper.addWrite(write);			
	}


	
	/* * * * * * * * * * * * * * * * * * * * * * * * * * *
	 *                                                   *
	 *               MOD RESUME                          * 
	 *                                                   *
	 * * * * * * * * * * * * * * * * * * * * * * * * * * */

	@Override
	public void modResumeConfig(ResumeConfig resumeConfig) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);	
		resumeMapper.modResumeConfig(resumeConfig);	
	}

	@Override
	public void modResume(Resume resume) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);	
		resumeMapper.modResume(resume);			
	}

	@Override
	public void modProfile(Profile profile) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);	
		resumeMapper.modProfile(profile);			
	}

	@Override
	public void modBrother(Brother brother) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);	
		resumeMapper.modBrother(brother);			
	}

	@Override
	public void modFamily(Family family) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);	
		resumeMapper.modFamily(family);			
	}

	@Override
	public void modMilitary(Military military) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);	
		resumeMapper.modMilitary(military);			
	}

	@Override
	public void modAcademic(Academic academic) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);	
		resumeMapper.modAcademic(academic);			
	}

	@Override
	public void modAcademicHigh(AcademicHigh academicHigh) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);	
		resumeMapper.modAcademicHigh(academicHigh);			
	}

	@Override
	public void modAcademicUniv(AcademicUniv academicUniv) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);	
		resumeMapper.modAcademicUniv(academicUniv);			
	}

	@Override
	public void modAward(Award award) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);	
		resumeMapper.modAward(award);			
	}

	@Override
	public void modCareer(Career career) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);	
		resumeMapper.modCareer(career);			
	}

	@Override
	public void modEducation(Education education) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);	
		resumeMapper.modEducation(education);			
	}

	@Override
	public void modGlobal(Global global) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);	
		resumeMapper.modGlobal(global);			
	}

	@Override
	public void modLanguageAbility(LanguageAbility languageAbility) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);	
		resumeMapper.modLanguageAbility(languageAbility);			
	}

	@Override
	public void modLanguageExam(LanguageExam languageExam) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);	
		resumeMapper.modLanguageExam(languageExam);			
	}

	@Override
	public void modLicense(License license) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);	
		resumeMapper.modLicense(license);			
	}

	@Override
	public void modOA(OA oa) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);	
		resumeMapper.modOA(oa);			
	}

	@Override
	public void modProject(Project project) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);	
		resumeMapper.modProject(project);			
	}

	@Override
	public void modStrength(Strength strength) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);	
		resumeMapper.modStrength(strength);			
	}

	@Override
	public void modSwot(Swot swot) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);	
		resumeMapper.modSwot(swot);			
	}

	@Override
	public void modVoluntary(Voluntary voluntary) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);	
		resumeMapper.modVoluntary(voluntary);			
	}

	@Override
	public void modWrite(Write write) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);	
		resumeMapper.modWrite(write);			
	}


	/* * * * * * * * * * * * * * * * * * * * * * * * * * *
	 *                                                   *
	 *               DEL RESUME                          * 
	 *                                                   *
	 * * * * * * * * * * * * * * * * * * * * * * * * * * */
	@Override
	public void delResumeConfig(String memberId) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);	
		resumeMapper.delResumeConfig(memberId);		
	}

	@Override
	public void delResume(String memberId) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);	
		resumeMapper.delResume(memberId);			
	}

	@Override
	public void delProfile(String memberId) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);	
		resumeMapper.delProfile(memberId);			
	}

	@Override
	public void delBrother(String memberId) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);	
		resumeMapper.delBrother(memberId);			
	}

	@Override
	public void delFamily(int familyNo) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);	
		resumeMapper.delFamily(familyNo);			
	}

	@Override
	public void delMilitary(String memberId) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);	
		resumeMapper.delMilitary(memberId);			
	}

	@Override
	public void delAcademic(String memberId) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);	
		resumeMapper.delResumeConfig(memberId);			
	}

	@Override
	public void delAcademicHigh(String memberId) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);	
		resumeMapper.delAcademicHigh(memberId);			
	}

	@Override
	public void delAcademicUniv(int academicUnivNo) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);	
		resumeMapper.delAcademicUniv(academicUnivNo);			
	}

	@Override
	public void delAward(int awardNo) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);	
		resumeMapper.delAward(awardNo);			
	}

	@Override
	public void delCareer(int careerNo) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);	
		resumeMapper.delCareer(careerNo);	
		
	}

	@Override
	public void delEducation(int educationNo) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);	
		resumeMapper.delEducation(educationNo);			
	}

	@Override
	public void delGlobal(int globalNo) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);	
		resumeMapper.delGlobal(globalNo);			
	}

	@Override
	public void delLanguageAbility(int langAbilityNo) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);	
		resumeMapper.delLanguageAbility(langAbilityNo);			
	}

	@Override
	public void delLanguageExam(int langExamNo) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);	
		resumeMapper.delLanguageExam(langExamNo);			
	}

	@Override
	public void delLicense(int licenseNo) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);	
		resumeMapper.delLicense(licenseNo);	
		
	}

	@Override
	public void delOA(String memberId) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);	
		resumeMapper.delOA(memberId);			
	}

	@Override
	public void delProject(int projectNo) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);	
		resumeMapper.delProject(projectNo);			
	}

	@Override
	public void delStrength(String memberId) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);	
		resumeMapper.delStrength(memberId);			
	}

	@Override
	public void delSwot(String memberId) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);	
		resumeMapper.delSwot(memberId);			
	}

	@Override
	public void delVoluntary(int voluntaryNo) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);	
		resumeMapper.delVoluntary(voluntaryNo);			
	}

	@Override
	public void delWrite(int writeNo) {
		ResumeMapper resumeMapper = sqlSession.getMapper(ResumeMapper.class);	
		resumeMapper.delWrite(writeNo);			
	}




    

}
