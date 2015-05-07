class Medicine < ActiveRecord::Base
  validates :name, presence: true,uniqueness: true
  validates :kind, presence: true
  validates :describe, presence: true
  validates :price, presence: true

   #按照时间倒序排列
  default_scope -> { order(created_at: :desc) }
end
