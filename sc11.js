        var tracks_array;
          var rotation,curTrack,currentPlayingTrack;
          var flag=0,fp=0,ci=0;
          var xmlhttp = new XMLHttpRequest();
 
            xmlhttp.onreadystatechange=function()
           {
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
              var len = tracks_array.length;      
                Track = function (trackId){
                            var currentTrack = "";
 
                            SC.initialize({
                                client_id: "52dec9c30f7ac67e36faed73a9892095"
                            });
 
                            SC.stream( trackId,
                                {
                                    onfinish: function()
                                    {
                                        console.log("Finished!");
                                        //var rotation = new Rotation(tracks_array);
                                        //var currentTrack = rotation.currentTrack();
                                        curTrack = rotation.nextTrack();
                                        console.log(curTrack);
                                        err(curTrack);
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
                                             err(curTrack);    
                                            }  
                                        }
                                        console.log(curTrack);
                                        currentPlayingTrack = new Track(curTrack);
                                        currentPlayingTrack.play();
                                        $('.trackTitle').html(curTrack);                                      
                                    }
                                }
                                ,function(sound){
                                currentTrack = sound;
                            });
 
                            this.play = function() {
                                currentTrack.play();
                            };
 
                            this.pause = function() {
                                currentTrack.pause();
                            };
 
                            this.stop = function() {
                                currentTrack.stop();
                            };
                        };
 
                        Rotation = function(track) {
                            var currentTrack = track[0];
 
                            this.currentTrack = function () {
                                return currentTrack;
                            };
 
                            this.nextTrack = function () {
                                var currentIndex = track.indexOf(currentTrack);
                                ci = currentIndex+2;
                                console.log(ci);
                                if(currentIndex == (len-1))
                                {
                                   location.reload(true);
                                }
                                   
                                else
                                    var nextTrackIndex = currentIndex + 1;
 
                                var nextTrackId = track[nextTrackIndex];
                                currentTrack = nextTrackId;
                                return currentTrack;
                            };
                        };
                       
                        function err(trackid)
                        {
                            SC.get(trackid, function(track, error) {
                            if (error) { flag = 1; }
                            else
                                flag =  0;
                            });
                        }
                        flag = err(tracks_array[0]);
                        $(document).ready (function(){
 
                            rotation = new Rotation(tracks_array);
                            curTrack = rotation.currentTrack();
                            currentPlayingTrack = new Track(tracks_array[0]);
 
                            $('#play').on('click', function(event){
                                fp=0,flag=0;
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
                                console.log("out of loop");
                                currentPlayingTrack.play();
                                $('.trackTitle').html(curTrack);
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
                                if(fp)
                                {
                                  currentPlayingTrack.play();
                                $('.trackTitle').html(curTrack);
                                $('#pause').show();
                                $('#play').hide();
                                currentPlayingTrack.stop();  
                                }
                                else if(fp==0)
                                {
                                   currentPlayingTrack.stop();
                                }
                               
                                curTrack = rotation.nextTrack();
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
                                console.log(curTrack);
                                //currentTrack = rotation.nextTrack();
                                currentPlayingTrack = new Track(curTrack);
                                currentPlayingTrack.play();
                                $('.trackTitle').html(curTrack);
                            });
 
                        });
 
              }, Pause );
            }
            testPause(1000);
          window.onbeforeunload = test;
          function test() 
          { 
              var qs = "?count=" + ci;
              var xmlhttp2 = new XMLHttpRequest();
              xmlhttp2.open("GET","count.php"+qs,true);
              xmlhttp2.send(null);
          }
