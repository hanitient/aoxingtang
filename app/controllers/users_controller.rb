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
      @user=current_user
      if logged_in?
      render :inline => @user.to_json
      end   
    end

end
