###############################################################################
# KIEI-924 Project #2: Create a command-line weather application.
###############################################################################

# Execute this application by issuing the following command:

# ruby weather.rb

# We will use the Dark Sky API to access the Dark Sky weather service. This
# API gives us access to a object of data, as described in the Dark Sky API 
# documentation:

# https://darksky.net/dev/docs#forecast-request

# Everything needed to use the API is already provided; the variable that 
# holds the weather data is @forecast. We are able to access the data within
# this variable by using dot (.) notation, for example:

# @forecast.currently.temperature

###############################################################################
# RUBRIC
###############################################################################

# When this application is executed, it should produce the following:

# - (5 points) Show the current weather at Kellogg (temperature, "feels like",
#   and text summary)
# - (5 points) Show the daily forecast with summary, temperature highs and
#   lows. Use a loop!
# - (10 points) After you're finished with the first two requirements, refactor 
#   your code (fancy term for "make it better") by moving it into a Ruby class 
#   called Weather. Using a class will produce the same output, while making
#   it more reusable (scalable) and easier to understand. Start by moving the 
#   code that calls the Dark Sky API (lines 41-45) into the constructor (the 
#   initialize function); modify the constructor so that it accepts a lat/long
#   for the location. The commented out code at the end should work, once 
#   you're done.

# HINTS

# Kellogg: 42.0454106, -87.7339979
# NYC: 40.6976637, -74.1197641
# San Diego: 32.8248175,-117.3891625

# The Dark Sky API provides the date/time of the forecast in UNIX time. To 
# convert into a readable date:

# Time.at(1234567890).strftime("%B %d, %Y")

# For a good time: http://www.strfti.me/

###############################################################################
# Using the DarkSky API.
require 'forecast_io'

ForecastIO.configure do |c|
  c.api_key = '462115257bc42b21a521817df066729d'
end

@forecast = ForecastIO.forecast(42.0454106, -87.7339979)
#
###############################################################################

# YOUR CODE STARTS HERE











# For the third part...

# puts "Kellogg"
# puts "--------------------------------------"
# kellogg_weather = Weather.new(42.0454106, -87.7339979)
# kellogg_weather.show_report

# puts
# puts "NYC"
# puts "--------------------------------------"
# nyc_weather = Weather.new(40.6976637, -74.1197641)
# nyc_weather.show_report

# puts
# puts "San Diego"
# puts "--------------------------------------"
# sd_weather = Weather.new(32.8248175,-117.3891625)
# sd_weather.show_report
