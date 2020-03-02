require 'net/http'
require 'open-uri'
require 'json'

 
class GetRecipe

  def initialize(id)
    @id = id
  end


  def create_url_string
    api_key = "5bc217c99bc84840860afcc2f1426f3e"
    id = @id

    url = "https://api.spoonacular.com/recipes/#{id}/information?apiKey=#{api_key}"
  end

  def get_recipe
    uri = URI.parse(create_url_string)
    response = Net::HTTP.get_response(uri)
    puts response.body
  end

    
end
