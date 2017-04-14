require 'dotenv/load'
require "http"

# Constants, do not change these
API_HOST = "https://api.yelp.com"
SEARCH_PATH = "/v3/businesses/search"

BEARER_TOKEN = "Bearer " + "#{ENV['TOKEN']}"

DEFAULT_LOCATION = "Seattle, WA"
SEARCH_LIMIT = 20

# Returns a parsed json object of the request
def search(location = DEFAULT_LOCATION)
  url = "#{API_HOST}#{SEARCH_PATH}"
  params = {
    term: "coffee",
    location: location,
    limit: SEARCH_LIMIT
  }

  response = HTTP.auth(BEARER_TOKEN).get(url, params: params)
  businesses = response.parse['businesses']

  random_select = businesses.sample
  coffeeshop = {  name: random_select['name'],
                  city: random_select['location']['city'],
                  address: random_select['location']['display_address'].join(" "),
                  image_url: random_select['image_url'] }
end

