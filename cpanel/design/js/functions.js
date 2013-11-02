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

