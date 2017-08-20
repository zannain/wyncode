# Week 4 (One on One):

## Problem 1

### Create an HTML Page
Create a simple page to display the weather. Display the following values on three separate lines: 
- the date & time 
- the temperature 
- description of the weather

We don't need the page to be accurate. Just make up values.

### Set a Background Image
Select one of these three background images to use as the background for your whole page.
```
https://static.pexels.com/photos/8486/water-rain-raindrops-drops.jpg
http://www.photofurl.com/wp-content/uploads/2008/11/beautiful_mountain_wallpaper.jpg
http://www.skringers.com/wp-content/uploads/Free-Desktop-Wallpaper-Beach-Scenes-Sunny-Beach.jpg
```
If you select a dark background, your black text may be hard to see.

### Style the Page
- center all text
- color all the text white
- make the temperature much larger than the rest of the text 
- add space above and below the temperature
- use a [sans-serif](https://en.wikipedia.org/wiki/Sans-serif) font for all text

### Easily Customizable Background

I want to make it easy to change the background image. Instead of copying-and-pasting a new URL into the CSS or the HTML everytime I want to change the background, I simply want to change an attribute of the `<body>` in the HTML.

Update the page to target the `<body>` with multiple CSS styles. Simply changing an attribute of `<body>` should change the rule that applies, and therefore change the background image.

----

## Problem 2

Create a file named `api.rb` that pulls the weather from [OpenWeather](http://api.openweathermap.org/data/2.5/weather?q=Miami+Beach,FL&appid=c38d29204353577f04f9a8b861e3c70e). 

Please output to the command line: 
- the date 
- the temperature
- a description of the weather 

__Bonus:__ Open your file and change the value of the date, temp & condition so when it loads it has the data from the last time the `api.rb` script was run.
