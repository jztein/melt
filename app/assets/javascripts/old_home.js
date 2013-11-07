//# Place all the behaviors and hooks related to the matching controller here.
//# All this logic will automatically be available in application.js.
//# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

// Additional JS functions here
window.fbAsyncInit = function() {
    FB.init({
	    appId      : '155830041294213', // App ID
	    channelUrl : '//http://young-waters-8590.herokuapp.com/channel.html', // Channel File
	    status     : true, // check login status
	    cookie     : true, // enable cookies to allow the server to access the session
	    xfbml      : true  // parse XFBML
	});

    // Additional init code here

};

// Authentication
FB.Event.subscribe('auth.authResponseChange', function(response) {
	if (response.status === 'connected') {
	    testAPI();
	} else if (response.status === 'not_authorized') {
	    FB.login();
	} else {
	    FB.login();
	}
    });
};

// Load the SDK asynchronously
(function(d){
    var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
    if (d.getElementById(id)) {return;}
    js = d.createElement('script'); js.id = id; js.async = true;
    js.src = "//connect.facebook.net/en_US/all.js";
    ref.parentNode.insertBefore(js, ref);
}(document));


// Simple test api
function testAPI() {
    console.log('Welcome!  Fetching your information.... ');
    FB.api('/me', function(response) {
	    console.log('Good to see you, ' + response.name + '.');
	});
}
