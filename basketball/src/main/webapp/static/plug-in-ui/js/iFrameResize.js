function IFrameResize()
{
	var iframe = document.getElementById("center"); 
	var iframeDocument = null;
	//safari鍜宑hrome閮芥槸webkit鍐呮牳鐨勬祻瑙堝櫒锛屼絾鏄痺ebkit鍙互,chrome涓嶅彲浠�
	if (iframe.contentDocument)
	{ 
		//ie 8,ff,opera,safari
		iframeDocument = iframe.contentDocument;
	} 
	else if (iframe.contentWindow) 
	{ 
		// for IE, 6 and 7:
		iframeDocument = iframe.contentWindow.document;
	} 
	if (!!iframeDocument) {
		iframe.width=iframeDocument.documentElement.scrollWidth+"px";
		iframe.height=iframeDocument.documentElement.scrollHeight+"px";		
	} else {
		alert("this browser doesn't seem to support the iframe document object");
	} 

}

function dyniframesize(down) { 
	var pTar = null; 
	if (document.getElementById){ 
		pTar = document.getElementById(down); 
	} 
	else{ 
		eval('pTar = ' + down + ';'); 
	} 
	if (pTar && !window.opera){ 
		//begin resizing iframe 
		pTar.style.display="block";
		if (pTar.contentDocument && pTar.contentDocument.body.offsetHeight){ 
			//ns6 syntax 
			pTar.height = pTar.contentDocument.body.offsetHeight +600; 
			//pTar.width = pTar.contentDocument.body.scrollWidth+10; 
		} 
		else if (pTar.Document && pTar.Document.body.scrollHeight){ 
			//ie5+ syntax 
			pTar.height = pTar.Document.body.scrollHeight; 
			//pTar.width = pTar.Document.body.scrollWidth; 
		}
		//--author:scott--date--20160416---for:鏆傛椂娉ㄦ帀锛屽浐瀹氶椤甸珮搴�
//		if(pTar.height<900){
			pTar.height = 900;
//		}
	} 
}

function noMinDyniframesize(down) {
    var pTar = null;
    if (document.getElementById){
        pTar = document.getElementById(down);
    }
    else{
        eval('pTar = ' + down + ';');
    }
    if (pTar && !window.opera){
        //begin resizing iframe
        pTar.style.display="block";
        if (pTar.contentDocument && pTar.contentDocument.body.offsetHeight){
            //ns6 syntax
            pTar.height = pTar.contentDocument.body.offsetHeight +10;
            //pTar.width = pTar.contentDocument.body.scrollWidth+10;
        }
        else if (pTar.Document && pTar.Document.body.scrollHeight){
            //ie5+ syntax
            pTar.height = pTar.Document.body.scrollHeight;
            //pTar.width = pTar.Document.body.scrollWidth;
        }
    }
}



function dyniframesizeDG(down) { 
	var pTar = null; 
	if (document.getElementById){ 
		pTar = document.getElementById(down); 
	} 
	else{ 
		eval('pTar = ' + down + ';'); 
	} 
	if (pTar && !window.opera){ 
		//begin resizing iframe 
		pTar.style.display="block";
		if (pTar.contentDocument && pTar.contentDocument.body.offsetHeight){ 
			//ns6 syntax 
			pTar.height = pTar.contentDocument.body.offsetHeight +20; 
			//pTar.width = pTar.contentDocument.body.scrollWidth+10; 
		} 
		else if (pTar.Document && pTar.Document.body.scrollHeight){ 
			//ie5+ syntax 
			pTar.height = pTar.Document.body.scrollHeight; 
			//pTar.width = pTar.Document.body.scrollWidth; 
		} 
	} 
} 