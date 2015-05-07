class User < ActiveRecord::Base
	has_many :orders,dependent: :destroy

	validates :name, presence: true
	validates :phone, presence: true,uniqueness: true
	validates :address, presence: true

    has_secure_password
    validates :password, length: { minimum: 6 }

    #如果指定的令牌和摘要匹配，返回true
  def authenticated?(attribute, token)
    digest = send("#{attribute}_digest")
    return false if digest.nil?
    BCrypt::Password.new(digest).is_password?(token)
  end
end
