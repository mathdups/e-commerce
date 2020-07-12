class Admin::OrdersController < ApplicationController
  def index
    @orders = Order.where("created_at >= ?", 30.days.ago)
  end

  def show
    @order = Order.find(params[:id])
  end
end