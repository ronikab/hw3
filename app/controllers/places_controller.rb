class PlacesController < ApplicationController
  
  def index
     # find all Places rows
    @places = Place.all
    # render places/index view
  end

  def show
        @place = Place.find_by({"id" => params["id"]})
  
        @posts = Post.where({"place_id" => @place["id"]})
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

end

