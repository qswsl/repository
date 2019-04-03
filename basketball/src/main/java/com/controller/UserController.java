package com.controller;

import com.bean.*;
import com.service.MainService;
import org.apache.commons.lang3.StringUtils;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.streaming.SXSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLEncoder;
import java.rmi.MarshalledObject;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by a on 2018/2/24.
 */

@Controller
@RequestMapping(value = "/user")
public class UserController {


    @Autowired
    private MainService mainService;


    @RequestMapping(value = "/index")
    public String  index(){

        return "main";
    }

    @RequestMapping(value = "/team")
    public String  queryRecord(HttpServletRequest request, ModelMap modelMap, String name){


        Page page =new Page();
        //下一页用的
        String pageNow= request.getParameter("pageNo");

        //总条数
        Integer count=mainService.getTeamCount();
        List<Team> list=new ArrayList<Team>();

        if(pageNow!=null){

            Integer pageNow1=Integer.valueOf(pageNow);
            page=new Page(count,pageNow1);
            list=mainService.pageAllTeam(page.getStartPos(),page.getPageSize(),name);

        }else{
            page=new Page(count,1);
            list=mainService.pageAllTeam(page.getStartPos(),page.getPageSize(),name);
        }
        modelMap.addAttribute("list",list);
        modelMap.addAttribute("page",page);
        modelMap.addAttribute("name",name);

        return "user/team";
    }

    @RequestMapping(value = "/deleteTeam")
    @ResponseBody
    public String  deleteTeam(String id){

        System.out.println("id"+id);
        String msg="success";
        try{
            mainService.deleteTeam(id);
        }catch(Exception e){
            e.printStackTrace();
            msg="false";
        }
        mainService.deleteTeam(id);

        return msg;
    }


    @RequestMapping(value = "/listTeam")
    @ResponseBody
    public List<Team> listTeam(){

        System.out.println("11");
       List<Team> list =mainService.listTeam();
      return list;
    }



    @RequestMapping(value = "/addTeam")
    public String  addTeam(){

        return "user/addTeam";
    }

    @RequestMapping(value = "/updateTeam")
    public String  updateTeam(String id,ModelMap modelMap){

        Team team= mainService.getTeamOne(id);
        modelMap.addAttribute("team",team);
        return "user/updateTeam";
    }

    @RequestMapping(value = "/updateTeamId")
    public void  updateTeamId(String name,String address,String remark,String id){
        mainService.updateTeam(name,address,remark,id);
    }

    @RequestMapping(value = "/addSaveTeam")
    public void  addTeam(String name,String address,String remark){
        mainService.addTeam(name,address,remark);
    }



    //球员
    @RequestMapping(value = "/player")
    public String  queryRecord(HttpServletRequest request, ModelMap modelMap, String name,String student_number){


        Page page =new Page();
        //下一页用的
        String pageNow= request.getParameter("pageNo");

        //总条数
        Integer count=mainService.getPlayerCount();
        List<Player> list=new ArrayList<Player>();

        if(pageNow!=null){

            Integer pageNow1=Integer.valueOf(pageNow);
            page=new Page(count,pageNow1);
            list=mainService.pageAllPlayer(page.getStartPos(),page.getPageSize(),name,student_number);

        }else{
            page=new Page(count,1);
            list=mainService.pageAllPlayer(page.getStartPos(),page.getPageSize(),name,student_number);
        }
        modelMap.addAttribute("list",list);
        modelMap.addAttribute("page",page);
        modelMap.addAttribute("name",name);
        modelMap.addAttribute("student_number",student_number);

        return "player/player";
    }
    @RequestMapping(value = "/addPlayer")
    public String  addPlayer(){

        return "player/addPlayer";
    }

    @RequestMapping(value = "/deletePlayer")
    public void  deletePlayer(String id){

        mainService.deletePlayer(id);

    }

    @RequestMapping(value = "/addSavePlayer")
    public void  addSavePlayer(String  name,
                              String  student_number ,
                              String sex,
                              String age,
                              String date_birth,
                              String be_long_team,
                              String uniform_number){

        try {
            mainService.addPlayer(name, student_number, sex, age, date_birth, be_long_team, uniform_number);
        }catch (Exception e){

            e.printStackTrace();
        }
    }
    @RequestMapping(value = "/updatePlayer")
    public String  updatePlayer(String id,ModelMap modelMap){

        Player player= mainService.getPlayerOne(id);
        modelMap.addAttribute("player",player);
        return "player/updatePlayer";
    }


    @RequestMapping(value = "/updatePlayerAdd")
    public void  updatePlayerAdd(String  name,
                               String  student_number ,
                               String sex,
                               String age,
                               String date_birth,
                               String be_long_team,
                               String uniform_number,String id){

        try {
            mainService.updatePlayer(name, student_number, sex, age, date_birth, be_long_team, uniform_number,id);
        }catch (Exception e){

            e.printStackTrace();
        }
    }





    //比赛
    @RequestMapping(value = "/game")
    public String  game(HttpServletRequest request, ModelMap modelMap, String home,String guest){

        Page page =new Page();
        //下一页用的
        String pageNow= request.getParameter("pageNo");

        //总条数
        Integer count=mainService.getGameCount();
        List<Game> list=new ArrayList<Game>();

        if(pageNow!=null){

            Integer pageNow1=Integer.valueOf(pageNow);
            page=new Page(count,pageNow1);
            list=mainService.pageAllGame(page.getStartPos(),page.getPageSize(),home,guest);

        }else{
            page=new Page(count,1);
            list=mainService.pageAllGame(page.getStartPos(),page.getPageSize(),home,guest);
        }
        modelMap.addAttribute("list",list);
        modelMap.addAttribute("page",page);
        modelMap.addAttribute("home",home);
        modelMap.addAttribute("guest",guest);

        return "game/game";
    }


    //技术统计
    @RequestMapping(value = "/count")
    public String  count(String id,ModelMap modelMap){

        //根据id查询比赛
       Game game=mainService.getOneGame(id);

        List<Count>  homeList=null;
        List<Count> guestList=null;
        List<Count> zhu=null;
        List<Count> lan=null;
        List<Count> score=null;
       if(game!=null){
           //主队
           homeList= mainService.findCountByTeam(game.getVersion(),game.getHome_name());
           //客队
           guestList= mainService.findCountByTeam(game.getVersion(),game.getGuest_name());

           zhu= mainService.MaxZhu(game.getVersion());
           lan= mainService.MaxLan(game.getVersion());
           score= mainService.MaxScore(game.getVersion());
       }

        modelMap.addAttribute("homeList",homeList);
        modelMap.addAttribute("guestList",guestList);

        modelMap.addAttribute("zhu",zhu);

        modelMap.addAttribute("lan",lan);

        modelMap.addAttribute("score",score);

        modelMap.addAttribute("be_team",game.getVersion());
        return "game/count";
    }

    @RequestMapping(value = "/deleteGame")
    public void  deleteGame(String id){

        mainService.deleteGame(id);

    }

    @RequestMapping(value = "/addGame")
    public String  addGame(){

        return "game/addGame";
    }

    @RequestMapping(value = "/addGameAdd")
    public void  addGameAdd(String home_name, String  home_score , String guest_name, String guest_score, String status){

        try {
            //添加比赛
            String time=String.valueOf(System.currentTimeMillis());
            mainService.addGameAdd(home_name, home_score , guest_name, guest_score, status,time);
            //添加比赛下面的球员
           List<Player> list=mainService.listPlayer(home_name,guest_name);
           if(list!=null||list.size()>0){
               for (Player player: list) {
                   mainService.addCount(player.getName(),"0","0","0","0","0","0","0","0",time,player.getBe_long_team());
               }
           }
        }catch (Exception e){

            e.printStackTrace();
        }
    }

    //修改球员信息


    @RequestMapping(value = "/updateOneCount")
    public String  updateOneCount(String id,ModelMap modelMap){

       Count count= mainService.findCountByOne(id);
       modelMap.addAttribute("count",count);

        return "count/updateCount";
    }


    @RequestMapping(value = "/getOneCountUpdate")
    @ResponseBody
    public void  getOneCountUpdate(String id,String  score ,
                                   String lan,
                                   String zhu,
                                   String san,
                                   String qiang,
                                   String gai,String shi,String fan){
        try{
            mainService.updateOneCount(id,score,lan,zhu,san,qiang,gai,shi,fan);
        }catch(Exception e){

        }

    }


    @RequestMapping(value = "/updateOneGame")
    public String  updateOneGame(String id,ModelMap modelMap){

        Game game= mainService.getOneGame(id);
        modelMap.addAttribute("game",game);

        return "game/updateGame";
    }

    @RequestMapping(value = "/updateGameOne")
    @ResponseBody
    public void  updateGameOne(String id,String home_score,String guest_score,String status){

        mainService.updateGameOne(id,home_score,guest_score,status);

    }



    //导出数据
    //时间范围数据
    @RequestMapping(value="/data")
    public void scopeData(HttpServletResponse response, HttpServletRequest request, String id){

        Game game=mainService.getOneGame(id);

        List<Count> awardRecordList = null;
        awardRecordList=mainService.data(game.getVersion());

        String fileName = "";
        final String userAgent = request.getHeader("USER-AGENT");
        List<Map<String, Object>> list = ExcelRecord(awardRecordList);
        String columnNames[] = {"姓名","得分","篮板","助攻","三分","抢断","盖帽","失误","犯规","球队"};//列名
        String keys[] = {"姓名","得分","篮板","助攻","三分","抢断","盖帽","失误","犯规","球队"};// map中的key
        ByteArrayOutputStream os = new ByteArrayOutputStream();
        try {
            createWorkBook(list, keys, columnNames).write(os);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        byte[] content = os.toByteArray();
        InputStream is = new ByteArrayInputStream(content);
        // 设置response参数，可以打开下载页面
        response.reset();
        response.setContentType("application/vnd.ms-excel;charset=utf-8");
        BufferedInputStream bis = null;
        BufferedOutputStream bos = null;
        try {
            if (StringUtils.contains(userAgent, "MSIE")) { // IE浏览器
                fileName = URLEncoder.encode("比赛信息表", "UTF8");
            } else if (StringUtils.contains(userAgent, "Mozilla")) { // Chrome,Firefox浏览器
                fileName = new String(("比赛信息表").getBytes("UTF-8"), "ISO8859-1");
            } else { // 其他浏览器
                fileName = URLEncoder.encode("比赛信息表", "UTF-8");
            }
            response.setHeader("Content-Disposition", "attachment;filename=" + fileName + ".xlsx");
            ServletOutputStream out = response.getOutputStream();
            bis = new BufferedInputStream(is);
            bos = new BufferedOutputStream(out);
            byte[] buff = new byte[2048];
            int bytesRead;
            while (-1 != (bytesRead = bis.read(buff, 0, buff.length))) {
                bos.write(buff, 0, bytesRead);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (bis != null)
                try {
                    bis.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            if (bos != null)
                try {
                    bos.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
        }

    }



    public static Workbook createWorkBook(List<Map<String, Object>> list, String keys[], String columnNames[]) {
        // 创建excel工作簿
        Workbook wb = new SXSSFWorkbook();
        // 创建第一个sheet（页），并命名
        Sheet sheet = wb.createSheet(list.get(0).get("sheetName").toString());
        // 手动设置列宽。第一个参数表示要为第几列设；，第二个参数表示列的宽度，n为列高的像素数。
        for(int i=0;i<keys.length;i++){
            sheet.setColumnWidth(i, (int) (35 * 120));
        }

        // 创建第一行
        Row row = sheet.createRow(0);

        // 创建两种单元格格式
        CellStyle cs = wb.createCellStyle();
        CellStyle cs2 = wb.createCellStyle();
        // 创建两种字体
        Font f = wb.createFont();
        Font f2 = wb.createFont();

        // 创建第一种字体样式（用于列名）
        f.setFontHeightInPoints((short) 10);
        f.setColor(IndexedColors.BLACK.getIndex());
        f.setBoldweight(Font.BOLDWEIGHT_BOLD);

        // 创建第二种字体样式（用于值）
        f2.setFontHeightInPoints((short) 10);
        f2.setColor(IndexedColors.BLACK.getIndex());

        // 设置第一种单元格的样式（用于列名）
        cs.setFont(f);
        cs.setBorderLeft(CellStyle.BORDER_THIN);
        cs.setBorderRight(CellStyle.BORDER_THIN);
        cs.setBorderTop(CellStyle.BORDER_THIN);
        cs.setBorderBottom(CellStyle.BORDER_THIN);
        cs.setAlignment(CellStyle.ALIGN_CENTER);

        // 设置第二种单元格的样式（用于值）
        cs2.setFont(f2);
        cs2.setBorderLeft(CellStyle.BORDER_THIN);
        cs2.setBorderRight(CellStyle.BORDER_THIN);
        cs2.setBorderTop(CellStyle.BORDER_THIN);
        cs2.setBorderBottom(CellStyle.BORDER_THIN);
        cs2.setAlignment(CellStyle.ALIGN_CENTER);

        //设置列名
        for(int i=0;i<columnNames.length;i++){
            Cell cell = row.createCell(i);
            cell.setCellValue(columnNames[i]);
            cell.setCellStyle(cs);
        }
        //设置每行每列的值
        for (int i = 1; i < list.size(); i++) {
            // Row 行,Cell 方格 , Row 和 Cell 都是从0开始计数的
            // 创建一行，在页sheet上
            Row row1 = sheet.createRow(i);
            // 在row行上创建一个方格
            for(int j=0;j<keys.length;j++){
                Cell cell = row1.createCell(j);
                cell.setCellValue(list.get(i).get(keys[j]) == null?" ": list.get(i).get(keys[j]).toString());
                cell.setCellStyle(cs2);
            }
        }
        return wb;
    }

    private List<Map<String, Object>> ExcelRecord(List<Count> clientReports) {
        List<Map<String, Object>> listmap = new ArrayList<Map<String, Object>>();
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("sheetName", "sheet1");
        listmap.add(map);
        Count clientReport = null;
        for (int j = 0; j < clientReports.size(); j++) {
            clientReport = clientReports.get(j);
            Map<String, Object> mapValue = new HashMap<String, Object>();
            mapValue.put("姓名", clientReport.getName());
            if(clientReport.getName()!=null)
                mapValue.put("姓名", clientReport.getName());
            else
                mapValue.put("姓名", "");
            if(clientReport.getScore()!=null)
                mapValue.put("得分", clientReport.getScore());
            else
                mapValue.put("得分", "");

            if(clientReport.getLan()!=null){
                mapValue.put("篮板", clientReport.getLan());
            }
            else
                mapValue.put("篮板", "");

            if(clientReport.getZhu()!=null)
                mapValue.put("助攻", clientReport.getZhu());
            else
                mapValue.put("助攻", "");


            if(clientReport.getSan()!=null)
                mapValue.put("三分", clientReport.getSan());
            else
                mapValue.put("三分", "");

            if(clientReport.getQiang()!=null) {
                mapValue.put("抢断", clientReport.getQiang());
            }
            else {
                mapValue.put("抢断", "");
            }


            if(clientReport.getGai()!=null) {
                mapValue.put("盖帽", clientReport.getGai());
            }
            else {
                mapValue.put("盖帽", "");
            }


            if(clientReport.getShi()!=null) {
                mapValue.put("失误", clientReport.getShi());
            }
            else {
                mapValue.put("失误", "");
            }


            if(clientReport.getFan()!=null) {
                mapValue.put("犯规", clientReport.getFan());
            }
            else {
                mapValue.put("犯规", "");
            }


            if(clientReport.getBe_team()!=null) {
                mapValue.put("球队", clientReport.getBe_team());
            }
            else {
                mapValue.put("球队", "");
            }



            listmap.add(mapValue);
        }

        return listmap;
    }



    @RequestMapping(value = "/shikuang")
    public String  shikuang(HttpServletRequest request, ModelMap modelMap, String home,String guest){

        Page page =new Page();
        //下一页用的
        String pageNow= request.getParameter("pageNo");

        //总条数
        Integer count=mainService.getGameCount();
        List<Game> list=new ArrayList<Game>();

        if(pageNow!=null){

            Integer pageNow1=Integer.valueOf(pageNow);
            page=new Page(count,pageNow1);
            list=mainService.pageAllGame(page.getStartPos(),page.getPageSize(),home,guest);

        }else{
            page=new Page(count,1);
            list=mainService.pageAllGame(page.getStartPos(),page.getPageSize(),home,guest);
        }
        modelMap.addAttribute("list",list);
        modelMap.addAttribute("page",page);
        modelMap.addAttribute("home",home);
        modelMap.addAttribute("guest",guest);

        return "game/shikuang";
    }
    //技术统计
    @RequestMapping(value = "/shikuangcount")
    public String  shikuangcount(String id,ModelMap modelMap){

        //根据id查询比赛
        Game game=mainService.getOneGame(id);

        List<Count>  homeList=null;
        List<Count> guestList=null;
        List<Count> zhu=null;
        List<Count> lan=null;
        List<Count> score=null;
        if(game!=null){
            //主队
            homeList= mainService.findCountByTeam(game.getVersion(),game.getHome_name());
            //客队
            guestList= mainService.findCountByTeam(game.getVersion(),game.getGuest_name());

            zhu= mainService.MaxZhu(game.getVersion());
            lan= mainService.MaxLan(game.getVersion());
            score= mainService.MaxScore(game.getVersion());
        }

        modelMap.addAttribute("homeList",homeList);
        modelMap.addAttribute("guestList",guestList);

        modelMap.addAttribute("zhu",zhu);

        modelMap.addAttribute("lan",lan);

        modelMap.addAttribute("score",score);

        modelMap.addAttribute("be_team",game.getVersion());
        return "game/shikuangcount";
    }



    //比赛
    @RequestMapping(value = "/xinxifabu")
    public String  xinxifabu(HttpServletRequest request, ModelMap modelMap, String home,String guest){

        Page page =new Page();
        //下一页用的
        String pageNow= request.getParameter("pageNo");

        //总条数
        Integer count=mainService.getGameCount();
        List<Game> list=new ArrayList<Game>();

        if(pageNow!=null){

            Integer pageNow1=Integer.valueOf(pageNow);
            page=new Page(count,pageNow1);
            list=mainService.pageAllGame(page.getStartPos(),page.getPageSize(),home,guest);

        }else{
            page=new Page(count,1);
            list=mainService.pageAllGame(page.getStartPos(),page.getPageSize(),home,guest);
        }
        modelMap.addAttribute("list",list);
        modelMap.addAttribute("page",page);
        modelMap.addAttribute("home",home);
        modelMap.addAttribute("guest",guest);

        return "game/xinxifabu";
    }



    //比赛
    @RequestMapping(value = "/geren")
    public String  geren(HttpServletRequest request, ModelMap modelMap, String home,String guest){

        Page page =new Page();
        //下一页用的
        String pageNow= request.getParameter("pageNo");

        //总条数
        Integer count=mainService.getGameCount();
        List<Game> list=new ArrayList<Game>();

        if(pageNow!=null){

            Integer pageNow1=Integer.valueOf(pageNow);
            page=new Page(count,pageNow1);
            list=mainService.pageAllGame(page.getStartPos(),page.getPageSize(),home,guest);

        }else{
            page=new Page(count,1);
            list=mainService.pageAllGame(page.getStartPos(),page.getPageSize(),home,guest);
        }
        modelMap.addAttribute("list",list);
        modelMap.addAttribute("page",page);
        modelMap.addAttribute("home",home);
        modelMap.addAttribute("guest",guest);

        return "game/geren";
    }
}
