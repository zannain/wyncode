window.onload = function () {
  console.log('the page is loaded!');
  var request = new XMLHttpRequest();
  request.onreadystatechange = function () {
    if (request.readyState === XMLHttpRequest.DONE) {
      var response = JSON.parse(request.responseText);
      var sunrise = response.sys.sunrise;
      var sunset = response.sys.sunset;
      var time = new Date().getTime() / 1000;
      var secondsSinceSunrise = time - sunrise;
      var daylightTime = sunset - sunrise;
      var percentX = (secondsSinceSunrise / daylightTime) * 100;
      var percentY = -0.035 * Math.pow(percentX - 52, 2) + 80;
      var sun = document.getElementById('sun');

      sun.style.left = percentX + '%';
      sun.style.bottom = percentY + '%';

      console.log(percentX);
    }

  };
  var url = "http://api.openweathermap.org/data/2.5/weather?q=Miami,FL,us&APPID=54094c5e9c3430a7255880a409cc24af";
  request.open('GET', url);
  request.send();
  // http://api.openweathermap.org/data/2.5/weather?q=Miami,FL,us&APPID=54094c5e9c3430a7255880a409cc24af
};