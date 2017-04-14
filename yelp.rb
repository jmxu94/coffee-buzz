require 'dotenv/load'
require "json"
require "http"
require "optparse"

# Constants, do not change these
API_HOST = "https://api.yelp.com"
SEARCH_PATH = "/v3/businesses/search"

BEARER_TOKEN = "Bearer " + "#{ENV['TOKEN']}"

DEFAULT_TERM = "coffee"
DEFAULT_LOCATION = "Seattle, WA"
SEARCH_LIMIT = 1

# Returns a parsed json object of the request
def search(term = DEFAULT_TERM, location = DEFAULT_LOCATION)
  url = "#{API_HOST}#{SEARCH_PATH}"
  params = {
    term: term,
    location: location,
    limit: SEARCH_LIMIT
  }

  response = HTTP.auth(BEARER_TOKEN).get(url, params: params)
  response.parse
end

p search("food", "Seattle, WA")
