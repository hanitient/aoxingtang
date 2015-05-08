class Medicine < ActiveRecord::Base
  validates :name, :presence=>{:message =>"不能为空"}, uniqueness: true 
  validates :kind, :presence=> true 
  validates :describe, :presence =>{:message=>"不能为空"}
  validates :price, :presence =>{:message =>"不能为空" }

   #按照时间倒序排列
  default_scope -> { order(created_at: :desc) }
end
