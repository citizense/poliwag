class BillsController < ApplicationController
  respond_to :json

  require 'nokogiri'
  require 'open-uri'

  def search
  end 

  def results
    @response = HTTParty.get('https://api.legiscan.com/?key=77fe81d295a37906c8022fb7353d6dcb&op=getMasterList&state=' + params[:state])
    @bills = JSON.parse(@response.body)["masterlist"]

    # @bill_parse = JSON.parse(@bill_api.body)
    # @bills.each do |bill| 
    #   bill_id = bill[1]["bill_id"].to_s
    #   @bill_api = JSON.parse(HTTParty.get('https://api.legiscan.com/?key=77fe81d295a37906c8022fb7353d6dcb&op=getBill&id=' + bill_id).body)
    #   @bill_call = @bill_api["bill"]
    # end

    if request.xhr?
      
    end 
  end 

  def show
    @bill_api = JSON.parse(HTTParty.get('https://api.legiscan.com/?key=77fe81d295a37906c8022fb7353d6dcb&op=getBill&id=' + params[:id]).body)
  end 
end
