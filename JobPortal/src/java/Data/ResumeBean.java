/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Data;
import java.io.Serializable;
/**
 *
 * @author AMOL
 */
public class ResumeBean implements Serializable
{
   private String name;
   private String resumeheadline;
   private String current_location;
   private String experience;
   private String preferred_location;
   private String mobile;
  // private String email;
   private String permenantaddress;
   private String city;
   private String dob;
   private String gender;
   private String pincode;
   private String keyskills;
   private String summary;
   private String languagesknown;
 
   

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getResumeheadline() {
        return resumeheadline;
    }

    public void setResumeheadline(String resumeheadline) {
        this.resumeheadline = resumeheadline;
    }

    public String getCurrent_location() {
        return current_location;
    }

    public void setCurrent_location(String current_location) {
        this.current_location = current_location;
    }

    public String getExperience() {
        return experience;
    }

    public void setExperience(String experience) {
        this.experience = experience;
    }

    public String getPreferred_location() {
        return preferred_location;
    }

    public void setPreferred_location(String preferred_location) {
        this.preferred_location = preferred_location;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    /*public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }*/

    public String getPermenantaddress() {
        return permenantaddress;
    }

    public void setPermenantaddress(String permenantaddress) {
        this.permenantaddress = permenantaddress;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPincode() {
        return pincode;
    }

    public void setPincode(String pincode) {
        this.pincode = pincode;
    }

    public String getKeyskills() {
        return keyskills;
    }

    public void setKeyskills(String keyskills) {
        this.keyskills = keyskills;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public String getLanguagesknown() {
        return languagesknown;
    }

    public void setLanguagesknown(String languagesknown) {
        this.languagesknown = languagesknown;
    }

    

}
