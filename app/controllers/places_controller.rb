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


# gitpod /workspace/hw3 (main) $ sqlite3 db/development.sqlite3

# SQLite version 3.37.2 2022-01-06 13:25:41
# Enter ".help" for usage hints.

# sqlite> select * from places;

# 1|Mexico City|2023-05-16 20:49:34.251972|2023-05-16 20:49:34.251972
# 2|Charleston|2023-05-16 20:49:46.856085|2023-05-16 20:49:46.856085
# 3|Beijing|2023-05-16 20:49:52.696680|2023-05-16 20:49:52.696680
# 4|Amsterdam|2023-05-16 20:49:58.683297|2023-05-16 20:49:58.683297

# sqlite> select * from posts;

# 1|Ate tacos|I ate so many tacos|2022-01-01|1|2023-05-16 20:50:18.926622|2023-05-16 20:50:18.926622
# 2|Lisa and Jim's Wedding|What a wonderful night|2022-01-01|1|2023-05-16 20:50:35.634512|2023-05-16 20:50:35.634512
# 3|Ate tacos again|I ate so many tacos again|2022-01-01|1|2023-05-16 20:50:50.769659|2023-05-16 20:50:50.769659
# 4|Ghost Tour|It was scary|2023-01-01|2|2023-05-16 20:51:15.852786|2023-05-16 20:51:15.852786
# 5|Great Wall of China|There were so many steps|2023-01-01|3|2023-05-16 20:51:42.496891|2023-05-16 20:51:42.496891
# 6|Bicycles, Windmills, and Tulips|I like Amsterdam|2023-01-01|4|2023-05-16 20:52:35.665082|2023-05-16 20:52:35.665082

# sqlite> 