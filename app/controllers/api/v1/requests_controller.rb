class Api::V1::RequestsController < ApplicationController

  def index
    @requests = Request.all
    render json: @requests
  end

  def show
    @request = Request.find(params[:id])
    render json: @request
  end


  private

  def request_params
    params.require(:request).permit(:user_id, :title, :description, :date, :time, :other_info)
  end
end
