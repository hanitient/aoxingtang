class SessionsController < ApplicationController
  def new
  end

  def create 
  	user = User.find_by(phone: params[:session][:phone])
    if user 
      if user.authenticate(params[:session][:password])
         log_in user
         redirect_to user
         $user_id=user.id
      else
      	redirect_to wrong_path
      end
    else
      redirect_to blank_path
     end
  end

  def destroy
  	log_out
    redirect_to root_url
  end
  
  #wrong password
  def wrong
    @wrong="用户名或密码错误！"
    render :inline => @wrong.to_json  
  end

  #non this person
  def blank
    @blank="用户名不存在！"
    render :inline => @blank.to_json  
  end

end
