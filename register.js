function register()
{
	var url = "http://localhost:8080/register";
	var data = JSON.stringify({
		"name" : T1.value,
		"email" : T2.value,
		"mobile" : T3.value,
		"password" : T4.value,
		"confirm-password" : T5.value
	});
	
	callApi("POST", url, data, getResponse);
}

function getResponse(res)
{
	alert(res);
}

function callApi(METHOD, URL, DATA, SUCCESS)
{
	var xhttp = new XMLHttpRequest();
	xhttp.open(METHOD, URL, true);
	xhttp.setRequestHeader('Content-Type','application/json');
		
	xhttp.onreadystatechange = function()
	{
		if(this.readyState == 4)
		{
			if(this.status == 200)
				SUCCESS(this.responseText);
			else
				alert("404: Service unavailable");
		}
	};
	
	xhttp.send(DATA);
}
