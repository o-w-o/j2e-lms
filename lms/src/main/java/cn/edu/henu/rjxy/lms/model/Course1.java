package cn.edu.henu.rjxy.lms.model;
// Generated 2015-10-23 19:30:46 by Hibernate Tools 4.3.1

import java.util.Set;




/**
 * Student generated by hbm2java
 */
public class Course1  implements java.io.Serializable {


     private Integer courseId;
    private String courseNumber;
    private String courseName;
    private String courseEname;
    private String courseType;
    private Integer faceTeacherHourse;
    private Integer testTeacherHourse;
    private Integer courseCredit;


    public Course1() {
    }

    public void copy(Course course){
        this.setCourseId(course.getCourseId());
        this.setCourseNumber(course.getCourseNumber());
        this.setCourseName(course.getCourseName());
        this.setCourseEname(course.getCourseEname());
        this.setCourseType(course.getCourseType());
        this.setFaceTeacherHourse(course.getFaceTeacherHourse());
        this.setTestTeacherHourse(course.getTestTeacherHourse());
        this.setCourseCredit(course.getCourseCredit());
        
    }
    
    public Course1(String courseName) {
        this.courseName = courseName;
    }
    
    
    public Course1(String courseNumber, String courseName, String courseEname, String courseType, Integer faceTeacherHourse, Integer testTeacherHourse, Integer courseCredit) {
        this.courseNumber = courseNumber;
        this.courseName = courseName;
        this.courseEname = courseEname;
        this.courseType = courseType;
        this.faceTeacherHourse = faceTeacherHourse;
        this.testTeacherHourse = testTeacherHourse;
        this.courseCredit = courseCredit;

    }

    
    
    /**
     * @return the courseId
     */
    public Integer getCourseId() {
        return courseId;
    }

    /**
     * @param courseId the courseId to set
     */
    public void setCourseId(Integer courseId) {
        this.courseId = courseId;
    }



    /**
     * @return the courseName
     */
    public String getCourseName() {
        return courseName;
    }

    /**
     * @param courseName the courseName to set
     */
    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    /**
     * @return the courseEname
     */
    public String getCourseEname() {
        return courseEname;
    }

    /**
     * @param courseEname the courseEname to set
     */
    public void setCourseEname(String courseEname) {
        this.courseEname = courseEname;
    }

    /**
     * @return the courseType
     */
    public String getCourseType() {
        return courseType;
    }

    /**
     * @param courseType the courseType to set
     */
    public void setCourseType(String courseType) {
        this.courseType = courseType;
    }

    /**
     * @return the faceTeacherHourse
     */
    public Integer getFaceTeacherHourse() {
        return faceTeacherHourse;
    }

    /**
     * @param faceTeacherHourse the faceTeacherHourse to set
     */
    public void setFaceTeacherHourse(Integer faceTeacherHourse) {
        this.faceTeacherHourse = faceTeacherHourse;
    }

    /**
     * @return the testTeacherHourse
     */
    public Integer getTestTeacherHourse() {
        return testTeacherHourse;
    }

    /**
     * @param testTeacherHourse the testTeacherHourse to set
     */
    public void setTestTeacherHourse(Integer testTeacherHourse) {
        this.testTeacherHourse = testTeacherHourse;
    }

    /**
     * @return the courseCredit
     */
    public Integer getCourseCredit() {
        return courseCredit;
    }

    /**
     * @param courseCredit the courseCredit to set
     */
    public void setCourseCredit(Integer courseCredit) {
        this.courseCredit = courseCredit;
    }



    /**
     * @return the courseNumber
     */
    public String getCourseNumber() {
        return courseNumber;
    }

    /**
     * @param courseNumber the courseNumber to set
     */
    public void setCourseNumber(String courseNumber) {
        this.courseNumber = courseNumber;
    }



    


}


