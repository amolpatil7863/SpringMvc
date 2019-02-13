/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package HrRegister;

import java.io.Serializable;

/**
 *
 * @author AMOL
 */
public class HrData implements Serializable
{
    private String llpname;
    private String llpin;
    private String hrname;
    private String hremail;
    private String hr_password;

    public String getLlpname() {
        return llpname;
    }

    public void setLlpname(String llpname) {
        this.llpname = llpname;
    }

    public String getLlpin() {
        return llpin;
    }

    public void setLlpin(String llpin) {
        this.llpin = llpin;
    }

    public String getHrname() {
        return hrname;
    }

    public void setHrname(String hrname) {
        this.hrname = hrname;
    }

    public String getHremail() {
        return hremail;
    }

    public void setHremail(String hremail) {
        this.hremail = hremail;
    }

    public String getHr_password() {
        return hr_password;
    }

    public void setHr_password(String hr_password) {
        this.hr_password = hr_password;
    }
    
}

