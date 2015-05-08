class SessionsController < ApplicationController
  def new
  end

  def create 
  	user = User.find_by(phone: params[:session][:phone])
    if user 
      if user.authenticate(params[:session][:password])
         log_in user
         redirect_to myorder_path
      else
      	flash.now[:danger] = '密码不正确'
        render 'new'
      end
    else
      flash.now[:danger] = '用户名不存在'
      render 'new'
     end
  end

  def destroy
  	log_out
    redirect_to root_url
  end
end
