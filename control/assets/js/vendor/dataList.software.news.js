window.onload=function (){
	var ulid = GetRequest();
	if(ulid.indexOf("&") != -1){
		ulid = ulid.split("&")[0];
	}
	if(ulid.indexOf("/") != -1){
		ulid = ulid.replace('/', '_');
	}
	$("#"+ulid).addClass("active");
	if(ulid.indexOf("_") != -1){
		var liid = getCaption(ulid,"_",0);
		if(!document.getElementById(liid)){
			$("#"+ulid+"_a").addClass("active");
		}else{
			$("#"+liid).addClass("active");
			$("#"+liid+"_a").addClass("active");
			$("#"+liid+"_ul").addClass("collapse in");
		}
	}else{
		$("#"+ulid+"_a").addClass("active");
	}
};

function GetRequest() {  
	var url = location.search; //获取url中"?"符后的字串  
	if (url.indexOf("?") != -1) {  
		return url.slice(1);
	}  
} 

function getCaption(obj,string,state) {
	var index = obj.lastIndexOf(string);
	if(state==0){
		obj=obj.substring(0,index);
	}else {
		obj=obj.substring(index+1,obj.length);
	}
	return obj;
}

$('#epay_ali').click(function() {
	window.open('http://pay.345676.xyz');
	return false;//重要语句：如果是像a链接那种有href属性注册的点击事件，可以阻止它跳转。
});
$('#epay_wx').click(function() {
	window.open('http://pay.345676.xyz');
	return false;//重要语句：如果是像a链接那种有href属性注册的点击事件，可以阻止它跳转。
});
$('#epay_qq').click(function() {
	window.open('http://pay.345676.xyz');
	return false;//重要语句：如果是像a链接那种有href属性注册的点击事件，可以阻止它跳转。
});

function createXlsFile(jsonData){
	var table = "<table>";
	//生成表头
	var row = "<tr>";
	for(var i = 0; i < jsonData.th.length; i++) {
		row += "<td>" + jsonData.th[i] + "</td>";
	}
	table += row + "</tr>";
	var tds = jsonData.tds;
	for(var i = 0 , len = tds.length; i < len; i++){
		var td = "<tr>";
		for(var j = 0 , jLen = tds[i].length; j < jLen; j++){
			td += "<td>" + tds[i][j] + "</td>";
		}
		td += "</tr>";
		table += td;
	}
	var excelFile = "<html xmlns:o='urn:schemas-microsoft-com:office:office' " + "xmlns:x='urn:schemas-microsoft-com:office:excel' xmlns='http://www.w3.org/TR/REC-html40'>";
	excelFile += '<meta http-equiv="content-type" content="application/vnd.ms-excel; charset=UTF-8">';
	excelFile += '<meta http-equiv="content-type" content="application/vnd.ms-excel';
	excelFile += '; charset=UTF-8">';
	excelFile += "<head>";
	excelFile += "<!--[if gte mso 9]>";
	excelFile += "<xml>";
	excelFile += "<x:ExcelWorkbook>";
	excelFile += "<x:ExcelWorksheets>";
	excelFile += "<x:ExcelWorksheet>";
	excelFile += "<x:Name>";
	excelFile += "sheet";
	excelFile += "</x:Name>";
	excelFile += "<x:WorksheetOptions>";
	excelFile += "<x:DisplayGridlines/>";
	excelFile += "</x:WorksheetOptions>";
	excelFile += "</x:ExcelWorksheet>";
	excelFile += "</x:ExcelWorksheets>";
	excelFile += "</x:ExcelWorkbook>";
	excelFile += "</xml>";
	excelFile += "<![endif]-->";
	excelFile += "</head>";
	excelFile += "<body>";
	excelFile += table;
	excelFile += "</body>";
	excelFile += "</html>";
	var uri = 'data:application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;charset=utf-8,base64,' + encodeURIComponent(excelFile);
	var link = document.createElement("a");
	link.href = uri;
	link.style = "visibility:hidden";
	link.download = jsonData.fileName + ".xls";
	document.body.appendChild(link);
	link.click();
	document.body.removeChild(link);
}