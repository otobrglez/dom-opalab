/* by Oto Brglez - <oto.brglez@opalab.com> */

googleapis.auth.checkLoginComplete();

/* Call prediction API */
function predict() {
  prediction.predict(
    {'data': 'estates/gohome', 
     'input': {'csvInstance': getCsvInstance()}})
    .execute(predictionCallback);
}

/* Build data for call */
function getCsvInstance(){
	return [
		parseFloat($("input[name=size]").val()),
		$("select[name=type]").val(),
		$("select[name=location]").val(),
	];
}

function predictionCallback(){
	
}

function login() {
    var config = {
	    'client_id': '1074864873270-4g6n0n3vk0g809e3bt7i05v2osi10qbs.apps.googleusercontent.com',
		'scope': 'https://www.googleapis.com/auth/prediction',
    };
    googleapis.auth.login(config, checkStatus);
}

function checkStatus() {
    token = googleapis.auth.getToken();
    
    if (token) {
    	$(".toolbar").fadeOut("slow");
    	$(".main").fadeIn("slow");
    } else {

    };
}


function predictionCallback(resp) {
    if ('error' in resp) {
    	$(".main").append($('<p>Error: '+resp['error']+'</p>'));
    };

    $("#result .number").html(formatCurrency(parseInt(resp['outputValue'],10)));
}

function formatCurrency(num) {
	num = num.toString().replace(/\$|\,/g,'');
	if(isNaN(num))
	num = "0";
	sign = (num == (num = Math.abs(num)));
	num = Math.floor(num*100+0.50000000001);
	cents = num%100;
	num = Math.floor(num/100).toString();
	if(cents<10)
	cents = "0" + cents;
	for (var i = 0; i < Math.floor((num.length-(1+i))/3); i++)
	num = num.substring(0,num.length-(4*i+3))+','+
	num.substring(num.length-(4*i+3));
	return (((sign)?'':'-') + '' + num + '.' + cents);
}

var token = false;
$(document).ready(function(){
	checkStatus();


	$("button[name=oauthlogin]").click(function(e){
		login();
	});

	$("#predict input[type=submit]").click(function(e){
		if(e.preventDefault) e.preventDefault();
		checkStatus();
		predict();
	});

	$("#predict form").submit(function(){
		return false;
	});
});