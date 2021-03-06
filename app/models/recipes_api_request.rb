require 'net/http'
require 'open-uri'
require 'json'

 
class RecipesApiRequest

  attr_reader :search_params

  def initialize(search_params)
    @search_string = search_params["search_string"]
    @diet = search_params["diet"]
    @allergies = search_params["allergies"]
    @calories = search_params["calories"]
    @cook_time = search_params["cook_time"]
  end


  def create_url_string

    search_string = @search_string.gsub(" ","+")
    # search_string = @search_string.split.length > 1 ? @search_string.gsub(" ","+") : @search_string
    calories = @calories > 0 ? "&maxCalories=#{@calories.to_i}" : ""
    cook_time = @cook_time > 0 ? "&maxReadyTime=#{@cook_time.to_i}" : ""
    allergies = @allergies ? "&intolerances=#{@allergies.join("%252C")}" : ""
    diet = @diet ? "&diet=#{@diet.join("%252C")}" : ""

    baseurl = "https://api.spoonacular.com/recipes/complexSearch?apiKey=#{ENV['API_KEY']}&query="
    # baseurl = "https://api.edamam.com/search?app_id=f304495d&app_key=19524319950ac5b51210c7f31b312b47&q="
    
    @url = "#{baseurl}#{search_string}&number=18#{cook_time}#{diet}#{calories}&instructionsRequired=true"
    # debugger
  end

  def get_recipes
    uri = URI.parse(create_url_string)
    response = Net::HTTP.get_response(uri)
    p response.body
  end

#   def parse_json
#     recipes = JSON.parse(self.get_recipes)
#   end
    
end



# url = URI("https://yummly2.p.rapidapi.com/feeds/search?FAT_KCALMax=1000&maxTotalTimeInSeconds=7200&allowedAttribute=diet-lacto-vegetarian%252Cdiet-low-fodmap&q=chicken%20soup&start=0&maxResult=18")

# http = Net::HTTP.new(url.host, url.port)
# http.use_ssl = true
# http.verify_mode = OpenSSL::SSL::VERIFY_NONE

# request = Net::HTTP::Get.new(url)
# request["x-rapidapi-host"] = 'yummly2.p.rapidapi.com'
# request["x-rapidapi-key"] = 'cef66a4cc0msh444e84ff6995a02p14a5dcjsn91d9452b19f5'

# response = http.request(request)
# puts response.read_body
