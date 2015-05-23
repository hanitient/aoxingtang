class MedicinesController < ApplicationController
	$m
  $medicine=Medicine.new
	def new 
	  @medicine=Medicine.new
	end

	def create
	  @medicine = Medicine.new(medicine_params)
  	 if @medicine.save
       flash[:success] = "商品已删除！"
       respond_to do |format|
        format.html { redirect_to @medicine }
        format.js
       end
    else
      respond_to do |format|
        format.html { redirect_to @medicine }
        format.js
       end
      render 'new'
    end
	end

	def destroy
	  Medicine.find(params[:id]).destroy
      flash[:success] = "商品已删除！"
      redirect_to allitems_path
	end

	def index
	  @medicines=Medicine.all
	end

    def show
      @medicine=Medicine.find(params[:id])
      $m=@medicine
    end

	
  #编辑用户的动作
    def edit
      @medicine=$m
    end

 #处理更新资料的动作
    def update
      @medicine = $m
      if @medicine.update_attributes(medicine_params)
        flash[:success] = "资料更新成功！"
        redirect_to @medicine
      else
        render 'edit'
      end
    end

    def all
      @medicines=Medicine.all
      render :inline => @medicines.to_json   
    end

    def kind1
      @medicines=Medicine.where(:kind => '基本药物')
      render :inline => @medicines.to_json  
    end

    def kind2
      @medicines=Medicine.where(:kind => '中药饮品')
      render :inline => @medicines.to_json  
    end

    def kind3
      @medicines=Medicine.where(:kind => '处方药')
      render :inline => @medicines.to_json  
    end

    def kind4
      @medicines=Medicine.where(:kind => '保健品')
      render :inline => @medicines.to_json  
    end

    def kind5
      @medicines=Medicine.where(:kind => '医疗器械')
      render :inline => @medicines.to_json  
    end

    def kind6
      @medicines=Medicine.where(:kind => '汤料')
      render :inline => @medicines.to_json  
    end

    def kind7
      @medicines=Medicine.where(:kind => '凉茶')
      render :inline => @medicines.to_json  
    end

    def kind8
      @medicines=Medicine.where(:kind => '家庭药箱')
      render :inline => @medicines.to_json  
    end

    def kind9
      @medicines=Medicine.where(:kind => '其他')
      render :inline => @medicines.to_json  
    end

     def kind10
      @medicines=Medicine.where(:kind => '新闻')
      render :inline => @medicines.to_json  
    end

    def test
        $medicine= Medicine.new(medicine_params)
    end

    def showtest
    end

	private
	def medicine_params
	  params.require(:medicine).permit(:name, :kind, :describe,:price,:picture)
	end

end
