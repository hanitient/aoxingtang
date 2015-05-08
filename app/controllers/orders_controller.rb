class OrdersController < ApplicationController
	def new
      @order=Order.new
	end

	def create
	@order=current_user.orders.build(name:$m.name,address:current_user.address,number:1)
  	if @order.save
      redirect_to @order
        	   flash[:success] = "商品已购买！"
    else
      render 'new'
    end
	end

	def destroy
	end

	def show 
	  @order=Order.find(params[:id])
	end

	def index 
	  @order=Order.all
	end

	def myorder
      @order=Order.where(:user_id => current_user.id)
	end

	def jsonindex
	end

	def jsonmyorder
	end

end
