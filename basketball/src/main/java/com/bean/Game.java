package com.bean;

/**
 * Created by a on 2018/2/27.
 */
public class Game {

    private Integer id;
    private String  home_name;
    private String  home_score;
    private String  guest_name;
    private String  guest_score;
    private String  status;

    private String version;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }


    public String getHome_score() {
        return home_score;
    }

    public void setHome_score(String home_score) {
        this.home_score = home_score;
    }


    public String getGuest_score() {
        return guest_score;
    }

    public void setGuest_score(String guest_score) {
        this.guest_score = guest_score;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getHome_name() {
        return home_name;
    }

    public void setHome_name(String home_name) {
        this.home_name = home_name;
    }

    public String getGuest_name() {
        return guest_name;
    }

    public void setGuest_name(String guest_name) {
        this.guest_name = guest_name;
    }

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }
}
