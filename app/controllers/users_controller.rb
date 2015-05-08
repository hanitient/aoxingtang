class UsersController < ApplicationController
    def new
    end

    def create
   	end

   	def index
   	end

     #显示用户资料
    def show
      @user=User.find(params[:id])
    end

    def identify
      if logged_in?
      @user=current_user
      else
      @user=-1
      end  
      render :inline => @user.to_json
    end

end
