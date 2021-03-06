class OrdersController < ApplicationController
	$user_id
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
      #@order=Order.where(:user_id => current_user.id)
      @order=Order.where(:user_id => $user_id)
      render :inline => @order.to_json
	end

	def jsonindex
		@order=Order.all
		render :inline => @order.to_json
	end

end
