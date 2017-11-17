class GeoIpRequestController < ApplicationController


  def new
  	puts '..N....'
puts params[:ip]
puts '......'
  end

  def create
    geo_data = Geocoder.search("#{params[:ip]}")
    puts '----------------------------------------' 

 @ip = geo_data[0].data["ip"]
 @cc = geo_data[0].data["country_code"]
 @cn = geo_data[0].data["country_name"]
 @rn = geo_data[0].data["region_name"]
 @ct = geo_data[0].data["city"]
 @la = geo_data[0].data["latitude"]
 @lo = geo_data[0].data["longitude"]


    puts "IP............#{@ip}"
    puts "country_code..#{@cc}"
    puts "country_name..#{@cn}"
    puts "region_name...#{@rn}"
    puts "city..........#{@ct}"
    puts "latitude......#{@la}"
    puts "longitude.....#{@lo}"
    puts '----------------------------------------'
#    redirect_to root_url
  end


end