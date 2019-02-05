package co.springcore.RequiredAnnotationExample;

import org.springframework.beans.factory.annotation.Required;

public class Company {
	 
    private Integer cid;
    private String cname;
 
    public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	@Required
    public void setCid(Integer cid) {
        this.cid = cid;
    }
    public Integer getCid() {
        return cid;
    }
	@Override
	public String toString() {
		return "Company [cid=" + cid + ", cname=" + cname + "]";
	}
	
 
  
}
