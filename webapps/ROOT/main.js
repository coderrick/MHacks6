var tag = document.createElement('script');

      tag.src = "https://www.youtube.com/iframe_api";
      var firstScriptTag = document.getElementsByTagName('script')[0];
	  console.log("kdfkdsjks: " + firstScriptTag);
      firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

      // 3. This function creates an <iframe> (and YouTube player)
      //    after the API code downloads.
      var player1;
	  var player2;
      function onYouTubeIframeAPIReady() {
        player1 = new YT.Player('player1', {
          height: '390',
          width: '640',
          videoId: 'WppvmpLKS-Y',
          events: {
            'onReady': onPlayerReady,
            'onStateChange': onPlayerStateChange
          }
        });
      }

      // 4. The API will call this function when the video player is ready.
      function onPlayerReady(event) {
        //event.target.playVideo();
      }

      // 5. The API calls this function when the player's state changes.
      //    The function indicates that when playing a video (state=1),
      //    the player should play for six seconds and then stop.
      var done = false;
      function onPlayerStateChange(event) {
        if (event.data == YT.PlayerState.PLAYING && !done) {
          setTimeout(stopVideo, 6000);
          done = true;
        }
      }
     
	 
//////////////////////////////////////////////////////////////////////////
/*
					YOUTUBE SEARCH
*/
////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
/*
					PLAYER2 
*/
//////////////////////////////////////////////////////////////////////////

      function onYouTubeIframeAPIReady() {
        player2 = new YT.Player('player2', {
          height: '390',
          width: '640',
          videoId: '8AEU5pBxY6E',
          events: {
            'onReady': onPlayerReady,
            'onStateChange': onPlayerStateChange
          }
        });
      }

      // 4. The API will call this function when the video player is ready.
      function onPlayerReady(event) {
        //event.target.playVideo();
      }

      var done = false;
      function onPlayerStateChange(event) {
        if (event.data == YT.PlayerState.PLAYING && !done) {
          setTimeout(stopVideo, 6000);
          done = true;
        }
      }
      function stopVideo() {
        player2.stopVideo();
      }
	  
	  $(function() {
			$("#mutebtn").click(function(){
				player2.mute();
				console.log(player2.getCurrentTime());
				var sound = new Howl({
					urls: ['static/censor-beep1.mp3']
				}).play();
				console.log( "ready!" );
			});			
		});

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// for prototype purpose
Vocals = [ "Track4", "Track3", "Track2", "Track1","Rolling in the Deep",]
Instrumental = [ "Track4", "Track3", "Track2", "Track1","Nara"]
// start

var playing = 0;


function rotate () {
    if (playing) {

    };
}

function addTrackMenu (track, arg) {
    html = "<ul class=\"pure-menu-list\">";
    for (var i = arg.length - 1; i >= 0; i--) {
        html = html + "<li class=\"pure-menu-item\"><a href=\"#\" class=\"pure-menu-link\">"+arg[i]+"</a></li>";
    };
    html = html + "</ul>";
    $(track).html(html);
}

document.addEventListener("DOMContentLoaded", function(event) { 
    console.log("ready");
    var cover_height = $(".splash-container").height() / 2;
    console.log("height:" + cover_height);
    $(".img-wrapper").height($(".img-wrapper").width());
    $("#blank").height(cover_height/6);
    $("#track1_button").click(function () {
        $("#track1").toggle()
    });
    $("#track2_button").click(function () {
        $("#track2").toggle()
    });
    $("#play_button").click(function () {
	player2.playVideo();
	player1.playVideo();
        console.log("click")
        if (playing) {
            console.log("pause");
			player2.pauseVideo();
			player1.pauseVideo();
            playing = 0;
            $("#play_button").text("Play");
            $(".img-wrapper").css("-webkit-animation-play-state", "paused");
            $(".img-wrapper").css("-moz-animation-play-state", "paused");
            $(".img-wrapper").css("-animation-play-state", "paused");
        } else {
            console.log("play");
            playing = 1;
            $("#play_button").text("Pause");
            $(".img-wrapper").css("-webkit-animation-play-state", "running");
            $(".img-wrapper").css("-moz-animation-play-state", "running");
            $(".img-wrapper").css("-animation-play-state", "running");
        }
    }); 
	$("#track1_button").click(function () {
	    player1.playVideo();
        console.log("click")
        if (playing) {
			player1.playVideo();
            console.log("pause");
            playing = 0;
            $(".img-wrapper1").css("-webkit-animation-play-state", "paused");
            $(".img-wrapper1").css("-moz-animation-play-state", "paused");
            $(".img-wrapper1").css("-animation-play-state", "paused");
        } else {
            console.log("play");
            playing = 1;
            $(".img-wrapper1").css("-webkit-animation-play-state", "running");
            $(".img-wrapper1").css("-moz-animation-play-state", "running");
            $(".img-wrapper1").css("-animation-play-state", "running");
        }
    }); 
	$("#track2_button").click(function () {
		player2.playVideo();
        console.log("click")
        if (playing) {
			player2.playVideo();
            console.log("pause");
            playing = 0;
            $(".img-wrapper2").css("-webkit-animation-play-state", "paused");
            $(".img-wrapper2").css("-moz-animation-play-state", "paused");
            $(".img-wrapper2").css("-animation-play-state", "paused");
        } else {
            console.log("play");
            playing = 1;
            $(".img-wrapper2").css("-webkit-animation-play-state", "running");
            $(".img-wrapper2").css("-moz-animation-play-state", "running");
            $(".img-wrapper2").css("-animation-play-state", "running");
        }
    }); 
    updateTrackMenu();
});

// on query response
function updateTrackMenu () {
    addTrackMenu("#track1", Vocals);
    addTrackMenu("#track2", Instrumental);
}