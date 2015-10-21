package cn.edu.henu.rjxy.lms.model;
// Generated 2015-10-10 23:24:35 by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * Teacher generated by hbm2java
 */
public class Teacher  implements java.io.Serializable {


     private Integer teacherId;
     private int teacherSn;
     private String teacherName;
     private String teacherIdcard;
     private boolean teacherSex;
     private Date teacherBirthday;
     private String teacherTel;
     private String teacherQq;
     private String teacherEmail;
     private String teacherPwd;
     private Integer teacherPositionId;
     private int teacherCollegeId;
     private Integer teacherDepartId;
     private Date teacherEnrolling;
     private Long teacherRoleValue;

    public Teacher() {
    }

	
    public Teacher(int teacherSn, String teacherName, String teacherIdcard, boolean teacherSex, String teacherPwd, int teacherCollegeId, Date teacherEnrolling) {
        this.teacherSn = teacherSn;
        this.teacherName = teacherName;
        this.teacherIdcard = teacherIdcard;
        this.teacherSex = teacherSex;
        this.teacherPwd = teacherPwd;
        this.teacherCollegeId = teacherCollegeId;
        this.teacherEnrolling = teacherEnrolling;
    }
    public Teacher(int teacherSn, String teacherName, String teacherIdcard, boolean teacherSex, Date teacherBirthday, String teacherTel, String teacherQq, String teacherEmail, String teacherPwd, Integer teacherPositionId, int teacherCollegeId, Integer teacherDepartId, Date teacherEnrolling, Long teacherRoleValue) {
       this.teacherSn = teacherSn;
       this.teacherName = teacherName;
       this.teacherIdcard = teacherIdcard;
       this.teacherSex = teacherSex;
       this.teacherBirthday = teacherBirthday;
       this.teacherTel = teacherTel;
       this.teacherQq = teacherQq;
       this.teacherEmail = teacherEmail;
       this.teacherPwd = teacherPwd;
       this.teacherPositionId = teacherPositionId;
       this.teacherCollegeId = teacherCollegeId;
       this.teacherDepartId = teacherDepartId;
       this.teacherEnrolling = teacherEnrolling;
       this.teacherRoleValue = teacherRoleValue;
    }
   
    public Integer getTeacherId() {
        return this.teacherId;
    }
    
    public void setTeacherId(Integer teacherId) {
        this.teacherId = teacherId;
    }
    public int getTeacherSn() {
        return this.teacherSn;
    }
    
    public void setTeacherSn(int teacherSn) {
        this.teacherSn = teacherSn;
    }
    public String getTeacherName() {
        return this.teacherName;
    }
    
    public void setTeacherName(String teacherName) {
        this.teacherName = teacherName;
    }
    public String getTeacherIdcard() {
        return this.teacherIdcard;
    }
    
    public void setTeacherIdcard(String teacherIdcard) {
        this.teacherIdcard = teacherIdcard;
    }
    public boolean isTeacherSex() {
        return this.teacherSex;
    }
    
    public void setTeacherSex(boolean teacherSex) {
        this.teacherSex = teacherSex;
    }
    public Date getTeacherBirthday() {
        return this.teacherBirthday;
    }
    
    public void setTeacherBirthday(Date teacherBirthday) {
        this.teacherBirthday = teacherBirthday;
    }
    public String getTeacherTel() {
        return this.teacherTel;
    }
    
    public void setTeacherTel(String teacherTel) {
        this.teacherTel = teacherTel;
    }
    public String getTeacherQq() {
        return this.teacherQq;
    }
    
    public void setTeacherQq(String teacherQq) {
        this.teacherQq = teacherQq;
    }
    public String getTeacherEmail() {
        return this.teacherEmail;
    }
    
    public void setTeacherEmail(String teacherEmail) {
        this.teacherEmail = teacherEmail;
    }
    public String getTeacherPwd() {
        return this.teacherPwd;
    }
    
    public void setTeacherPwd(String teacherPwd) {
        this.teacherPwd = teacherPwd;
    }
    public Integer getTeacherPositionId() {
        return this.teacherPositionId;
    }
    
    public void setTeacherPositionId(Integer teacherPositionId) {
        this.teacherPositionId = teacherPositionId;
    }
    public int getTeacherCollegeId() {
        return this.teacherCollegeId;
    }
    
    public void setTeacherCollegeId(int teacherCollegeId) {
        this.teacherCollegeId = teacherCollegeId;
    }
    public Integer getTeacherDepartId() {
        return this.teacherDepartId;
    }
    
    public void setTeacherDepartId(Integer teacherDepartId) {
        this.teacherDepartId = teacherDepartId;
    }
    public Date getTeacherEnrolling() {
        return this.teacherEnrolling;
    }
    
    public void setTeacherEnrolling(Date teacherEnrolling) {
        this.teacherEnrolling = teacherEnrolling;
    }
    public Long getTeacherRoleValue() {
        return this.teacherRoleValue;
    }
    
    public void setTeacherRoleValue(Long teacherRoleValue) {
        this.teacherRoleValue = teacherRoleValue;
    }




}


