class SubscriptionsController < ApplicationController
  before_action :set_subscriptions
  before_action :set_subscription, only: [:show, :edit, :update, :destroy]
  respond_to :json
  # GET details/1/subscriptions
  def index
    @subscriptions = @details.subscriptions
  end

  # GET details/1/subscriptions/1
  def show
  end

  # GET details/1/subscriptions/new
  def new
    @subscription = @details.subscriptions.build
  end

  # GET details/1/subscriptions/1/edit
  def edit
  end

  # POST details/1/subscriptions
  def create
    @subscription = @details.subscriptions.build(subscription_params)

    if @subscription.save
      redirect_to([@subscription.details, @subscription], notice: 'Subscription was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT details/1/subscriptions/1
  def update
    if @subscription.update_attributes(subscription_params)
      redirect_to([@subscription.details, @subscription], notice: 'Subscription was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE details/1/subscriptions/1
  def destroy
    @subscription.destroy

    redirect_to details_subscriptions_url(@details)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subscriptions
      @details = Detail.find(params[:details_id])
    end

    def set_subscription
      @subscription = @details.subscriptions.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def subscription_params
      params.fetch(:subscription, {})
    end
end
