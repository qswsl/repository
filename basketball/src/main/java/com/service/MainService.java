package com.service;


import com.bean.*;
import com.dao.MainDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


/**
 * Created by a on 2018/1/10.
 */
@Service
public class MainService {


    @Autowired(required = false)
    private MainDao mainDao;


    public Integer getTeamCount() {

        return mainDao.getTeamCount();

    }

    public void deleteTeam(String id) {

        mainDao.deleteTeam(Integer.valueOf(id));

    }


    //分页查询
    public List<Team> pageAllTeam(Integer pageStart, Integer pageSize, String name){
        return mainDao.pageAllTeam(pageStart,pageSize,name);
    }

    //分页查询
    public List<Team> listTeam(){
        return mainDao.listTeam();
    }


    public Team getTeamOne(String id){


       return mainDao.getTeamOne(Integer.valueOf(id));
    }

    public void updateTeam(String name,String address,String remark,String id){

        mainDao.updateTeam(name,address,remark,Integer.valueOf(id));

    }

    public void addTeam(String name,String address,String remark){

        mainDao.addTeam(name,address,remark);

    }






    //球员
    public Integer getPlayerCount() {

        return mainDao.getPlayerCount();

    }

    public List<Player> listPlayer(String home_name,String guest_name){
        return mainDao.listPlayer(home_name,guest_name);
    }

    //分页查询
    public List<Player> pageAllPlayer(Integer pageStart, Integer pageSize, String name, String student_number){
        return mainDao.pageAllPlayer(pageStart,pageSize,name,student_number);
    }

    public Player getPlayerOne(String id){

        return mainDao.getPlayerOne(Integer.valueOf(id));
    }



    public void addPlayer(String  name,
                          String  student_number ,
                          String sex,
                          String age,
                          String date_birth,
                          String be_long_team,
                          String uniform_number){

        mainDao.addPlayer(name,student_number,sex,Integer.valueOf(age),date_birth,be_long_team,uniform_number);

    }

    public void deletePlayer(String id) {

        mainDao.deletePlayer(Integer.valueOf(id));

    }

    public void updatePlayer(String  name,
                          String  student_number ,
                          String sex,
                          String age,
                          String date_birth,
                          String be_long_team,
                          String uniform_number,String id){

        mainDao.updatePlayer(name,student_number,sex,Integer.valueOf(age),date_birth,be_long_team,uniform_number,Integer.valueOf(id));

    }










    //比赛

    public Integer getGameCount() {

        return mainDao.getGameCount();

    }

    public Game getOneGame(String id) {

        return mainDao.getOneGame(Integer.valueOf(id));

    }
    //分页查询
    public List<Game> pageAllGame(Integer pageStart, Integer pageSize, String home, String guest){
        return mainDao.pageAllGame(pageStart,pageSize,home,guest);
    }


    public void deleteGame(String id) {

        mainDao.deleteGame(Integer.valueOf(id));

    }

    public void addGameAdd(String  home_name,
                           String  home_score ,
                           String guest_name,
                           String guest_score,
                           String status,String version){

        mainDao.addGameAdd(home_name,
                home_score ,
              guest_name,
               guest_score,
               status,version);

    }


    public void addCount(String  name,
                         String  score ,
                         String lan,
                         String zhu,
                         String san,
                         String qiang,
                         String gai,String shi,String fan,
                     String be_game, String be_team){

        mainDao.addCount(name,score,lan,zhu,san,qiang,gai,shi,fan,be_game,be_team);

    }

    //
    public List<Count> findCountByTeam(String be_game,String be_team){
        return mainDao.findCountByTeam(be_game,be_team);
    }

    public  Count findCountByOne(String id){
        return mainDao.findCountByOne(Integer.valueOf(id));
    }


    public  void  updateOneCount(String id,String  score ,
                                 String lan,
                                 String zhu,
                                 String san,
                                 String qiang,
                                 String gai,String shi,String fan
                                 ){


        mainDao.updateOneCount(id,score,lan,zhu,san,qiang,gai,shi,fan);

    }


    public List<Count> MaxLan(String be_game){
        return mainDao.MaxLan(be_game);
    }

    public List<Count> MaxScore(String be_game){
        return mainDao.MaxScore(be_game);
    }

    public List<Count> MaxZhu(String be_game){
        return mainDao.MaxZhu(be_game);
    }



    public void updateGameOne(String  id,
                         String  home_acore,String  guest_acore,
                         String status){

        mainDao.updateGameOne(id,home_acore,guest_acore,status);

    }


    public List<Count> data(String be_game){

      return   mainDao.data(be_game);

    }


    public void insertUser(String name,String pwd){

        mainDao.insertUser(name,pwd);

    }


    public User getUser(String name, String pwd){

      return  mainDao.getUser(name,pwd);

    }

    public User getNameUser(String name){

        return  mainDao.getNameUser(name);

    }

}
