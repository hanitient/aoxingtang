class Medicine < ActiveRecord::Base
   #按照时间倒序排列
  default_scope -> { order(created_at: :desc) }
  mount_uploader :picture, PictureUploader

  validates :name, :presence=>{:message =>"不能为空"}, uniqueness: true 
  validates :kind, :presence=> true 
  validates :describe, :presence =>{:message=>"不能为空"}
  validates :price, :presence =>{:message =>"不能为空" }
  validate :picture_size

  private

  def picture_size
   if picture.size > 5.megabytes
    errors.add(:picture, "should be less than 5MB")
   end
  end

end
