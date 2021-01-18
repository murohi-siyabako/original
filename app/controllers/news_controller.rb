class NewsController < ApplicationController
  require "open-uri"
    def index
        news_api_key = ENV["NEWS_API_KEY"]
        uri = URI.parse("http://newsapi.org/v2/top-headlines?country=jp&apiKey=#{news_api_key}")
        json = Net::HTTP.get(uri)
        @articles = JSON.parse(json)
    end

    
  
  private

  def news_params
    params.require(:new).permit(:category_id).merge(user_id: current_user.id)
  end

end
