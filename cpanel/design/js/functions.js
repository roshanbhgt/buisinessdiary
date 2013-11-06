function check(){
	var allInputs = document.getElementsByTagName("input");
	for (var i = 0, max = allInputs.length; i < max; i++){
	    if (allInputs[i].type === 'checkbox')
	        allInputs[i].checked = true;
	}
}
function uncheck(){
	var allInputs = document.getElementsByTagName("input");
	for (var i = 0, max = allInputs.length; i < max; i++){
	    if (allInputs[i].type === 'checkbox')
	        allInputs[i].checked = false;
	}
}
function showmore(showdiv,hidediv){
	document.getElementById(showdiv).style.display = 'block';
	document.getElementById(hidediv).style.display = 'none';
}
function hidemore(showdiv,hidediv){
	document.getElementById(showdiv).style.display = 'block';
	document.getElementById(hidediv).style.display = 'none';
}
