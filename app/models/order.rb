class Order < ActiveRecord::Base
	   belongs_to :users
	   default_scope -> { order(created_at: :desc) }

	validates :name, presence: true
	validates :address, presence: true
	validates :user_id, presence: true
	validates :number, presence: true
end
