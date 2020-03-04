require 'net/http'
require 'open-uri'
require 'json'

 
class GetRecipe
  attr_accessor :id

  def initialize(id)
    @id = id
  end


  def create_url_string
    id = @id

    url = "https://api.spoonacular.com/recipes/#{id}/information?apiKey=#{ENV['API_KEY']}"
  end

  def get_recipe
    uri = URI.parse(create_url_string)
    response = Net::HTTP.get_response(uri)
    p response.body
  end

    
end
