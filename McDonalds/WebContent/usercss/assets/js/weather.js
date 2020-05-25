$(function() {
	let publicAPI = "http://api.openweathermap.org/data/2.5/weather?";
	let data = {
		q : $('#myInput').val(),
		units : "metric",
		appid : "128c1b018422127293c9b438200c8ab8"
	};
	$
			.getJSON(
					publicAPI,
					data,
					function(data, textStatus, xhr) {
						$('#result').empty();
						// console.log(data.weather);
						// console.log(data.weather[0].description);
						// console.log(data.weather[0]);

						var table = "<table>";
						table += "<tr><td>지역</td><td>날씨</td><td>상세</td><td>바람</td><td>구름</td><td>온도</td></tr>";

						// console.log("data.weather[0].des==="+data.weather[0].description);//o
						// console.log("data.wind.speed==="+data.wind.speed);//0
						// console.log("data.weather[0].main==="+data.weather[0].main);//o
						// console.log("data[clouds].all==="+data["clouds"].all);
						// //o
						console.log(data.weather[0].icon);
						table += "<tr>";
						table += "<td>" + data.name + "</td>";
						table += "<td>" + data.weather[0].main + "</td>";
						table += "<td>" + data.weather[0].description + "</td>";
						table += "<td>" + data.wind.speed + "</td>";
						table += "<td>" + data["clouds"].all + "</td>";
						table += "<td>" + data.main.temp + "℃" + "</td>";
						table += "</tr>";
						table += "</table>";
						// $('#result').append(table);
						var imgURL = "http://api.openweathermap.org/img/w/"
								+ data.weather[0].icon + ".png";
						$('.imo').attr("src", imgURL);
						$('.imo2').html(data.main.temp);
						$('.loc').html(data.name);
						$('.nal').html(data.weather[0].main);
						$('#result').empty();
						$('#result').append(table);
						$('table').addClass('table');

					});
});
var i = 0;
$(function() {
	if (i == 0) {
		i = 1;
		var elem = document.getElementById("myprogress");
		var width = 1;
		var id = setInterval(frame, 55);
		function frame() {
			if (width >= 100) {
				clearInterval(id);
				i = 0;
			} else {
				width++;
				elem.style.width = width + "%";
			}
		}
	}
});

// Get the button
var mybutton = document.getElementById("myBtn");

// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {
	scrollFunction()
};

function scrollFunction() {
	if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
		mybutton.style.display = "block";
	} else {
		mybutton.style.display = "none";
	}
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
	document.body.scrollTop = 0;
	document.documentElement.scrollTop = 0;
}
