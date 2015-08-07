var tracks_array;
var flag=0,vol=50,fp=0,countSent=0,statePlay,cIndex=0;
var xmlhttp = new XMLHttpRequest();
var currentTrack;

xmlhttp.onreadystatechange=function() {

    if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
        tracks_array = JSON.parse(xmlhttp.responseText);
        console.log(tracks_array);
    }
}
xmlhttp.open("POST","playRandom.php",true);
xmlhttp.send();

function testPause(Pause) {
    
    setTimeout( function() {
    var len = tracks_array['trackid'].length;  

    Track = function (trackId) {

        currentTrack = "";

        SC.initialize({
            client_id: "52dec9c30f7ac67e36faed73a9892095"
        });

        SC.stream( trackId,
            {
                onfinish: function()
                {
                    console.log("Finished!");
                    document.getElementById("progressBar").value=0;
                    //var rotation = new Rotation(tracks_array);
                    //var currentTrack = rotation.currentTrack();
                    curTrack = rotation.nextTrack();
                    //console.log(curTrack);
                    flag = err(curTrack);
                    if(flag == 1)
                    {
                        while(flag)
                        {
                            if(flag == 0)
                                break;
                            else
                            {
                                curTrack = rotation.nextTrack();
                               
                            }
                         flag = err(curTrack);    
                        }  
                    }
                    console.log(curTrack);
                    currentPlayingTrack = new Track(curTrack);
                    currentPlayingTrack.play();
                    $('.subTitle').html(tracks_array['name'][cIndex]);
                    $('.content').html(tracks_array['artist'][cIndex]);                                      
                },

                whileplaying: function() {
                    
                    var progressbar = document.getElementById('progressBar');
                    progressbar.max = this.durationEstimate / 1000;
                    progressbar.value = (this.position / 1000);
                    
                    //$("#progressBar").css('width', ((this.position / this.durationEstimate) * 99.9) + '%');
                },

                whileloading: function() {

                    $("#loadBar").css('width', ((this.bytesLoaded / this.bytesTotal) * 99.9) + '%');
                },

                onload: function() {

                    console.log("loading finished");
                }
            }
            ,function(sound){
            currentTrack = sound;
            currentTrack.setVolume(vol);
             $('#volDisplay').html("Vol: " + vol +"%");
             setTimeout(function() {
                $('#volDisplay').fadeIn('slow');
            }, 50);
            setTimeout(function() {
                $('#volDisplay').fadeOut('slow');
            }, 3000);
        });

        this.play = function() {
            currentTrack.play();
        };

        this.pause = function() {
            currentTrack.pause();
        };

        this.stop = function() {
            currentTrack.stop();
            document.getElementById("progressBar").value=0;
        };

        this.volUp = function() {
            if (vol>=100)
                return;
            vol += 10;
            currentTrack.setVolume(vol);
            $('#volDisplay').html("Vol: " + vol+"%");
            setTimeout(function() {
                $('#volDisplay').fadeIn('slow');
            }, 50);
            setTimeout(function() {
                $('#volDisplay').fadeOut('slow');
            }, 3000);
            
            
        };

        this.volDown = function() {
            if (vol<=0)
                return;
            vol -= 10;
            currentTrack.setVolume(vol);
            $('#volDisplay').html("Vol: " + vol+"%");
            setTimeout(function() {
                $('#volDisplay').fadeIn('slow');
            }, 50);
            setTimeout(function() {
                $('#volDisplay').fadeOut('slow');
            }, 3000);
        };
    };


    Rotation = function(track) {

        var currentTrack = track[0];

        this.currentTrack = function () {
            return currentTrack;
        };

        this.nextTrack = function () {

            var currentIndex = track.indexOf(currentTrack);

            if (currentIndex == len-1)
                countSent = currentIndex+1;
            else
                countSent = currentIndex+2;

            console.log(countSent);

            if(currentIndex == (len-1))
            {
                var cnt = "?count=" + countSent;
                var xmlhttp = new XMLHttpRequest();

                xmlhttp.onreadystatechange=function()
               {
                    if (xmlhttp.readyState==4 && xmlhttp.status==200)
                    {
                        var status=xmlhttp.responseText;
                        console.log(status);

                        location.reload(true);
                    }
                }
                xmlhttp.open("POST","count1.php"+cnt,true);
                xmlhttp.send();
               
            }
               
            else
                var nextTrackIndex = currentIndex + 1;

            cIndex = nextTrackIndex;
            var nextTrackId = track[nextTrackIndex];
            currentTrack = nextTrackId;
            return currentTrack;
        };
    };
           
    function err(trackid) {

        SC.get(trackid, function(track, error) {
        if (error) { flag = 1; }
        else
            flag =  0;
        });
    }

    flag = err(tracks_array['trackid'][0]);

    $(document).ready (function(){

        rotation = new Rotation(tracks_array['trackid']);
        curTrack = rotation.currentTrack();
        currentPlayingTrack = new Track(tracks_array['trackid'][0]);

        $('#volup').on('click', function(event){
            currentPlayingTrack.volUp();
        });

        $('#voldown').on('click', function(event){
            currentPlayingTrack.volDown();
        });

        $('#play').on('click', function(event){
            fp=0,flag=0,statePlay=1;
            if(flag == 1)
            {
                while(flag)
                {
                    flag = err(curTrack);
                    if(flag == 0)
                        {console.log("no error"); break; }
                    else
                    {
                        console.log("error");
                        curTrack = rotation.nextTrack();
                        currentPlayingTrack = new Track(curTrack);
                    }
                       
                }            

            }
            currentPlayingTrack.play();
            $('.subTitle').html(tracks_array['name'][cIndex]);
            $('.content').html(tracks_array['artist'][cIndex]);
            $('#pause').show();
            $('#play').hide();
        });

        $('#pause').on('click', function(event){
            fp=1;
            currentPlayingTrack.pause();
            $('#pause').hide();
             $('#play').show();
        });

        $('#stop').on('click', function(event){
            currentPlayingTrack.stop();
            $('#pause').hide();
            $('#play').show();
        });

        $('#next').on('click', function(event){
            if(statePlay)
            {
                if(fp)
            {
            currentPlayingTrack.play();
            $('#pause').show();
            $('#play').hide();
            fp=0;
            currentPlayingTrack.stop();  
            }
            else if(fp==0)
            {
               currentPlayingTrack.stop();
            }
           
            curTrack = rotation.nextTrack();
            $('.subTitle').html(tracks_array['name'][cIndex]);
            $('.content').html(tracks_array['artist'][cIndex]);
            console.log(curTrack);
            flag = err(curTrack);
            if(flag == 1)
            {
                while(flag)
                {
                    if(flag == 0)
                        break;
                    else
                    {
                        curTrack = rotation.nextTrack();
                       
                    }
                 flag = err(curTrack);    
                }  
            }
            //console.log(curTrack);
            //currentTrack = rotation.nextTrack();
            currentPlayingTrack = new Track(curTrack);
            currentPlayingTrack.play();
            $('.trackTitle').html(curTrack);
            }
        });

    });

    }, Pause );
}

testPause(1000);
window.onbeforeunload = test;
function test()  {

  var qs = "?count=" + countSent;
  var xmlhttp2 = new XMLHttpRequest();
  xmlhttp2.open("GET","count.php"+qs,true);
  xmlhttp2.send(null);
}

function feed() {

    apprise('We would love to hear from you! Please leave your feedback..', { 'input': true, 'animate': true }, 
        function (msg) {
            
            if(msg) {

                var newmsg = "?msg=" + msg;
                var xmlhttp3 = new XMLHttpRequest();
                xmlhttp3.open("GET","saveFeedback.php"+newmsg,true);
                xmlhttp3.send(null);
                apprise('Thank you for your feedback!', {'animate':true});
            }
        }
    );

}

function jump() {
    var pos = (document.getElementById("progressBar").value);
    currentTrack.setPosition(pos*1000);
}