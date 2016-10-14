class WelcomeController < ApplicationController

	def index
		client = Congress::Client.new(SUNLIGHT_API_KEY)
		@local_reps = client.legislators_locate("80205")
	end

	def search
		client = Congress::Client.new(SUNLIGHT_API_KEY)
		@local_reps = client.legislators_locate(zip_code)
	end 
end

