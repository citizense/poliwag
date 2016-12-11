class DetailsController < ApplicationController
  before_action :set_details
  before_action :set_detail, only: [:show, :edit, :update, :destroy]
  respond_to :json
  # GET bills/1/details
  def index
    @details = @bills.details
  end

  # GET bills/1/details/1
  def show
  end

  # GET bills/1/details/new
  def new
    @detail = @bills.details.build
  end

  # GET bills/1/details/1/edit
  def edit
  end

  # POST bills/1/details
  def create
    @detail = @bills.details.build(detail_params)

    if @detail.save
      redirect_to([@detail.bills, @detail], notice: 'Detail was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT bills/1/details/1
  def update
    if @detail.update_attributes(detail_params)
      redirect_to([@detail.bills, @detail], notice: 'Detail was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE bills/1/details/1
  def destroy
    @detail.destroy

    redirect_to bills_details_url(@bills)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_details
      @bills = Bill.find(params[:bills_id])
    end

    def set_detail
      @detail = @bills.details.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def detail_params
      params.fetch(:detail, {})
    end
end
