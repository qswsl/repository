package com.bean;

/**
 * Created by a on 2018/2/27.
 */
public class Count {

    private Integer id;
    private String name;
    private String score;
    private String lan;
    private String zhu;
    private String san;
    private String qiang;
    private String gai;
    private String shi;
    private String fan;
    private String be_game;
    private String be_team;


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

    public String getScore() {
        return score;
    }

    public void setScore(String score) {
        this.score = score;
    }

    public String getLan() {
        return lan;
    }

    public void setLan(String lan) {
        this.lan = lan;
    }

    public String getZhu() {
        return zhu;
    }

    public void setZhu(String zhu) {
        this.zhu = zhu;
    }

    public String getSan() {
        return san;
    }

    public void setSan(String san) {
        this.san = san;
    }

    public String getQiang() {
        return qiang;
    }

    public void setQiang(String qiang) {
        this.qiang = qiang;
    }

    public String getGai() {
        return gai;
    }

    public void setGai(String gai) {
        this.gai = gai;
    }

    public String getShi() {
        return shi;
    }

    public void setShi(String shi) {
        this.shi = shi;
    }

    public String getFan() {
        return fan;
    }

    public void setFan(String fan) {
        this.fan = fan;
    }

    public String getBe_game() {
        return be_game;
    }

    public void setBe_game(String be_game) {
        this.be_game = be_game;
    }

    public String getBe_team() {
        return be_team;
    }

    public void setBe_team(String be_team) {
        this.be_team = be_team;
    }

    @Override
    public String toString() {
        return "Count{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", score='" + score + '\'' +
                ", lan='" + lan + '\'' +
                ", zhu='" + zhu + '\'' +
                ", san='" + san + '\'' +
                ", qiang='" + qiang + '\'' +
                ", gai='" + gai + '\'' +
                ", shi='" + shi + '\'' +
                ", fan='" + fan + '\'' +
                ", be_game='" + be_game + '\'' +
                ", be_team='" + be_team + '\'' +
                '}';
    }
}
