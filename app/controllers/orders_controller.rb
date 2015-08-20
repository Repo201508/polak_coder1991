class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :destroy]
  
  
  def my_orders
  	@orders = current_user.orders
  end

  def new
  	@order = Order.new
  end

  def create
  	@order = current_user.orders.create(order_params)

  	respond_to do |f|
      if @order.save
        OrderMailer.order_email(@order.user).deliver_now
        f.html { redirect_to @order, notice: 'Order was successfully created.' }
      else
        f.html { render :new }
   		end
    end
  end

  def show
  end

  def destroy
    @order.destroy
    respond_to do |format|
      format.js
      format.html { redirect_to my_orders_url }
      format.json { head :no_content }
    end
  end


  	private
  		def set_order
  			@order = Order.find(params[:id])		
  		end

  		def order_params
  			params.require(:order).permit(:date, :product_id, :user_id)
  		end
end
