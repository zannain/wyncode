// window.onload = function () {
//   var button = document.getElementById('btn');
//   button.addEventListener('click', function () {
//     httpRequest = new XMLHttpRequest()
//     httpRequest.onreadystatechange = function () {
//       if (httpRequest.readyState === XMLHttpRequest.DONE) {
//         var response = JSON.parse(httpRequest.responseText);
//         document.getElementById('response').innerHTML = response.msg;
//       }
//       // else {
//       //   console.log("changed but not done loading", httpRequest.readyState);
//       // }
//     }
//     httpRequest.open("GET", '/ajax-endpoint', true);
//     httpRequest.send();
//   });
  
// };
// $(function(){
//   $('button').click(function(evt) {
//     evt.preventDefault();
//     $.get('/ajax-endpoint', function(response) {
//       $("#response").text(response.msg);
//     }, 'json');
//   });
// });

// $(function () {
//   $('button').click(function (evt) {
//     evt.preventDefault();
//     $.get('https://api.github.com/users/eddroid', function () {
//       console.log('What did I get?');
//       console.log(arguments);
//     });
//   });
// });
// $(function () {
//   $('button').click(function (evt) {
//     // prevent default click action
//     evt.preventDefault();
//     // ajax request to Yahoo finance HTML
//     $.get('http://finance.yahoo.com/q?s=aapl', function () {
//       console.log(arguments);
//     });
//   });
// });

console.log('loading the site');
$.get('https://api.github.com/users/abunsen', function (response) {
  console.log(response);
}, 'json');
setTimeout(function () {
  console.log('done loading the site');
}, 20);