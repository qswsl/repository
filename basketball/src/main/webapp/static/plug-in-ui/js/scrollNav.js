// JavaScript Document
function scrollNav(){
	//鍒楄〃鑷€傚簲
		var ptListWrp = $('.jQ_ptLst');				//鍒楄〃瀹瑰櫒
		var valLstLiWth = $('.jQ_ptLst li').width();//鍥剧墖瀹藉害锛堝浘鐗囧彲鑳藉寘鎷竟妗嗘牱寮忕瓑锛屽彇Li瀹藉害鍙備笌鍙鍥剧墖璁＄畻閬垮厤璇樊锛�
		var valImgLth = 1;								//鍙鍥炬暟鍙橀噺*
		var valpLstMg = 0;								//杈硅窛鍙橀噺*
		var pLstLesMg = 5;								//涓寸晫闂磋窛
		//鍒楄〃婊氬姩
		var pLstRoLt = $('.jQ_plstRoLt');				//宸︽粴鍔ㄥ厓绱�
		var pLstRoRt = $('.jQ_plstRoRt');				//鍙虫粴鍔ㄥ厓绱�
		var pLstImgLth = ptListWrp.find('li').length;	//鑾峰彇鍥剧墖鎬绘暟
	
		//瀹藉害鑷€傚簲鏂规硶
		function fnAutoWth(){
			
			//閲嶇疆婊氬姩
			$('.jQ_ptLst ul').css({'marginLeft':'0'});
			pLstRoLt.hide();
			pLstRoRt.show();
			var pLstWrpWth = ptListWrp.width();		 			 //鑾峰彇褰撳墠鍙鍖哄煙瀹藉害
			valImgLth = Math.floor(pLstWrpWth / valLstLiWth);	///褰撳墠鍙鍥剧墖鏁拌绠�*
			//鍥剧墖闂磋窛绠楁硶
			function fnpLstMg(){
				//闂磋窛 = 闄ゅ幓鍥剧墖鐨勫搴� /锛堝浘鐗囨暟 + 1锛夛紝骞跺悜涓婂彇鏁达紙閬垮厤灏忔暟璇樊锛�
				//valpLstMg = Math.ceil((pLstWrpWth - valImgLth * valLstLiWth) / (valImgLth + 1));
			};
			//鎵ц璁＄畻
			fnpLstMg();
			//闂磋窛涓寸晫鍊�
			if(valpLstMg < pLstLesMg){
				valImgLth = valImgLth;	//褰撻棿璺濊揪鍒颁复鐣屽€紂ian鐗囨暟-1
				fnpLstMg();					//閲嶆柊璁＄畻闂磋窛
			};
			//鍙鍥剧墖鏁� >= 鎬诲浘鐗囨暟鏃讹紝鎬诲浘鐗囨暟鍗冲彲瑙嗗浘鐗囨暟
			if(valImgLth >= pLstImgLth){
				valImgLth = pLstImgLth;
				fnpLstMg();					//閲嶆柊璁＄畻闂磋窛
				pLstRoRt.hide();
			};
			//浣垮彲瑙嗗浘涓嶄负0
	//		if(valImgLth == 0){
	//			valpLstMg = 5;
	//		};
			//璁剧疆闂磋窛
			ptListWrp.find('li').css('margin-left',valpLstMg);
		};
		//鍒濆鎵ц瀹藉害鑷€傚簲鏂规硶
		fnAutoWth();
		//鍔ㄦ€佸彉鍖栧搴︽椂鎵ц鏂规硶
		$(window).resize(function(){
			fnAutoWth();	//瀹藉害鑷€傚簲鏂规硶
		});
		//婊氬姩鏂规硶
		function fnPlstArr($this){
			
			var pLstRoWrp = ptListWrp.find('ul');
			var ptLstCssMg = parseInt(pLstRoWrp.css('margin-left'));					//鑾峰彇褰撳墠宸叉粴鍔ㄥ搴�
			var ptLstImgMg = parseInt(pLstRoWrp.find('li:first').css('margin-left'));	//鑾峰彇褰撳墠鍥剧墖闂磋窛
			//鍚戝彸婊氬姩
			if($this.hasClass('jQ_plstRoRt')){
				//褰撶偣鍑诲彸绠ご鏃讹紝鍒楄〃鍚戝乏婊氬姩銆傞渶婊氬姩鐨勫搴� = 褰撳墠鍥剧墖闂磋窛 + 鍥剧墖瀹藉害锛堝彇Li瀹藉害锛�
				pLstRoWrp.not(':animated').animate({marginLeft: ptLstCssMg - (ptLstImgMg + valLstLiWth)},200,function(){
					
					//鍥炶皟鍑芥暟鍒ゆ柇婊氬姩涔嬪悗鐨勭澶寸姸鎬�
					var ptLstCurMg = parseInt(pLstRoWrp.css('margin-left'));				//鑾峰彇褰撳墠宸叉粴鍔ㄥ搴�
					var ptLstRoWth = (pLstImgLth - valImgLth) * (ptLstImgMg + valLstLiWth);//璁＄畻闈炲彲瑙嗗尯鍩熷搴�
					//褰撳凡婊氬姩瀹藉害 = 闈炲彲瑙嗗尯瀹藉害锛屽嵆宸叉粴鍔ㄨ嚦鏈€鍚庝竴鍥�
					if(ptLstCurMg + ptLstRoWth == 0){
						$this.hide();	//闅愯棌鍙崇澶�
					};
					pLstRoLt.show();	//涓€鏃﹀悜鍙虫粴鍔紝宸︾澶村嵆鏄剧ず
				});
			};
			//鍚戝乏婊氬姩
			if($this.hasClass('jQ_plstRoLt')){
				pLstRoWrp.not(':animated').animate({marginLeft: ptLstCssMg + (ptLstImgMg + valLstLiWth)},200,function(){
					//鍥炶皟鍑芥暟鍒ゆ柇婊氬姩涔嬪悗鐨勭澶寸姸鎬�
					var ptLstCurMg = parseInt(pLstRoWrp.css('margin-left'));					//鑾峰彇褰撳墠宸叉粴鍔ㄥ搴�
					var ptLstRoWth = (pLstImgLth - valImgLth - 1) * (ptLstImgMg + valLstLiWth);//璁＄畻闈炲彲瑙嗗尯鍩熷搴�
					//褰撳凡婊氬姩瀹藉害 = 0锛屽嵆宸叉粴鍔ㄨ嚦鏈€鍓嶄竴鍥�
					if(ptLstCurMg == 0){
						$this.hide();	//闅愯棌宸︾澶�
					};
					pLstRoRt.show();	//涓€鏃﹀悜宸︽粴鍔紝鍙崇澶村嵆鏄剧ず
				});
			};
		};
		//婊氬姩浜嬩欢缁戝畾
		$('.jQ_plstRoLt, .jQ_plstRoRt').click(function(){
				fnPlstArr($(this));
			})
}

/*鎺у埗椤甸潰婊戝姩*/
var flag_control=1;
var oScreenWidth;
function control(){
	//var oControlBtn=$(".opt");
			//oScreenWidth=$(window).width()-242
			//$("#contentDIV").css("marginLeft","0").css("width",oScreenWidth);
			//oControlBtn.toggle(function(){
				//alert($(this).parents(".pr").html());
				//$(this).children("i").addClass("arrowRight").end().parents(".pr").children(".subBar").animate({left: -232}, "fast",function(){
				//	$(".subBar").hide()
				//	});/*.css("display","none")*/
				//$(".welcome").animate({left:-232}, "fast",function(){$(".welcome").hide()});
				//$(this).parents(".resizer").animate({left:0}, "fast");
				//$("#contentDIV").animate({width:"98%",marginLeft:10}, "fast");
			//	flag_control=0;
			//},function(){
				//alert(2);
				//oScreenWidth=$(window).width()-242;
			    //alert(oScreenWidth);
				//$(this).children("i").removeClass("arrowRight").end().parents(".pr").children(".subBar").animate({left: 0}, "fast").css("display","block");
				//$(".welcome").animate({left:10}, "fast").css("display","block");
				//$(this).parents(".resizer").animate({left:220}, "fast");
				//$("#contentDIV").animate({width:oScreenWidth,marginLeft:0}, "fast");
			//	flag_control=1;
			//});
	}
$(window).resize(function(){
		if(flag_control==1)
		{
			//oScreenWidth=$(window).width()-242;
			//$("#contentDIV").animate({width:oScreenWidth,marginLeft:0}, "fast");
			}
		else{
			//$("#contentDIV").animate({width:"99%",marginLeft:10}, "fast");
			}
	})
	
function addControl(){
	//oScreenWidth=$(window).width()-242
	//$("#contentDIV").css("marginLeft","0").css("width",oScreenWidth);
	}	
/*鑿滃崟灞曞紑鏁堟灉*/
function menuTree(){
	var ospan=$(".subBarList span > a");
	$(ospan).click(function(){
		var indexNum=$(this).index();
		var oclassName=$(this).parents("li").attr("class");
		if(oclassName=="open")
			{
				$(this).parents("li").children("ul").slideUp()
				.parents("li").attr("class","close").end();
				//console.log(oclassName);
				}
		else{
				$(this).parents("li").children("ul").slideDown()
				.parents("li").attr("class","open")
				.siblings(".open").attr("class","close").children("ul").slideUp();
				//console.log(oclassName);
			}		
		})
	}
	
/*琛ㄥ崟榛樿鐏拌壊鎻愮ず*/
;(function($){
    $.fn.extend({
        iclear: function(options){
            var iset = {
                name: null,//鑾峰彇琛ㄥ崟鍏冪礌姣斿$(':text')
                curval: null,//榛樿鏄剧ず鏂囧瓧,浼樺厛浜庤〃鍗曢粯璁ゅ€�,涓虹┖鏃惰皟鐢ㄨ〃鍗曢粯璁ゅ€�
                color: '#000',//鐐瑰嚮鍚庤緭鍏ュ€奸鑹�
                curcolor: '#ccc',//榛樿棰滆壊
                enter: null
            }
            options=$.extend(iset, options || {});
            iset.name.each(function(){
                //褰撹缃粯璁ゅ€兼槸涓鸿〃鍗曡祴榛樿鍊�
                if (iset.curval != null) {
                    iset.name.val(iset.curval);
                }
                //琛ㄥ崟focus,blur浜嬩欢
                $(this).css('color', iset.curcolor).focus(function(){
     $(this).css('color',iset.color);
                    if ($(this).val() == (iset.curval ? iset.curval : this.defaultvalue)) {
                        $(this).val('');
                    }
                }).blur(function(){
                    if ($(this).val() == '') {
                        $(this).val(iset.curval ? iset.curval : this.defaultvalue).css('color', iset.curcolor);
                    }
                });
                //缁戝畾鍥炶溅浜嬩欢
                if (iset.enter != null) {
                    $(this).keydown(function(e){
                        if (e.keycode == 13) {
                            iset.enter.click();
                        }
                    });
                }
            });
        }
    });
})($);

