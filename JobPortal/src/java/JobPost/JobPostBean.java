/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package JobPost;
import java.io.Serializable;
/**
 *
 * @author AMOL
 */
public class JobPostBean implements Serializable
{
    private String jobtitle;
    private String hremail;
    private String jobdescription;
    private String salary;
    private String industry;
    private String functionalarea;
    private String role;
    private String keySkills;
    private String candidateProfile;
    private String companyprofile;

   

    public String getJobdescription() {
        return jobdescription;
    }

    public void setJobdescription(String jobdescription) {
        this.jobdescription = jobdescription;
    }

    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary;
    }

    public String getIndustry() {
        return industry;
    }

    public void setIndustry(String industry) {
        this.industry = industry;
    }

    public String getFunctionalarea() {
        return functionalarea;
    }

    public void setFunctionalarea(String functionalarea) {
        this.functionalarea = functionalarea;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getKeySkills() {
        return keySkills;
    }

    public void setKeySkills(String keySkills) {
        this.keySkills = keySkills;
    }

    public String getCandidateProfile() {
        return candidateProfile;
    }

    public void setCandidateProfile(String candidateProfile) {
        this.candidateProfile = candidateProfile;
    }

    public String getCompanyprofile() {
        return companyprofile;
    }

    public void setCompanyprofile(String companyprofile) {
        this.companyprofile = companyprofile;
    }

    public String getJobtitle() {
        return jobtitle;
    }

    public void setJobtitle(String jobtitle) {
        this.jobtitle = jobtitle;
    }

   

    public String getHremail() {
        return hremail;
    }

    public void setHremail(String hremail) {
        this.hremail = hremail;
    }
    
}
