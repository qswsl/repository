var timeout = false; //为下面定时器设置的全局变量
    var InterValObj; //timer变量，控制时间
    var count = 60; //间隔函数，1秒执行
    var curCount; //当前剩余秒数
    /*function sendAgainFromRecord() {
        curCount = count;
        //设置button效果，开始计时

        $(".code_pic").attr("disabled", "true");
        $(".code_pic").addClass("btn_disabled");
        $(".code_pic").removeClass("btn_allow");
        $(".code_pic").val(curCount + '秒');

        InterValObj = window.setInterval(SetRemainTime, 1000); //启动计时器，1秒执行一次
    }*/

    //time处理函数
    function SetRemainTime() {
        if (curCount == 0) {
            window.clearInterval(InterValObj); //停止计时器

            $(".code_pic").removeAttr("disabled"); //启用按钮
            $(".code_pic").removeClass("btn_disabled");
            $(".code_pic").addClass("btn_allow");
            $(".code_pic").val("重发短信");
        } else {
            curCount--;
            $(".code_pic").val(curCount + '秒');
        }
    }
