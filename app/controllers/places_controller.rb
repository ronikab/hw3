class PlacesController < ApplicationController
  
  def index
     # find all Places rows
    @places = Place.all
    # render places/index view
  end

  def new
    @place = Place.new 
  end
  
  def create
    @place = Place.new 
    @place["name"] =  params["place"]["name"]

    @place.save

    redirect_to "/places"

  end

  def show

    
  end
  


end

