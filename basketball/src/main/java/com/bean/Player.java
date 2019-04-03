package com.bean;

/**
 * Created by a on 2018/2/27.
 *
 *  球员表
 */
public class Player {

    private Integer id;

    private String name;

    private String student_number;

    private String sex;

    private Integer age;

    private String date_birth;

    private String be_long_team;


    private String  uniform_number;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getStudent_number() {
        return student_number;
    }

    public void setStudent_number(String student_number) {
        this.student_number = student_number;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getDate_birth() {
        return date_birth;
    }

    public void setDate_birth(String date_birth) {
        this.date_birth = date_birth;
    }

    public String getBe_long_team() {
        return be_long_team;
    }

    public void setBe_long_team(String be_long_team) {
        this.be_long_team = be_long_team;
    }

    public String getUniform_number() {
        return uniform_number;
    }

    public void setUniform_number(String uniform_number) {
        this.uniform_number = uniform_number;
    }


    @Override
    public String toString() {
        return "Player{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", student_number='" + student_number + '\'' +
                ", sex='" + sex + '\'' +
                ", age=" + age +
                ", date_birth='" + date_birth + '\'' +
                ", be_long_team='" + be_long_team + '\'' +
                ", uniform_number='" + uniform_number + '\'' +
                '}';
    }
}
