class NewsController < ApplicationController
  require "open-uri"
    def index
        news_api_key = ENV["NEWS_API_KEY"]
        uri = "http://newsapi.org/v2/top-headlines?country=jp&apiKey=#{news_api_key}"
        article_serialized = open(uri).read
        @articles = JSON.parse(article_serialized)
    end
end
