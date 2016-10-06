class WelcomeController < ApplicationController

	def index
		client = Congress::Client.new(SUNLIGHT_API_KEY)
		@local_reps = client.legislators_locate()
	end

	def search
		client = Congress::Client.new(SUNLIGHT_API_KEY)
		@local_reps = client.legislators_locate(zip_code)
	end 
end

