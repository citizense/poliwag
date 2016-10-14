class SitesController < ApplicationController
  def index
  end

  def show
    client = Congress::Client.new(SUNLIGHT_API_KEY)
    @openStates = OpenStates::Bill.where(state: params[:state])
    # @local_reps = client.legislators_locate(params[:zipcode])
  end
end
