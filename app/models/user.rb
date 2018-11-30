class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :avatar       
 	has_one_attached :foto_moto

 	belongs_to :plan
 	
 	has_one :profile
  before_create :build_profile
  accepts_nested_attributes_for :profile

  has_many :posts,      dependent: :destroy
  has_many :comments,   dependent: :destroy
  has_many :anuncis,    dependent: :destroy
 	
  attr_accessor :stripe_card_token 
	
#  extend FriendlyId
#  friendly_id :nom, use: :slugged


 	def save_with_payment
 		if valid? 
 			customer = Stripe::Customer.create(description: email, plan: plan_id, 
 				card: stripe_card_token)
 			self.stripe_customer_token = customer.id
 			save!
 		end
 	end

	protected
	
	def profile
	  super || build_profile
	end 
	

end
