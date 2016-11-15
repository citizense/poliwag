class BillsController < ApplicationController
  respond_to :json

  require 'nokogiri'
  require 'open-uri'

  def search
  end 

  def results
    @response = HTTParty.get('https://api.legiscan.com/?key=77fe81d295a37906c8022fb7353d6dcb&op=getMasterList&state=' + params[:state])
    @bill_id = HTTParty.get("https://api.legiscan.com/?key=77fe81d295a37906c8022fb7353d6dcb&op=getBill&id=" + params[:state]) 
    @bills = JSON.parse(@response.body)["masterlist"]

    if request.xhr?
      
    end 
  end 

  def show
    # @bill_id = HTTParty.get("https://api.legiscan.com/?key=77fe81d295a37906c8022fb7353d6dcb&op=getBill&id=" + params[:id])
    @bill = @bills.find_by(id: [@bill_id])
  end 
end
