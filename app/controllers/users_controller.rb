class UsersController < ApplicationController
    def new
      @user=User.new
    end

    def create
      @user = User.new(user_params)
      if @user.save
       log_in @user
       redirect_to myorder_path
      else
       render 'new'
      end
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

    private
   #引入健壮参数以防止用户所有哈希数据都能被初始化修改
    def user_params
      params.require(:user).permit(:name, :phone, :password,
      :password_confirmation,:address)
    end


end
