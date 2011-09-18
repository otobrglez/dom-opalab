/* by Oto Brglez - <oto.brglez@opalab.com> */

googleapis.auth.checkLoginComplete();

function predict() {
  prediction.predict(
    {'data': 'estates/gohome', 
     'input': {'csvInstance': [ 60, 'Stanovanje', 'Maribor' ]}})
    .execute(predictionCallback);

   /*
   prediction.hostedmodels.predict(
     {'hostedModelName': 'sample.sentiment', 
      'input': {'csvInstance': [ document.getElementById('predictquery').value ]}})
     .execute(hostedModelCallback);
    */
}

/*
function sendUpdate(snippet) {
  prediction.training.update(
    {'data': 'io11/my_data', 
     'classLabel': [ document.getElementById('topic').value],
     'csvInstance': [ snippet ]})
    .execute(updateCallback);
}
*/

function init() {
    checkStatus();
}

function login() {
    var config = {
	    'client_id': '1074864873270-4g6n0n3vk0g809e3bt7i05v2osi10qbs.apps.googleusercontent.com',
	    // 'key': 'AIzaSyCxxTWP3tWkXkvsv3jx4TuevQ2ymqDCPls',
		'scope': 'https://www.googleapis.com/auth/prediction',
    };
    googleapis.auth.login(config, checkStatus);
}

function checkStatus() {
    var token = googleapis.auth.getToken();
    
    if (token) {
    	console.log("Prijavljen... token:" + token);
    } else {
    	console.log("Odjavljen...");
    };
}

$(document).ready(function(){
	init();


	$("button[name=oauthlogin]").click(function(e){
		login();
	});
});