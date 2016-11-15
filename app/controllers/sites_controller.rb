class SitesController < ApplicationController
  respond_to :json
  skip_before_filter :verify_authenticity_token

  require 'nokogiri'
  require 'open-uri'

  def index 
  end

  def show
    # @response = HTTParty.get('https://www.govtrack.us/api/v2/bill?q=' + params[:q]) 
    @response = HTTParty.get('https://api.legiscan.com/?key=77fe81d295a37906c8022fb7353d6dcb&op=getMasterList&state=' + params[:state])
    if request.xhr?
      
    end 
  end

  def view
    @arr = []

    JSON.parse(@response.body)['objects'].each do |res| 
      @resp = Nokogiri::HTML(HTTParty.get(res['link'] + '/summary')).css('#libraryofcongress p').inner_text
      @rp = Nokogiri::HTML(HTTParty.get(res['link'] + '/summary')).css('nth:child(1)').inner_text
      # Array contains summaries
      @arr << @resp 
    end 
  end 

  def search
    # @bills = OpenStates::Bill.where(state: params[:state])
  end 
end

