class NewsController < ApplicationController
  require "open-uri"
    def index
        news_api_key = ENV["NEWS_API_KEY"]
        uri = URI.parse("http://newsapi.org/v2/top-headlines?country=jp&apiKey=#{news_api_key}")
        json = Net::HTTP.get(uri)
        @articles = JSON.parse(json)
    end
end
