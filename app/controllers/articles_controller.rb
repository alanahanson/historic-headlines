require 'open-uri'

class ArticlesController < ApplicationController
  AUTH_KEY = ENV["NYT_API_KEY"]
  def index
  end

  def search
    url = "http://api.nytimes.com/svc/search/v2/articlesearch.json?fq=-type_of_material%3A%28%22Paid+Death+Notice%22+%22Addendum%22%29&begin_date=#{params[:date]}&end_date=#{params[:date]}&fl=_id%2Cheadline%2Cweb_url%2Cpub_date%2Csnippet&page=0&api-key=#{AUTH_KEY}"
    file = open(url)
    render plain: file.read
  end

end

