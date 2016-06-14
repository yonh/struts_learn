var req;
function getXmlHttpRequest() {
	var xmlHttp=null;
	try {
		// Firefox, Opera 8.0+, Safari
		xmlHttp=new XMLHttpRequest();
	} catch (e) {
		// Internet Explorer
		try {
			xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
		} catch (e) {
			xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
		}
	 }
	 return xmlHttp;
}

function changeLanguage(language) {
		
	if (window.XMLHttpRequest) {
		req = new XMLHttpRequest();
	} else if (window.ActiveXObject) {
		req = new ActiveXObject("Microsoft.XMLHTTP");
	}
		
	//var url = "http://localhost:8080/Struts2.3.4_008_i18n_3/i18n?request_locale=" + language;
	var url = "i18n?request_locale=" + language + "&url=index";
	//alert(url)
	//设置回调函数
	req.onreadystatechange = changeLang;//在req对象的状态发生更改时调用的函数
	req.open("get", url, true);
	
	req.send(null);
}

function changeLang() {
	if (req.readyState == 4) {//处理完成
		if (req.status == 200) {//是否是正常的反馈
			window.location.reload(true);
			//alert("yes");
		}	
	}
}