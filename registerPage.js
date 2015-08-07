function callRandom() {
        
  var xmlhttp = new XMLHttpRequest();
  xmlhttp.onreadystatechange=function()
  {
    if (xmlhttp.readyState==4 && xmlhttp.status==200)
      {
        tracks_array = JSON.parse(xmlhttp.responseText);
        console.log(tracks_array);
        alert (tracks_array);
      }
  }
  xmlhttp.open("POST","playRandom.php",true);
  xmlhttp.send();

}