package com.dao;

import com.bean.*;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by a on 2018/1/10.
 */

public interface MainDao {



   //球队分页查询
   List<Team> listTeam();
   //球队总个数
   Integer getTeamCount();

   //球队分页查询
   List<Team> pageAllTeam(@Param("pageStart") Integer pageStart, @Param("pageSize") Integer pageSize, @Param("name") String name);

   void deleteTeam(@Param("id") Integer id);

   Team  getTeamOne(@Param("id") Integer id);

   void updateTeam(@Param("name") String  name,@Param("address") String  address ,@Param("remark") String remark,@Param("id") Integer id);

   void addTeam(@Param("name") String  name,@Param("address") String  address ,@Param("remark") String remark);




   //球员总个数
   Integer getPlayerCount();
   //球员分页查询
   List<Player> pageAllPlayer(@Param("pageStart") Integer pageStart, @Param("pageSize") Integer pageSize, @Param("name") String name,@Param("student_number") String student_number);

   void deletePlayer(@Param("id") Integer id);

   Player getPlayerOne(@Param("id") Integer id);


   void addPlayer(@Param("name") String  name,
                  @Param("student_number") String  student_number ,
                  @Param("sex") String sex,
                  @Param("age") Integer age,
                  @Param("date_birth") String date_birth,
                  @Param("be_long_team") String be_long_team,
                  @Param("uniform_number") String uniform_number

   );

   void updatePlayer(@Param("name") String  name,
                  @Param("student_number") String  student_number ,
                  @Param("sex") String sex,
                  @Param("age") Integer age,
                  @Param("date_birth") String date_birth,
                  @Param("be_long_team") String be_long_team,
                  @Param("uniform_number") String uniform_number,@Param("id") Integer id

   );

   List<Player> listPlayer( @Param("home_name") String home_name,@Param("guest_name") String guest_name);




   //比赛
   //球员总个数
   Integer getGameCount();
   //球员分页查询
   List<Game> pageAllGame(@Param("pageStart") Integer pageStart, @Param("pageSize") Integer pageSize, @Param("home_name") String home, @Param("guest_name") String guest);

   void deleteGame(@Param("id") Integer id);

   void addGameAdd(@Param("home_name") String  home_name,
                  @Param("home_score") String  home_score ,
                  @Param("guest_name") String guest_name,
                  @Param("guest_score") String guest_score,
                  @Param("status") String status, @Param("version") String version
   );

   Game getOneGame(@Param("id") Integer id);

   void addCount(@Param("name") String  name,
                   @Param("score") String  score ,
                   @Param("lan") String lan,
                   @Param("zhu") String zhu,
                   @Param("san") String san,
                 @Param("qiang") String qiang,
                 @Param("gai") String gai,@Param("shi") String shi,@Param("fan") String fan,
                 @Param("be_game") String be_game,@Param("be_team") String be_team


   );

   List<Count> findCountByTeam( @Param("be_game") String be_game,@Param("be_team") String be_team);

   Count findCountByOne(@Param("id") Integer id);


   void  updateOneCount(@Param("id") String  id,@Param("score") String  score,
                        @Param("lan") String lan,
                        @Param("zhu") String zhu,
                        @Param("san") String san,
                        @Param("qiang") String qiang,
                        @Param("gai") String gai,@Param("shi") String shi,@Param("fan") String fan
                        );

   List<Count> MaxScore(@Param("be_game") String be_game);

   List<Count> MaxLan(@Param("be_game") String be_game);

   List<Count> MaxZhu(@Param("be_game") String be_game);


   void  updateGameOne(@Param("id") String id,@Param("home_score") String home_score,@Param("guest_score") String guest_score,@Param("status") String status);

   List<Count> data(@Param("be_game") String be_game);




   void insertUser(@Param("name") String name,@Param("pwd") String pwd);

   User getUser(@Param("name") String name,@Param("pwd") String pwd);
   User getNameUser(@Param("name") String name);
}
