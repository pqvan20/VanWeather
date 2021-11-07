<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<meta title="viewport" content="width=device-width, initial-scale=1">
<title>Văn weather</title>
<style>
.container {
	width: 80%;
	background-color: teal;
	margin: auto;
	border-radius: 2vw;
	height: fit-content;
}

.currentWeather {
	margin-left: 5vw;
	font-size: 2vw;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	color: white;
}

.vanWeather {
	text-align: center;
	font-weight: bold;
	font-family: cursive;
	font-size: 2.5vw;
	padding-top: 1vw;
}

.van {
	color: darkorange;
}

.vietnamFlag {
	width: 2vw;
}

.city {
	font-weight: bold;
	margin-top: 3vw;
}

.image {
	width: 8vw;
	float: left;
	margin-top: 2vw;
	margin-right: 1vw;
}

.num {
	float: left;
	font-size: 7vw;
	font-family: cursive;
}

.degreeC {
	float: left;
	margin-top: 2vw;
	font-size: 2vw;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

.weatherText {
	float: left;
	margin-top: 4vw;
	font-size: 2vw;
	margin-left: 2vw;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

.tableOne {
	margin-top: 9vw;
	margin-left: 2vw;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	color: white;
	border-collapse: collapse;
	margin-left: auto;
	margin-right: auto;
}

.tableOne td, .tableOne th {
	font-size: 1.5vw;
	padding: 1vw;
	text-align: center;
}

.note {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	font-size: 1.4vw;
	color: darkorange;
	text-align: center;
	display: inline-block;
	width: 22vw;
	margin-top: 6vw;
	border-radius: 1vw;
	padding: 0.3vw;
	border: 0.1vw white solid;
	margin-left: 4.7vw;
}

.ForecastContainer {
	margin: auto;
	text-align: center;
}

.tableTwo {
	border-collapse: collapse;
	display: inline-block;
	margin-left: 0.8vw;
}

.tableTwo th {
	color: white;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	font-size: 1.3vw;
}

.dayForecast {
	border-collapse: collapse;
	display: inline-block;
	margin-top: 1.5vw;
	border-radius: 1vw;
	border: 0.2vw white solid;
	margin-top: 4vw;
	margin-left: 0.5vw;
	margin-right: 0.5vw;
	margin-bottom: 0.5vw;
}

.dayForecast td {
	color: white;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	font-size: 1.5vw;
	text-align: center;
	padding: 0vw 1vw;
}

.dayImage {
	width: 6vw;
}

/* tooltip */
.tooltip {
	position: relative;
	display: inline-block;
}

.tooltip .tooltiptext {
	visibility: hidden;
	width: 14vw;
	font-size: 1.2vw;
	background-color: cadetblue;
	color: white;
	text-align: center;
	border-radius: 0.5vw;
	padding: 0.4vw 0;
	position: absolute;
	z-index: 1;
	bottom: 150%;
	left: -40%;
	margin-left: -3.6vw;
}

.tooltip .tooltiptext::after {
	content: "";
	position: absolute;
	top: 100%;
	left: 45%;
	border-width: 0.5vw;
	border-style: solid;
	border-color: cadetblue transparent transparent transparent;
}

.tooltip:hover .tooltiptext {
	visibility: visible;
}

.toolTipImage {
	width: 6vw;
}
</style>
</head>
<body>

	<jsp:include page="index.jsp"></jsp:include>

	<div class="container">
		<div class="currentWeather">
			<div class="vanWeather">
				<span class="van">Văn</span> <span class="weather">Weather</span> <img
					src="images/flag.png" class="vietnamFlag">
			</div>

			<div class="city">${englishName}</div>

			<div>${formatDate}</div>

			<img class="image" src="images/${weatherIcon}.svg"> <span
				class="num">${value}</span> <span class="degreeC">°C</span> <span
				class="weatherText">${weatherText}</span>
		</div>
		<br> <br>
		<table class="tableOne">
			<tr>
				<th>Humidity</th>
				<th>Speed of Wind</th>
				<th>UV index</th>
				<th>Rain probability</th>
				<th>Snow probability</th>
				<th>Ice probability</th>
			</tr>

			<tr>
				<td>${relativeHumidity}</td>
				<td>${windValue}</td>
				<td>${uVIndex}-(${uVIndexText})</td>
				<td>${hourForecastList.get(0).rainProbability}</td>
				<td>${hourForecastList.get(0).snowProbability}</td>
				<td>${hourForecastList.get(0).iceProbability}</td>
			</tr>

		</table>

		<p class="note">
			<Strong>Note:</Strong> Hover Hour and Date below to see Weather
			Forecast Detail
		</p>

		<div class="ForecastContainer">
			<table class="tableTwo">
				<tr>
					<th>^</th>

				</tr>
				<tr>
					<th>|</th>

				</tr>
				<tr>
					<th>|</th>

				</tr>
				<tr>
					<th>|</th>

				</tr>
				<tr>
					<th>|</th>

				</tr>
				<tr>
					<th>|</th>

				</tr>
				<tr>
					<th>|</th>

				</tr>
				<tr>
					<th>|</th>

				</tr>
				<tr>
					<th>|</th>

				</tr>
				<tr>
					<th>|</th>

				</tr>
				<tr>
					<th>|</th>

				</tr>
				<tr>
					<th>|</th>

				</tr>
				<tr>
					<th>0</th>
				</tr>
			</table>

			<c:forEach var="hour" items="${hourForecastList}">
				<table class="tableTwo">
					<tr>
						<th>${hour.temperature}°C</th>
					</tr>
					<tr>
						<th>.</th>
					</tr>
					<tr>
						<th style="padding-top: ${hour.temperatureDivideBy3}vw;">______</th>
					</tr>
					<tr>
						<th class="tooltip">
							<div>${hour.dateTime}
								<span class="tooltiptext"> <img class="toolTipImage"
									src="images/${hour.hourIcon}.svg"> <br>${hour.hourIconPhrase}
									<br>UV index: ${hour.uVindex} <br>Speed of Wind:
									${hour.wind} <br>Rain probability: ${hour.rainProbability}
									<br>Snow probability: ${hour.snowProbability} <br>Ice
									probability: ${hour.iceProbability} <br>Amount of Rain:
									${hour.rain} <br>Amount of Snow: ${hour.snow} <br>Amount
									of Ice: ${hour.ice}
								</span>
							</div>
						</th>

					</tr>
				</table>
			</c:forEach>
		</div>

		<br>

		<div class="ForecastContainer">
			<c:forEach var="day" items="${dayForecastList}">
				<table class="dayForecast">
					<tr>
						<td class="tooltip">
							<div>
								${day.date} <span class="tooltiptext"> Air quality:
									${day.airQualityCategory} <br>UV index: ${day.uVIndex} <br>
									<Strong>Day:</Strong> <br>Speed of Wind: ${day.dayWind} <br>Rain
									probability: ${day.dayRainProbability} <br>Snow
									probability: ${day.daySnowProbability} <br>Ice
									probability: ${day.dayIceProbability} <br>Amount of Rain:
									${day.dayRain} <br>Amount of Snow: ${day.daySnow} <br>Amount
									of Ice: ${day.dayIce} <br> <Strong>Night:</Strong> <br>Speed
									of wind: ${day.nightWind} <br>Rain probability:
									${day.nightRainProbability} <br>Snow probability:
									${day.nightSnowProbability} <br>Ice probability:
									${day.nightIceProbability} <br>Amount of Rain:
									${day.nightRain} <br>Amount of Snow: ${day.nightSnow} <br>Amount
									of Ice: ${day.nightIce}
								</span>
							</div>
						</td>
					</tr>
					<tr>
						<td>${day.maxTemperature}-${day.minTemperature}</td>
					</tr>
					<tr>
						<td>Day</td>
					</tr>
					<tr>
						<td><img class="dayImage" src="images/${day.dayIcon}.svg"></td>
					</tr>
					<tr>
						<td>Night</td>
					</tr>
					<tr>
						<td><img class="dayImage" src="images/${day.nightIcon}.svg"></td>
					</tr>
				</table>
			</c:forEach>
		</div>
	</div>

</body>
</html>