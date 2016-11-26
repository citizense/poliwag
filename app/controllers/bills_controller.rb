STATES = {
  "Alabama" => "AL", 
  "Alaska" => "AK",
  "Arizona" => "AZ", 
  "Arkansas" => "AR", 
  "California" => "CA", 
  "Colorado" => "CO",
  "Connecticut" => "CT", 
  "Delaware" => "DE", 
  "Florida" => "FL", 
  "Georgia" => "GA",
  "Hawaii" => "HI", 
  "Idaho" => "ID", 
  "Illinois" => "IL",
  "Indiana" => "IN", 
  "Iowa" => "IA", 
  "Kansas" => "KS",
  "Kentucky" => "KY", 
  "Louisiana" => "LA", 
  "Maine" => "ME", 
  "Maryland" => "MD", 
  "Massachusetts" => "MA", 
  "Michigan" => "MI", 
  "Minnesota" => "MN", 
  "Mississippi" => "MS", 
  "Missouri" => "MO", 
  "Montana" => "MT", 
  "Nebraska" => "NE", 
  "Nevada" => "NV",
  "New Hampshire" => "NH",
  "New Jersey" => "NJ",
  "New Mexico" => "NM",
  "New York" => "NY",
  "North Carolina" => "NC",
  "North Dakota" => "ND", 
  "Ohio" => "OH",
  "Oklahoma" => "OK",
  "Oregon" => "OR", 
  "Pennsylvania" => "PA",
  "Rhode Island" => "RI", 
  "South Carolina" => "SC", 
  "South Dakota" => "SD", 
  "Tennessee" => "TN",
  "Texas" => "TX",
  "Utah" => "UT",
  "Vermont" => "VT", 
  "Virginia" => "VA", 
  "Washington" => "WA", 
  "West Virginia" => "WV",
  "Wisconsin" => "WI", 
  "Wyoming" => "WY"
}

class BillsController < ApplicationController
  respond_to :json

  require 'nokogiri'
  require 'open-uri'
  require 'date'

  LEGISCAN_API_KEY = Pusher.key

  def search
  end 

  def results
    @response = HTTParty.get('https://api.legiscan.com/?key=' + LEGISCAN_API_KEY + '&op=getMasterList&state=' + params[:state])
    # if Bill.exists?(state: params[:state])
    #   @bills = Bill.all 
    # else
      @results = JSON.parse(@response.body)["masterlist"]
      @bills = @results.reject! {|k,v| k["session"]}
      @bills = @results

      # @results.each do |bill|
      #   @b = Bill.new(
      #     :session_id = bill[1]["session_id"],
      #     :session_name = bill[1]["session_name"]
      #     )
      #   @b.save
      # end 
      # @session_id = @bills["session"]["session_id"]
      # @session_name = @bills["session"]["session_name"]

      # @bills.values.each do |bill|
      #   if bill["bill_id"] !=nil && bill["title"] 
      #     @b = Bill.new(
      #       :state => params[:state],
      #       :session_id => @session_id,
      #       :session_name => @session_name,
      #       :bill_id => bill["bill_id"], 
      #       :number => bill["number"], 
      #       :change_hash => bill["change_hash"], 
      #       :url => bill["url"], 
      #       :status_date => bill["status_date"], 
      #       :status => bill["status"],
      #       :last_action_date => bill["last_action_date"],
      #       :last_action => bill["last_action"],
      #       :title => bill["title"],
      #       :description => bill["description"])
      #     @b.save
      #   end  
      # end 

    @hash = {}
    @bills.values.each do |bill|
      # Create new hash that uses bill's status's as keys
      @hash[bill["status"]] =  bill["status"]

      # Compare hash keys and create an array in @hash
      if @hash[bill["status"]] == bill["status"]
        @hash[bill["status"]] = []
      end 
    end

    # Compare hash keys
    @hash.each do |k, v|    
      # Compare bills values
      @bills.values.each do |bill|
        # Check and see if the hash's key is the same as the value of the bill status
        if k == bill["status"]
          @hash[k].push bill["last_action"]
        end 
      end
    end

    @hash.each do |k,v|
      @hash[k]
      freq = @hash[k].inject(Hash.new(0)) { |h,v| h[v] += 1; h }
    end
  end 


  def show
    @bill_api = JSON.parse(HTTParty.get('https://api.legiscan.com/?key=' + LEGISCAN_API_KEY + '&op=getBill&id=' + params[:id]).body)
    @bill_api.each do |bill_info| 
      next if bill_info[1]["bill_id"].blank? 
      if bill_info[1]["votes"].length > 0
        bill_info[1]["votes"].each do |rc|
        @roll_call_id = rc["roll_call_id"].to_s
        end 
      end 
    end

    if @roll_call_id != nil
      @roll_call = JSON.parse(HTTParty.get('https://api.legiscan.com/?key=' + LEGISCAN_API_KEY + '&op=getRollCall&id=' + @roll_call_id).body)
    end 

    @yea = []
    @nay = []
  end 
end
