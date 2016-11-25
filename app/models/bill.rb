class Bill < ActiveRecord::Base
  # validates_uniqueness_of :bill_id, :url, :title
  # before_save :save_data_from_api

  # def save_data_from_api
  #   return if bill["bill_id"].blank?
  #   @response = HTTParty.get('https://api.legiscan.com/?key=' + LEGISCAN_API_KEY + '&op=getMasterList&state=' + params[:state])
  #   @results = JSON.parse(@response.body)["masterlist"]
  #   @bills = @results.reject! {|k,v| k["session"]}

  #   self.bill_id = bill["id"], 
  #   self.number = bill["number"]
  #   self.change_hash = bill["change_hash"]
  #   self.url = bill["url"] 
  #   self.status_date = bill["status_date"] 
  #   self.status = bill["status"]
  #   self.last_action_date = bill["last_action_date"]
  #   self.last_action = bill["last_action"]
  #   self.title = bill["title"]
  #   self.description = bill["description"]
  # end 
end
